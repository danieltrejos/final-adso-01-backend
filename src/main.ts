import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as morgan from 'morgan'
import { CORS } from './constants';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);


  // Middleware de morgan para registrar las peticiones HTTP
  app.use(morgan('dev'));

  // CORS
  app.enableCors(CORS);
  app.setGlobalPrefix('api/v1'); // Prefijo para todas las rutas de la API


  const port = process.env.PORT || 3001;
  await app.listen(port);
  //console log del púerto

  console.log(`Application is running on: http://localhost:${port}/`);
}
// eslint-disable-next-line @typescript-eslint/no-floating-promises
bootstrap();
