import { PartialType } from '@nestjs/mapped-types';
import { CreateUserDto } from './create-user.dto';
import { IsBoolean, IsOptional } from 'class-validator';

export class UpdateUserAdminDto extends PartialType(CreateUserDto) {
    @IsBoolean()
    @IsOptional()
    state?: boolean;
}
