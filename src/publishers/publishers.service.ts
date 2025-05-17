import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreatePublisherDto } from './dto/create-publisher.dto';
import { UpdatePublisherDto } from './dto/update-publisher.dto';
import { UpdatePublisherAdminDto } from './dto/update-publisher-admin.dto';

@Injectable()
export class PublishersService {
  constructor(private prisma: PrismaService) { }

  create(data: CreatePublisherDto) {
    return this.prisma.publisher.create({ data });
  }

  findAll(params: { skip?: number; take?: number; search?: string }) {
    const { skip, take, search } = params;
    return this.prisma.publisher.findMany({
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
    return this.prisma.publisher.findUnique({ where: { id } });
  }

  update(id: number, data: UpdatePublisherDto | UpdatePublisherAdminDto) {
    return this.prisma.publisher.update({ where: { id }, data });
  }

  deactivate(id: number) {
    return this.prisma.publisher.update({ where: { id }, data: { state: false } });
  }

  reactivate(id: number) {
    return this.prisma.publisher.update({ where: { id }, data: { state: true } });
  }
}
