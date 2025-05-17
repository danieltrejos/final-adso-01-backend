import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateCategoryDto } from './dto/create-category.dto';
import { UpdateCategoryDto } from './dto/update-category.dto';
import { UpdateCategoryAdminDto } from './dto/update-category-admin.dto';
//import { UpdateCategoryAdminDto } from './dto/update-category-admin.dto';

@Injectable()
export class CategoriesService {
  constructor(private prisma: PrismaService) { }

  create(data: CreateCategoryDto) {
    return this.prisma.category.create({ data });
  }

  findAll(params: { skip?: number; take?: number; search?: string }) {
    const { skip, take, search } = params;
    return this.prisma.category.findMany({
      where: {
        state: true,
        name: search ? { contains: search, } : undefined,
      },
      skip,
      take,
      orderBy: { id: 'desc' },
    });
  }

  findOne(id: number) {
    return this.prisma.category.findUnique({ where: { id } });
  }

  update(id: number, data: UpdateCategoryDto | UpdateCategoryAdminDto) {
    return this.prisma.category.update({ where: { id }, data });
  }

  deactivate(id: number) {
    return this.prisma.category.update({ where: { id }, data: { state: false } });
  }

  reactivate(id: number) {
    return this.prisma.category.update({ where: { id }, data: { state: true } });
  }
}
