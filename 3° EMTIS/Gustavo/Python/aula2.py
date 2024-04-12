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
def adicionar_usuario():
    conexao = sqlite3.connect