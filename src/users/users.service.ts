import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { UpdateUserAdminDto } from './dto/update-user-admin.dto';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) { }

  create(data: CreateUserDto) {
    return this.prisma.user.create({ data });
  }

  findAll(params: { skip?: number; take?: number; search?: string }) {
    const { skip, take, search } = params;
    return this.prisma.user.findMany({
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
    return this.prisma.user.findUnique({ where: { id } });
  }

  update(id: number, data: UpdateUserDto | UpdateUserAdminDto) {
    return this.prisma.user.update({ where: { id }, data });
  }

  deactivate(id: number) {
    return this.prisma.user.update({ where: { id }, data: { state: false } });
  }

  reactivate(id: number) {
    return this.prisma.user.update({ where: { id }, data: { state: true } });
  }
}
