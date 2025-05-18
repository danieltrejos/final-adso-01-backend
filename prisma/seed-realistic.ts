/* eslint-disable @typescript-eslint/no-misused-promises */
/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { PrismaClient, Role } from '@prisma/client';
import * as fs from 'fs';

const prisma = new PrismaClient();

async function main(): Promise<void> {
  try {
    const raw = fs.readFileSync('sample-data-realistic.json', 'utf-8');
    const data = JSON.parse(raw);

    const authorsMap: Record<string, number> = {};
    for (let i = 0; i < data.authors.length; i++) {
      const created = await prisma.author.create({ data: data.authors[i] });
      authorsMap[`a${i}`] = created.id;
    }

    const categoriesMap: Record<string, number> = {};
    for (let i = 0; i < data.categories.length; i++) {
      const created = await prisma.category.create({ data: data.categories[i] });
      categoriesMap[`c${i}`] = created.id;
    }

    const publishersMap: Record<string, number> = {};
    for (let i = 0; i < data.publishers.length; i++) {
      const created = await prisma.publisher.create({ data: data.publishers[i] });
      publishersMap[`p${i}`] = created.id;
    }

    const usersMap: number[] = [];
    for (const user of data.users) {
      const exists = await prisma.user.findUnique({ where: { email: user.email } });
      if (!exists) {
        const created = await prisma.user.create({ data: { ...user, role: user.role as Role } });
        usersMap.push(created.id);
      }
    }

    const booksMap: number[] = [];
    for (const book of data.books) {
      const created = await prisma.book.create({
        data: {
          name: book.name,
          isbn: book.isbn,
          yearPublished: book.yearPublished,
          numPages: book.numPages,
          authorId: book.authorId,
          categoryId: book.categoryId,
          publisherId: book.publisherId
        }
      });
      booksMap.push(created.id);
    }

    for (const loan of data.loans) {
      await prisma.loan.create({
        data: {
          userId: loan.userId,
          bookId: loan.bookId,
          loanDate: new Date(loan.loanDate),
          returnDue: new Date(loan.returnDue),
          returned: loan.returned,
          returnedAt: loan.returnedAt ? new Date(loan.returnedAt) : null
        }
      });
    }

    console.log('✅ Datos realistas insertados correctamente.');
  } catch (error) {
    console.error('❌ Error al insertar datos:', error);
    process.exit(1);
  } finally {
    await prisma.$disconnect();
  }
}

void main();
