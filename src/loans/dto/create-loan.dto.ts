import { IsInt, IsDateString, IsOptional } from 'class-validator';

export class CreateLoanDto {
    @IsInt()
    userId: number;

    @IsInt()
    bookId: number;

    @IsDateString()
    returnDue: string;

    @IsOptional()
    @IsDateString()
    returnedAt?: string;
}
