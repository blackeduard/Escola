import sqlite3

# Função para criar trabela
def criar_tabela():
    conexao = sqlite3.connect('aluno.db') 
    cursor = conexao.cursor()
    cursor.execute('''CREATE TABLE IF NOT usuarios(
                        id  INTEGER PRIMARY KEY,
                        nome TEXT NOT NULL,
                        idade TEXT NOT NULL,)''')
    conexao.commit()
    conexao.close()

# Função para adicionar um novo usuário
def adicionar_usuario(nome, idade):
    conexao = sqlite3.connect('aluno.db')
    cursor = conexao.cursor()
    cursor.execute('''INSERT INTO usuarios (nome, idade) VALUES (? ,?)''',(nome, idade))
    conexao.commit()
    conexao.close()

# Função para listar todos os usuários
def listar_usuarios():
    conexao = sqlite3.connect('aluno.db')
    cursor = conexao.cursor()
    cursor.execute('''SELECT * FROM usuarios''')
    usuarios = cursor.fetchall()
    for usuario in usuarios:
        print(usuario)
    conexao.close()

# Função para deletar um usuário
def deletar_usuario(id):
    conexao = sqlite3.connect('aluno.db')
    cursor = conexao.cursor()
    cursor.execute('''DELETE FROM usuarios where id = ?''',(id,))

# Função do menu de escolhas
def menu():
    print("\n1. Adicionar usuário")
    print("2. Listar usuário")
    print("3. Atualizar usuário")
    print("4. Deletar usuário")
    print("5. Sair")

# Criar a tabela
while True:
    menu()
    escolha = input("Escolha a opção")

    if escolha == '1':
        nome = input("Digite o nome do usuário: ")
        idade = int(input("Digite a idade do usuário: "))
        adicionar_usuario(nome, idade)
        print("Usuário adicionado com Sucesso!")
    elif escolha == '2':
        print("\nTodos os Usuários: ")
        listar_usuarios()
    elif escolha == '3':
        id = int(input("Digite o ID do usuário a ser atualizado: "))
        nome = input("Digite o novo nome do usuário: ")
        idade = int(input("Digite a nova idade do usuário: "))
        atualizar_usuario(id, nome, idade)
        print("Usuário atualizado com sucesso!")
    elif escolha == '4':
        id = int(input("Digite o ID do usuário a ser deletado: "))
        deletar_usuario(id)