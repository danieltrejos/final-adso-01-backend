/* eslint-disable @typescript-eslint/no-unsafe-call */
import { Injectable, OnModuleInit } from '@nestjs/common';
import { PrismaClient } from '@prisma/client';

@Injectable()
export class PrismaService extends PrismaClient implements OnModuleInit {
    async onModuleInit() {
        await this.$connect();
    }

    /* async enableShutdownHooks(app: INestApplication) {
        await new Promise<void>((resolve) => {
            //@ts-expect-error
            this.$on('beforeExit', async () => {
                await app.close();
                resolve();
            });
        });
    } */
}
