-- CreateTable
CREATE TABLE "Aluno" (
    "nomeAluno" TEXT NOT NULL,
    "matricula" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "nomeGrupo" TEXT NOT NULL,
    CONSTRAINT "Aluno_nomeGrupo_fkey" FOREIGN KEY ("nomeGrupo") REFERENCES "Grupo" ("nome") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Professor" (
    "matricula" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Grupo" (
    "nome" TEXT NOT NULL PRIMARY KEY,
    "matriculaLider" INTEGER NOT NULL,
    CONSTRAINT "Grupo_matriculaLider_fkey" FOREIGN KEY ("matriculaLider") REFERENCES "Aluno" ("matricula") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Avaliacao" (
    "avaliador" TEXT NOT NULL PRIMARY KEY,
    "matriculaAluno" INTEGER NOT NULL,
    "matriculaProf" INTEGER NOT NULL,
    "grupoAvaliado" TEXT NOT NULL,
    "notaOriginalidade" REAL NOT NULL,
    "notaApresentacao" REAL NOT NULL,
    "notaImpactoSocial" REAL NOT NULL,
    "notaExecucao" REAL NOT NULL,
    "notaViabilidade" REAL NOT NULL,
    "notaMedia" REAL,
    CONSTRAINT "Avaliacao_matriculaAluno_fkey" FOREIGN KEY ("matriculaAluno") REFERENCES "Aluno" ("matricula") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Avaliacao_matriculaProf_fkey" FOREIGN KEY ("matriculaProf") REFERENCES "Professor" ("matricula") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Avaliacao_grupoAvaliado_fkey" FOREIGN KEY ("grupoAvaliado") REFERENCES "Grupo" ("nome") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Aluno_matricula_key" ON "Aluno"("matricula");

-- CreateIndex
CREATE UNIQUE INDEX "Aluno_email_key" ON "Aluno"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Aluno_nomeGrupo_key" ON "Aluno"("nomeGrupo");

-- CreateIndex
CREATE UNIQUE INDEX "Professor_matricula_key" ON "Professor"("matricula");

-- CreateIndex
CREATE UNIQUE INDEX "Professor_email_key" ON "Professor"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Grupo_nome_key" ON "Grupo"("nome");

-- CreateIndex
CREATE UNIQUE INDEX "Grupo_matriculaLider_key" ON "Grupo"("matriculaLider");

-- CreateIndex
CREATE UNIQUE INDEX "Avaliacao_matriculaAluno_key" ON "Avaliacao"("matriculaAluno");

-- CreateIndex
CREATE UNIQUE INDEX "Avaliacao_matriculaProf_key" ON "Avaliacao"("matriculaProf");

-- CreateIndex
CREATE UNIQUE INDEX "Avaliacao_grupoAvaliado_key" ON "Avaliacao"("grupoAvaliado");
