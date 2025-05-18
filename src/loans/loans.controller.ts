import { Controller, Get, Post, Body, Patch, Param, Delete, Query } from '@nestjs/common';
import { LoansService } from './loans.service';
import { CreateLoanDto } from './dto/create-loan.dto';
import { UpdateLoanDto } from './dto/update-loan.dto';

@Controller('loans')
export class LoansController {
  constructor(private readonly service: LoansService) { }

  @Post()
  create(@Body() dto: CreateLoanDto) {
    return this.service.create(dto);
  }

  @Get()
  findAll(@Query('page') page = 1, @Query('limit') limit = 10) {
    const skip = (page - 1) * limit;
    return this.service.findAll({ skip, take: limit });
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.service.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateLoanDto) {
    return this.service.update(+id, dto);
  }

  @Delete(':id')
  deactivate(@Param('id') id: string) {
    return this.service.deactivate(+id);
  }

  @Patch('restore/:id')
  reactivate(@Param('id') id: string) {
    return this.service.reactivate(+id);
  }
}
