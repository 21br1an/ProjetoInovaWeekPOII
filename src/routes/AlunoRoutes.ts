import { Request, Response, Router } from "express";
import AlunoController from "../controllers/AlunoController";


const AlunorRouter = Router();

AlunorRouter.get("/alunos", AlunoController.listAlunos);

AlunorRouter.post("/aluno",  function (req: Request, res: Response){
    res.send("requisiçao post de  aluno");
});

AlunorRouter.put("/aluno",  function (req: Request, res: Response){
    res.send("requisiçao put de  aluno");
});

AlunorRouter.delete("/aluno",  function (req: Request, res: Response){
    res.send("requisiçao delete de  aluno");
});

export default AlunorRouter;