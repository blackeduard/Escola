import tkinter as tk
import sqlite3
import re

# Create a SQLite database connection
con = sqlite3.connect('aula03.db')
cur = con.cursor()

# Verifica se a tabela 'tarefa' existe
cur.execute("SELECT name FROM sqlite_master WHERE type='table' AND name='tarefa'")
if not cur.fetchone():
    # Cria a tabela 'tarefa' se ela não existir
    cur.execute("CREATE TABLE tarefa (id INTEGER PRIMARY KEY, nome TEXT)")

# Adiciona novas colunas à tabela existente se elas não existirem
cur.execute("PRAGMA table_info(tarefa)")
columns = [column[1] for column in cur.fetchall()]

if 'cpf' not in columns:
    cur.execute("ALTER TABLE tarefa ADD COLUMN cpf TEXT")
if 'email' not in columns:
    cur.execute("ALTER TABLE tarefa ADD COLUMN email TEXT")
if 'idade' not in columns:
    cur.execute("ALTER TABLE tarefa ADD COLUMN idade INTEGER")

class CRUDGUI:
    def __init__(self, master):
        self.master = master
        master.title("CRUD EDU")
        master.config(bg='navy')  # Altera a cor de fundo para azul marinho

        # Create frame
        self.create_frame = tk.Frame(master, bg='red')
        self.create_frame.pack(fill=tk.BOTH, expand=True)

        # Create labels and entries
        tk.Label(self.create_frame, text="Novo Usuário", fg='black', bg='red').grid(row=0, column=0)  # Altera a cor do texto para branco
        self.new_task_entry = tk.Entry(self.create_frame)
        self.new_task_entry.grid(row=0, column=1, sticky='ew')

        # Create labels and entries for cpf, email, idade
        tk.Label(self.create_frame, text="CPF", fg='black', bg='red').grid(row=1, column=0)
        self.new_cpf_entry = tk.Entry(self.create_frame)
        self.new_cpf_entry.grid(row=1, column=1, sticky='ew')

        tk.Label(self.create_frame, text="Email", fg='black', bg='red').grid(row=2, column=0)
        self.new_email_entry = tk.Entry(self.create_frame)
        self.new_email_entry.grid(row=2, column=1, sticky='ew')

        tk.Label(self.create_frame, text="Idade", fg='black', bg='red').grid(row=3, column=0)
        self.new_idade_entry = tk.Entry(self.create_frame)
        self.new_idade_entry.grid(row=3, column=1, sticky='ew')

        # Create button
        tk.Button(self.create_frame, text="Adicionar", command=self.add_task).grid(row=4, column=0, columnspan=2)

        # Listbox to display tasks
        self.listbox = tk.Listbox(master)
        self.listbox.pack(fill=tk.BOTH, expand=True)

        # Update frame
        self.update_frame = tk.Frame(master, bg='navy')
        self.update_frame.pack(fill=tk.BOTH, expand=True)

        # Update label and entry
        tk.Label(self.update_frame, text="Atualizar Usuário", bg='navy', fg='white').grid(row=0, column=0)
        self.update_task_entry = tk.Entry(self.update_frame)
        self.update_task_entry.grid(row=0, column=1, sticky='ew')

        # Update button
        tk.Button(self.update_frame, text="Atualizar", command=self.update_task).grid(row=1, column=0, columnspan=2)

        # Delete button
        tk.Button(master, text="Deletar", command=self.delete_task).pack(fill=tk.X)

        # Configure the grid to expand properly
        for i in range(5):
            self.create_frame.grid_rowconfigure(i, weight=1)
        self.create_frame.grid_columnconfigure(1, weight=1)

        self.update_frame.grid_rowconfigure(0, weight=1)
        self.update_frame.grid_columnconfigure(1, weight=1)

    def add_task(self):
        task = self.new_task_entry.get()
        cpf = self.new_cpf_entry.get()
        email = self.new_email_entry.get()
        idade = self.new_idade_entry.get()

        # Verifica se o CPF está no formato correto
        if re.match(r'\d{3}\.\d{3}\.\d{3}-\d{2}', cpf) and len(cpf) == 14:
            cur.execute("INSERT INTO tarefa (nome, cpf, email, idade) VALUES (?, ?, ?, ?)", (task, cpf, email, idade))
            con.commit()
            self.listbox.insert(tk.END, f'Nome: {task}, CPF: {cpf}, Email: {email}, Idade: {idade}')
        else:
            tk.messagebox.showerror("Erro", "CPF inválido. O formato deve ser XXX.XXX.XXX-XX")

    def update_task(self):
        task_id = self.listbox.curselection()[0] + 1
        new_task = self.update_task_entry.get()
        cur.execute("UPDATE tarefa SET nome =? WHERE id =?", (new_task, task_id))
        con.commit()
        self.listbox.delete(task_id - 1)
        self.listbox.insert(task_id - 1, new_task)

    def delete_task(self):
        task_id = self.listbox.curselection()[0] + 1
        cur.execute("DELETE FROM tarefa WHERE id =?", (task_id,))
        con.commit()
        self.listbox.delete(task_id - 1)

root = tk.Tk()
crud_gui = CRUDGUI(root)
root.mainloop()
