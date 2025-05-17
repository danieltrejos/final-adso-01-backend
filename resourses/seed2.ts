/* eslint-disable @typescript-eslint/no-misused-promises */
/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
import { PrismaClient } from '@prisma/client';
import * as fs from 'fs';

const prisma = new PrismaClient();

async function main() {
    const raw = fs.readFileSync('sample-data.json', 'utf-8');
    const data = JSON.parse(raw);

    const authorsMap = {};
    for (const author of data.authors) {
        const created = await prisma.author.create({ data: author });
        authorsMap[author.name] = created.id;
    }

    const categoriesMap = {};
    for (const category of data.categories) {
        const created = await prisma.category.create({ data: category });
        categoriesMap[category.name] = created.id;
    }

    const publishersMap = {};
    for (const publisher of data.publishers) {
        const created = await prisma.publisher.create({ data: publisher });
        publishersMap[publisher.name] = created.id;
    }

    for (const user of data.users) {
        await prisma.user.create({ data: user });
    }

    // Mapear libros a los IDs insertados
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
        await prisma.book.create({
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
    }

    console.log('✅ Datos insertados correctamente.');
}

main()
    .catch((e) => {
        console.error('❌ Error al insertar datos:', e);
        process.exit(1);
    })
    .finally(async () => {
        await prisma.$disconnect();
    });