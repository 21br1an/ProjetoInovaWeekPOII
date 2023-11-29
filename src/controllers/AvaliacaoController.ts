import { Request, Response } from "express";

import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

class  AvaliacaoController {
    constructor(){}

    async listAvaliacao(req: Request, res: Response){
        const avaliacoes = await prisma.avaliacao.findMany();
        res.json({
            avaliacoes,
        });

    }
}

export default new AvaliacaoController();