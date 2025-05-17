import { PartialType } from '@nestjs/mapped-types';
import { CreateAuthorDto } from './create-author.dto';
import { IsBoolean, IsOptional } from 'class-validator';

export class UpdateAuthorAdminDto extends PartialType(CreateAuthorDto) {
    @IsBoolean()
    @IsOptional()
    state?: boolean;
}
