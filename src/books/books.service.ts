import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateBookDto } from './dto/create-book.dto';
import { UpdateBookDto } from './dto/update-book.dto';

@Injectable()
export class BooksService {
  constructor(private readonly prisma: PrismaService) { }

  create(data: CreateBookDto) {
    return this.prisma.book.create({ data });
  }

  // Método para obtener solo libros activos
  async findAllActive(params: { skip?: number; take?: number; search?: string }) {
    const { skip, take, search } = params;
    const where = {
      state: true,
      name: search ? { contains: search, mode: 'insensitive' } : undefined,
    };

    const [data, total] = await Promise.all([
      this.prisma.book.findMany({
        where,
        include: {
          author: true,
          category: true,
          publisher: true,
        },
        skip: skip || 0,
        take: take || 10,
        orderBy: { id: 'desc' },
      }),
      this.prisma.book.count({ where }),
    ]);

    return {
      data,
      total,
    };
  }

  // Método para obtener solo libros inactivos
  async findAllInactive(params: { skip?: number; take?: number; search?: string }) {
    const { skip, take, search } = params;
    const where = {
      state: false,
      OR: search ? [
        { name: { contains: search, mode: 'insensitive' } },
        { isbn: { contains: search, mode: 'insensitive' } }
      ] : undefined
    };

    const [data, total] = await Promise.all([
      this.prisma.book.findMany({
        where,
        include: {
          author: true,
          category: true,
          publisher: true,
        },
        skip,
        take,
        orderBy: { id: 'desc' },
      }),
      this.prisma.book.count({ where }),
    ]);

    return {
      data,
      total,
    };
  }

  findOne(id: number) {
    return this.prisma.book.findUnique({
      where: { id },
      include: {
        author: true,
        category: true,
        publisher: true,
      }
    });
  }

  update(id: number, data: UpdateBookDto) {
    return this.prisma.book.update({
      where: { id },
      data,
      include: {
        author: true,
        category: true,
        publisher: true,
      }
    });
  }

  deactivate(id: number) {
    return this.prisma.book.update({
      where: { id },
      data: { state: false }
    });
  }

  reactivate(id: number) {
    return this.prisma.book.update({
      where: { id },
      data: { state: true }
    });
  }

  async countActive() {
    return this.prisma.book.count({
      where: { state: true }
    });
  }

  async countActiveLoans() {
    return this.prisma.loan.count({
      where: {
        state: true,
        returnedAt: null
      }
    });
  }
}
