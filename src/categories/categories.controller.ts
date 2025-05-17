import { Controller, Get, Post, Body, Patch, Param, Delete, Query } from '@nestjs/common';
import { CategoriesService } from './categories.service';
import { CreateCategoryDto } from './dto/create-category.dto';
import { UpdateCategoryDto } from './dto/update-category.dto';
import { UpdateCategoryAdminDto } from './dto/update-category-admin.dto';

@Controller('categories')
export class CategoriesController {
  constructor(private readonly service: CategoriesService) { }

  @Post()
  create(@Body() dto: CreateCategoryDto) {
    return this.service.create(dto);
  }

  @Get()
  findAll(@Query('page') page = 1, @Query('limit') limit = 10, @Query('search') search = '') {
    const skip = (page - 1) * limit;
    return this.service.findAll({ skip, take: limit, search });
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.service.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() dto: UpdateCategoryDto) {
    return this.service.update(+id, dto);
  }

  @Patch('admin/:id')
  updateAdmin(@Param('id') id: string, @Body() dto: UpdateCategoryAdminDto) {
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
