import { PartialType } from '@nestjs/mapped-types';
import { CreatePublisherDto } from './create-publisher.dto';
import { IsBoolean, IsOptional } from 'class-validator';

export class UpdatePublisherAdminDto extends PartialType(CreatePublisherDto) {
    @IsBoolean()
    @IsOptional()
    state?: boolean;
}