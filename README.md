# 🧪 Beedoo QA Challenge — Testes Manuais 2025

Este repositório contém a entrega do desafio técnico para a vaga de **QA Júnior na Beedoo**.  
O objetivo foi analisar o módulo **"Cursos"**, criar **User Story**, **Casos de Teste em Gherkin**, documentar os **resultados da execução**, gerar **relatório de bugs** e disponibilizar **evidências em vídeo**.

---

## 🧩 User Story – Módulo de Curso

**Como** usuário do sistema,  
**quero** cadastrar, listar e excluir cursos,  
**para** poder gerenciar as formações disponíveis de forma simples e organizada.

### Decisões tomadas

- Análise exploratória da aplicação ([Beedoo QA Challenge](https://creative-sherbet-a51eac.netlify.app/));  
- Priorização de fluxos principais (cadastro, listagem, exclusão) e fluxos de exceção;  
- Consideração de boas práticas de QA (validações de campos, feedbacks claros, integridade dos dados);  
- Observação de pontos críticos, como datas, campos numéricos e layout da listagem.  

---

## 📋 Casos de Teste (resumido)

| ID   | Título                                      | Objetivo                                      |
|------|--------------------------------------------|-----------------------------------------------|
| CT001 | Cadastrar curso válido                      | Curso cadastrado e exibido na listagem       |
| CT002 | Cadastro com campos vazios                  | Sistema deve impedir cadastro                |
| CT003 | Inserir valor negativo em "Número de Vagas"          | Sistema deve exibir mensagem de erro        |
| CT004 | Inserir valor decimal em "Número de Vagas"      | Sistema deve exibir mensagem de erro        |
| CT005 | Data Fim anterior à Data Início            | Sistema deve impedir cadastro                |
| CT006 | Datas inválidas                             | Sistema deve impedir cadastro                |
| CT007 | Listar cursos                               | Cursos exibidos corretamente                 |
| CT008 | Navegar da listagem para cadastro           | Botão redireciona corretamente               |
| CT009 | Excluir curso                               | Curso removido (bug identificado)           |
| CT010 | Verificar layout dos cards                  | Todos os cards uniformes                      |
| CT011 | Atualizar página de cadastro                             | Página recarrega corretamente (bug: 404)    |

**Planilha completa:** [Google Sheets - Casos de Teste](https://docs.google.com/spreadsheets/d/11DX_eFRIyA8FgcNHkCC-sR5LU2_cNbJi/edit?gid=1012575011#gid=1012575011)  

---

## 🔍 Resultados da Execução

| ID   | Status | Observação                                                   | Severidade | Evidência                                      |
|------|--------|---------------------------------------------------------------|------------|-----------------------------------------------|
| CT001 | OK     | Curso cadastrado e exibido corretamente                       | Baixa      | [CT001.mp4](SEU_LINK_EVIDENCIA_CT001)       |
| CT002 | NOK    | Sistema permitiu cadastro com campos vazios                  | Alta       | [CT002.mp4](SEU_LINK_EVIDENCIA_CT002)       |
| CT003 | NOK    | Campo "Vagas" aceitou valor negativo                          | Alta       | [CT003.mp4](SEU_LINK_EVIDENCIA_CT003)       |
| CT004 | NOK    | Campo "Vagas" aceitou letras/símbolos                         | Alta       | [CT004.mp4](SEU_LINK_EVIDENCIA_CT004)       |
| CT005 | NOK    | Data Fim anterior à Data Início aceita                         | Média/Alta | [CT005.mp4](SEU_LINK_EVIDENCIA_CT005)       |
| CT006 | NOK    | Datas inválidas aceitas                                        | Média      | [CT006.mp4](SEU_LINK_EVIDENCIA_CT006)       |
| CT007 | OK     | Listagem exibiu todos os cursos                                | Baixa      | [CT007.mp4](SEU_LINK_EVIDENCIA_CT007)       |
| CT008 | OK     | Navegação para cadastro funcionando                             | Baixa      | [CT008.mp4](SEU_LINK_EVIDENCIA_CT008)       |
| CT009 | NOK    | Excluir curso não remove o item (mensagem de sucesso exibida)   | Alta       | [CT009.mp4](SEU_LINK_EVIDENCIA_CT009)       |
| CT010 | NOK    | Cards da listagem com tamanhos diferentes                       | Baixa      | [CT010.mp4](SEU_LINK_EVIDENCIA_CT010)       |
| CT011 | NOK    | Atualizar página retorna 404                                     | Média      | [CT011.mp4](SEU_LINK_EVIDENCIA_CT011)       |

---

## 🐞 Relatório de Bugs

Metodologia utilizada: **ISTQB (Severity + Priority)**  
- **Severity**: impacto técnico da falha no sistema  
- **Priority**: urgência de correção de acordo com o negócio  
- **Status**: Aberto / Corrigido / Retestado  
- **Steps to Reproduce**: passos claros para reproduzir o erro  
- **Expected / Actual Result**: resultado esperado vs resultado obtido  

Relatório completo disponível em: [`relatorio-bugs.md`](./relatorio-bugs.md)

---

## 🎥 Evidências

Todos os vídeos de execução estão disponíveis em:  
🔗 [Google Drive - Evidências de Teste](https://drive.google.com/drive/u/1/folders/1CMS_eLteTi92Q2ozxTdi-KECNSVVhdoW)  



