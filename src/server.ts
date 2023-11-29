import express from "express";
import AlunorRouter from "./routes/AlunoRoutes";

const app = express();

app.use(express.json());
app.use(AlunorRouter)

const port = 3000;


app.listen(port, function () {
      console.log(`Server running on port ${port}`);
    });
