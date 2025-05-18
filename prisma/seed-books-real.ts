/* eslint-disable @typescript-eslint/no-misused-promises */
/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { PrismaClient, Role } from '@prisma/client';
import * as fs from 'fs';

const prisma = new PrismaClient();

async function main(): Promise<void> {
  try {
    const raw = fs.readFileSync('sample-data-books-real.json', 'utf-8');
    const data = JSON.parse(raw);

    for (const author of data.authors) {
      await prisma.author.create({ data: author });
    }

    for (const category of data.categories) {
      await prisma.category.create({ data: category });
    }

    for (const publisher of data.publishers) {
      await prisma.publisher.create({ data: publisher });
    }

    for (const user of data.users) {
      const exists = await prisma.user.findUnique({ where: { email: user.email } });
      if (!exists) {
        await prisma.user.create({ data: { ...user, role: user.role as Role } });
      }
    }

    for (const book of data.books) {
      await prisma.book.create({ data: book });
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
