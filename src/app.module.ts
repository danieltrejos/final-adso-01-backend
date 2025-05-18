import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthorsModule } from './authors/authors.module';
import { CategoriesModule } from './categories/categories.module';
import { PublishersModule } from './publishers/publishers.module';
import { UsersModule } from './users/users.module';
import { BooksModule } from './books/books.module';
import { LoansModule } from './loans/loans.module';

@Module({
  imports: [AuthorsModule, CategoriesModule, PublishersModule, UsersModule, BooksModule, LoansModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
