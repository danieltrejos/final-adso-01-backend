/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-call */
import { Controller, Get, Post, Body, Patch, Param, Delete, Query } from '@nestjs/common';
import { BooksService } from './books.service';
import { CreateBookDto } from './dto/create-book.dto';
import { UpdateBookDto } from './dto/update-book.dto';

@Controller('books')
export class BooksController {
  constructor(private readonly service: BooksService) { }

  @Post()
  create(@Body() createBookDto: CreateBookDto) {
    return this.service.create(createBookDto);
  }

  @Get()
  findAllActive(
    @Query('page') page = '1',
    @Query('limit') limit = '10',
    @Query('search') search = ''
  ) {
    const skip = (Number(page) - 1) * Number(limit);
    return this.service.findAllActive({
      skip,
      take: Number(limit),
      search
    });
  }

  @Get('inactive')
  findAllInactive(
    @Query('page') page = '1',
    @Query('limit') limit = '10',
    @Query('search') search = ''
  ) {
    const skip = (Number(page) - 1) * Number(limit);
    return this.service.findAllInactive({
      skip,
      take: Number(limit),
      search
    });
  }

  @Get('stats/active')
  async getActiveStats() {
    const [books, loans] = await Promise.all([
      this.service.countActive(),
      this.service.countActiveLoans()
    ]);

    return { books, loans };
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.service.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateBookDto: UpdateBookDto) {
    return this.service.update(+id, updateBookDto);
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
