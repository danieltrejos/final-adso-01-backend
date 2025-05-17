import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateBookDto } from './dto/create-book.dto';
import { UpdateBookDto } from './dto/update-book.dto';

@Injectable()
export class BooksService {
  constructor(private prisma: PrismaService) { }

  create(data: CreateBookDto) {
    return this.prisma.book.create({ data });
  }

  findAll(params: { skip?: number; take?: number; search?: string }) {
    const { skip, take, search } = params;
    return this.prisma.book.findMany({
      where: {
        state: true,
        name: search ? { contains: search } : undefined,
      },
      skip,
      take,
      include: {
        author: true,
        category: true,
        publisher: true,
      },
      orderBy: { id: 'desc' },
    });
  }

  findOne(id: number) {
    return this.prisma.book.findUnique({
      where: { id },
      include: {
        author: true,
        category: true,
        publisher: true,
      },
    });
  }

  update(id: number, data: UpdateBookDto) {
    return this.prisma.book.update({ where: { id }, data });
  }

  deactivate(id: number) {
    return this.prisma.book.update({ where: { id }, data: { state: false } });
  }

  reactivate(id: number) {
    return this.prisma.book.update({ where: { id }, data: { state: true } });
  }
}
