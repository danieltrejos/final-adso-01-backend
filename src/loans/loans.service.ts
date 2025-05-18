import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateLoanDto } from './dto/create-loan.dto';
import { UpdateLoanDto } from './dto/update-loan.dto';

@Injectable()
export class LoansService {
  constructor(private prisma: PrismaService) { }

  create(data: CreateLoanDto) {
    return this.prisma.loan.create({ data });
  }

  findAll(params: { skip?: number; take?: number }) {
    const { skip, take } = params;
    return this.prisma.loan.findMany({
      where: { state: true },
      include: {
        user: true,
        book: true,
      },
      skip,
      take,
      orderBy: { id: 'desc' },
    });
  }

  findOne(id: number) {
    return this.prisma.loan.findUnique({
      where: { id },
      include: {
        user: true,
        book: true,
      },
    });
  }

  update(id: number, data: UpdateLoanDto) {
    return this.prisma.loan.update({ where: { id }, data });
  }

  deactivate(id: number) {
    return this.prisma.loan.update({ where: { id }, data: { state: false } });
  }

  reactivate(id: number) {
    return this.prisma.loan.update({ where: { id }, data: { state: true } });
  }
}
