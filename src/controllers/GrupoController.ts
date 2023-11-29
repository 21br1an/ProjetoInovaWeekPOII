import { Request, Response } from "express";

import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

class  GrupoController {
    constructor(){}

    async listGrupos(req: Request, res: Response){
        const grupos = await prisma.grupo.findMany();
        res.json({
            grupos,
        });

    }
}

export default new GrupoController();