
# Arquivo: casos-de-teste.feature
# Módulo: Cursos

Funcionalidade: Gerenciar cursos

  Como usuário do sistema
  Quero cadastrar, listar e excluir cursos
  Para manter o controle das formações oferecidas na plataforma

  ------------------------------------------------------------
  🟢 Cenários de Sucesso
  ------------------------------------------------------------

  Cenário: Cadastrar curso com todos os campos preenchidos corretamente
	Dado que o usuário está na tela "Cadastrar Curso"
    Quando preencher todos os campos com informações válidas
    E clicar em "Cadastrar Curso"
    Então o sistema deve exibir a mensagem de sucesso
    E o curso deve aparecer na listagem de cursos

  Cenário: Acessar a tela de cadastro a partir da listagem
    Dado que o usuário está na página "Listar Cursos"
    Quando clicar no botão "Cadastrar Curso"
    Então deve ser direcionado para a tela de cadastro de curso

  Cenário: Listar cursos cadastrados
    Dado que o usuário está na tela "Listar Cursos"
    Quando houver cursos cadastrados
    Então todos os cursos devem ser exibidos corretamente em cards

  ------------------------------------------------------------
  🔴 Cenários de Erro e Validação
  ------------------------------------------------------------

  Cenário: Tentar cadastrar curso com campos vazios
    Dado que o usuário está na tela "Cadastrar Curso"
    Quando deixar todos os campos em branco e clicar em "Cadastrar Curso"
    Então o sistema não deve permitir o cadastro
    E deve exibir mensagens indicando que os campos são obrigatórios

  Cenário: Inserir quantidade negativa no campo "Vagas"
    Dado que o usuário está na tela "Cadastrar Curso"
    Quando inserir um valor negativo no campo "Vagas" e clicar em "Cadastrar Curso"
    Então o sistema deve exibir uma mensagem de erro
    E impedir o cadastro do curso

  Cenário: Inserir letras ou símbolos no campo "Vagas"
    Dado que o usuário está na tela "Cadastrar Curso"
    Quando inserir letras ou símbolos no campo "Vagas" e clicar em "Cadastrar Curso"
    Então o sistema deve exibir uma mensagem de validação
    E impedir o cadastro

  Cenário: Inserir Data Fim anterior à Data Início
    Dado que o usuário está na tela "Cadastrar Curso"
    Quando preencher o campo "Data Início" com uma data posterior ao campo "Data Fim"
    E clicar em "Cadastrar Curso"
    Então o sistema deve exibir mensagem de erro
    E não deve permitir o cadastro do curso

  Cenário: Inserir datas inválidas
    Dado que o usuário está na tela "Cadastrar Curso"
    Quando preencher os campos de data com valores inválidos (ex: 01/01/9999)
    Então o sistema deve exibir uma mensagem de erro
    E não deve permitir o cadastro do curso

  Cenário: Tentar excluir um curso
    Dado que o usuário está na listagem de cursos
    Quando clicar no botão "Excluir Curso"
    Então o curso deve ser removido da listagem
    Mas o teste identificou que o sistema exibe a mensagem de sucesso, porém o curso não é realmente excluído (erro HTTP 405)

  Cenário: Atualizar a página de listagem
    Dado que o usuário está na listagem de cursos
    Quando atualizar a página
    Então o sistema deve recarregar normalmente
    Mas o teste identificou que retorna erro "Page not found" (status 404)

  Cenário: Verificar layout dos cards na listagem
    Dado que o usuário está na listagem de cursos
    Quando observar os cards de curso
    Então todos os cards devem ter o mesmo tamanho e alinhamento
    Mas o teste identificou diferença de tamanho entre os cards

