import { Module } from '@nestjs/common';
import { LoansController } from './loans.controller';
import { LoansService } from './loans.service';
import { PrismaService } from '../prisma/prisma.service';

@Module({
  controllers: [LoansController],
  providers: [LoansService, PrismaService],
})
export class LoansModule { }
