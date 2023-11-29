import { Request, Response, Router } from "express";
import GrupoController from "../controllers/GrupoController";


const GrupoRouter = Router();

GrupoRouter.get("/grupos", GrupoController.listGrupos);

GrupoRouter.post("/grupo",  function (req: Request, res: Response){
    res.send("requisiçao post de  aluno");
});

GrupoRouter.put("/grupo",  function (req: Request, res: Response){
    res.send("requisiçao put de  aluno");
});

GrupoRouter.delete("/grupo",  function (req: Request, res: Response){
    res.send("requisiçao delete de  aluno");
});

export default GrupoRouter;