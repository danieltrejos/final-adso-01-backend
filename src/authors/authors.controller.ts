import { Controller, Get, Post, Body, Patch, Param, Delete, Query } from '@nestjs/common';
import { AuthorsService } from './authors.service';
import { CreateAuthorDto } from './dto/create-author.dto';
import { UpdateAuthorDto } from './dto/update-author.dto';

@Controller('authors')
export class AuthorsController {
  constructor(private readonly authorsService: AuthorsService) { }

  @Post()
  create(@Body() createAuthorDto: CreateAuthorDto) {
    return this.authorsService.create(createAuthorDto);
  }


  @Get()
  findAll(@Query('page') page = 1, @Query('limit') limit = 10, @Query('search') search = '') {
    const skip = (page - 1) * limit;
    return this.authorsService.findAll({ skip, take: limit, search });
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.authorsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateAuthorDto: UpdateAuthorDto) {
    return this.authorsService.update(+id, updateAuthorDto);
  }

  @Delete(':id')
  deactivate(@Param('id') id: string) {
    return this.authorsService.deactivate(+id);
  }

  @Patch('restore/:id')
  reactivate(@Param('id') id: string) {
    return this.authorsService.reactivate(+id);
  }
}
