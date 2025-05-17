import { PartialType } from '@nestjs/mapped-types';
import { CreateCategoryDto } from './create-category.dto';
import { IsBoolean, IsOptional } from 'class-validator';

export class UpdateCategoryAdminDto extends PartialType(CreateCategoryDto) {
    @IsBoolean()
    @IsOptional()
    state?: boolean;
}
