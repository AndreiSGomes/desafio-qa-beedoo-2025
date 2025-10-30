
# 🐞 Relatório de Bugs – Beedoo QA Challenge

**Metodologia:** ISTQB (Severity + Priority)  

| ID   | Bug                                           | Severidade | Priority | Status | Steps to Reproduce                                      | Expected Result                       | Actual Result                                     |
|------|-----------------------------------------------|------------|---------|--------|--------------------------------------------------------|--------------------------------------|--------------------------------------------------|
| BUG001 | Cadastro com campos vazios                  | Alta       | Alta    | Aberto | 1. Acessar "Cadastrar Curso" <br>2. Deixar campos vazios <br>3. Clicar em "Cadastrar Curso" | Cadastro não permitido               | Curso cadastrado mesmo com campos vazios         |
| BUG002 | Campo "Número de Vagas" aceita valor negativo         | Alta       | Alta    | Aberto | 1. Inserir valor negativo em "Número de Vagas" <br>2. Clicar em "Cadastrar Curso" | Cadastro não permitido               | Curso cadastrado com valor negativo             |
| BUG003 | Campo "Número de Vagas" aceita número decimal       | Alta       | Alta    | Aberto | 1. Inserir letras/símbolos em "Vagas" <br>2. Clicar em "Cadastrar Curso" | Cadastro não permitido               | Curso cadastrado com número decimal           |
| BUG004 | Data Fim anterior à Data Início            | Média/Alta | Média   | Aberto | 1. Inserir Data Início posterior à Data Fim <br>2. Clicar em "Cadastrar Curso" | Cadastro não permitido               | Curso cadastrado com Data Fim anterior à Início |
| BUG005 | Datas inválidas                             | Média      | Média   | Aberto | 1. Inserir datas inválidas (ex: 01/01/9999) <br>2. Clicar em "Cadastrar Curso" | Cadastro não permitido               | Curso cadastrado com datas inválidas           |
| BUG006 | Exclusão de curso não funciona             | Alta       | Alta    | Aberto | 1. Acessar listagem <br>2. Clicar em "Excluir Curso" | Curso removido                       | Mensagem de sucesso exibida, curso não removido |
| BUG007 | Atualizar página retorna 404               | Média      | Média   | Aberto | 1. Acessar listagem <br>2. Atualizar a página        | Página recarrega normalmente          | Página retorna erro 404                         |
| BUG008 | Cards com tamanhos diferentes               | Baixa      | Baixa   | Aberto | 1. Acessar listagem <br>2. Observar cards           | Todos os cards do mesmo tamanho      | Cards com tamanhos diferentes                  |

