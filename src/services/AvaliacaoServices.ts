import { PrismaClient } from "@prisma/client";

const Prisma = new PrismaClient();

class AvaliacaoServices {
    contructor() {}

    async criarAvaliacao() {
        try{
            const avaliacao = await Prisma.avaliacao.create
        }catch(error) {
            console.log(error);
        }
    }


}

export default AvaliacaoServices