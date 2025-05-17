import { Controller, Get, Post, Body, Patch, Param, Delete, Query } from '@nestjs/common';
import { PublishersService } from './publishers.service';
import { CreatePublisherDto } from './dto/create-publisher.dto';
import { UpdatePublisherDto } from './dto/update-publisher.dto';
import { UpdatePublisherAdminDto } from './dto/update-publisher-admin.dto';

@Controller('publishers')
export class PublishersController {
  constructor(private readonly service: PublishersService) { }

  @Post()
  create(@Body() dto: CreatePublisherDto) {
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
  update(@Param('id') id: string, @Body() dto: UpdatePublisherDto) {
    return this.service.update(+id, dto);
  }

  @Patch('admin/:id')
  updateAdmin(@Param('id') id: string, @Body() dto: UpdatePublisherAdminDto) {
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
