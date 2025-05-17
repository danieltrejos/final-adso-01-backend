import { IsString, IsInt, IsNotEmpty } from 'class-validator';

export class CreateBookDto {
    @IsString()
    @IsNotEmpty()
    name: string;

    @IsString()
    @IsNotEmpty()
    isbn: string;

    @IsInt()
    yearPublished: number;

    @IsInt()
    numPages: number;

    @IsInt()
    authorId: number;

    @IsInt()
    categoryId: number;

    @IsInt()
    publisherId: number;
}