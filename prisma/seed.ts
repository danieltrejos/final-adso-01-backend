/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { Book, PrismaClient, Role, User } from '@prisma/client';
import * as fs from 'fs';

const prisma = new PrismaClient();

async function main(): Promise<void> {
  try {
    const raw = fs.readFileSync('sample-data.json', 'utf-8');
    const data = JSON.parse(raw);

    const authorsMap: Record<string, number> = {};
    for (const author of data.authors) {
      const created = await prisma.author.create({ data: author });
      authorsMap[author.name] = created.id;
    }

    const categoriesMap: Record<string, number> = {};
    for (const category of data.categories) {
      const created = await prisma.category.create({ data: category });
      categoriesMap[category.name] = created.id;
    }

    const publishersMap: Record<string, number> = {};
    for (const publisher of data.publishers) {
      const created = await prisma.publisher.create({ data: publisher });
      publishersMap[publisher.name] = created.id;
    }

    const createdUsers: User[] = [];

    for (const user of data.users) {
      const exists = await prisma.user.findUnique({ where: { email: user.email } });
      if (!exists) {
        const created = await prisma.user.create({ data: { ...user, role: user.role as Role } });
        createdUsers.push(created);
      }
    }

    const createdBooks: Book[] = [];

    const bookMapping = [
      {
        name: "Cien años de soledad",
        isbn: "9780307474728",
        yearPublished: 1967,
        numPages: 417,
        author: "Gabriel García Márquez",
        category: "Novela",
        publisher: "Alfaguara"
      },
      {
        name: "La casa de los espíritus",
        isbn: "9780553383805",
        yearPublished: 1982,
        numPages: 433,
        author: "Isabel Allende",
        category: "Novela",
        publisher: "Planeta"
      },
      {
        name: "Conversación en La Catedral",
        isbn: "9788439720210",
        yearPublished: 1969,
        numPages: 601,
        author: "Mario Vargas Llosa",
        category: "Novela",
        publisher: "Seix Barral"
      },
      {
        name: "Como agua para chocolate",
        isbn: "9780385474016",
        yearPublished: 1989,
        numPages: 246,
        author: "Laura Esquivel",
        category: "Novela",
        publisher: "Debolsillo"
      },
      {
        name: "Ficciones",
        isbn: "9780307950925",
        yearPublished: 1944,
        numPages: 174,
        author: "Jorge Luis Borges",
        category: "Cuento",
        publisher: "Sudamericana"
      }
    ];

    for (const book of bookMapping) {
      const created = await prisma.book.create({
        data: {
          name: book.name,
          isbn: book.isbn,
          yearPublished: book.yearPublished,
          numPages: book.numPages,
          authorId: authorsMap[book.author],
          categoryId: categoriesMap[book.category],
          publisherId: publishersMap[book.publisher],
        }
      });
      createdBooks.push(created);
    }

    // Crear préstamos simulados
    const today = new Date();
    const addDays = (date: Date, days: number): Date => {
      const result = new Date(date);
      result.setDate(result.getDate() + days);
      return result;
    };

    for (let i = 0; i < 5; i++) {
      const user = createdUsers[i % createdUsers.length];
      const book = createdBooks[i % createdBooks.length];

      await prisma.loan.create({
        data: {
          userId: user.id,
          bookId: book.id,
          loanDate: today,
          returnDue: addDays(today, 10 + i),
          returned: i % 2 === 0,
          returnedAt: i % 2 === 0 ? addDays(today, 5 + i) : null
        }
      });
    }

    console.log('✅ Datos insertados correctamente (incluyendo préstamos).');
  } catch (error) {
    console.error('❌ Error al insertar datos:', error);
    process.exit(1);
  } finally {
    await prisma.$disconnect();
  }
}

void main();
