import { Request, Response } from "express";

import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

class  AlunoController {
    constructor(){}

    async listAlunos(req: Request, res: Response){
        const alunos = await prisma.aluno.findMany();
        res.json({
            alunos,
        });

    }
}

export default new AlunoController();