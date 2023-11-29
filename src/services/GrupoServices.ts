import { PrismaClient } from "@prisma/client";

const Prisma = new PrismaClient();

class GrupoServices {
    contructor() {}

    async criarGrupo() {
        try{
            const grupo = await Prisma.grupo.create({
                data:{
                    nome:"Baile",
                    matriculaLider:10
                }
            })
        }catch(error) {
            console.log(error);
        }
    }


}

export default GrupoServices