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

# Função para atualizar os dados de um usuário
def atualizar_usuario(id, nome, idade):
    conexao = sqlite3.connect('aluno.db')
    cursor = conexao.cursor()
