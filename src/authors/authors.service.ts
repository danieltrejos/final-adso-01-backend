import { Injectable } from '@nestjs/common';
import { CreateAuthorDto } from './dto/create-author.dto';
import { UpdateAuthorDto } from './dto/update-author.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class AuthorsService {

  constructor(private readonly prisma: PrismaService) { }

  create(data: CreateAuthorDto) {
    return this.prisma.author.create({ data });
  }

  findAll(params: { skip?: number; take?: number; search?: string }) {
    const { skip, take, search } = params;
    return this.prisma.author.findMany({
      where: {
        state: true,
        name: search ? { contains: search } : undefined,
      },
      skip,
      take,
      orderBy: { id: 'desc' },
    });
  }

  findOne(id: number) {
    return this.prisma.author.findUnique({ where: { id } });
  }

  update(id: number, data: UpdateAuthorDto) {
    return this.prisma.author.update({ where: { id }, data });
  }

  deactivate(id: number) {
    return this.prisma.author.update({ where: { id }, data: { state: false } });
  }

  reactivate(id: number) {
    return this.prisma.author.update({ where: { id }, data: { state: true } });
  }
}
