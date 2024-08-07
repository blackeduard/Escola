class JogoDaVelha: 

    tabuleiro = { '7': '','8': '','9': '','4': '','5': '','6': '','1': '','2': '','3': ''}
    turno = None

    def __init__(self, jogador_inicial = 'x'):
        self.turno = jogador_inicial

    def exibir_tabuleiro(self):
        print("┌───┬───┬───┐")
        print(f"│  {self.tabuleiro['7']} │  {self.tabuleiro['8']} │  {self.tabuleiro['9']} │")
        print("├───┼───┼───┤")
        print(f"│  {self.tabuleiro['4']} │  {self.tabuleiro['5']} │  {self.tabuleiro['6']} │")
        print("├───┼───┼───┤")
        print(f"│  {self.tabuleiro['1']} │  {self.tabuleiro['2']} │  {self.tabuleiro['3']} │")
        print("└───┴───┴───┘")

    def verificar_jogada(self,jogada):
        if jogada in self.tabuleiro.keys():
            if self.tabuleiro[jogada] == "":
                return True
        return False

    def verificar_tabuleiro(self):
        # Verificar as 3 verticais
        if self.tabuleiro['7'] == self.tabuleiro['4'] == self.tabuleiro['1'] != ' ':
            return self.tabuleiro['7']
        elif self.tabuleiro['8'] == self.tabuleiro['5'] == self.tabuleiro['2'] != ' ':
            return self.tabuleiro['8']
        elif self.tabuleiro['9'] == self.tabuleiro['6'] == self.tabuleiro['3'] != ' ':
            return self.tabuleiro['9']
    
        # Verificar as 3 horizontais
        elif self.tabuleiro['7'] == self.tabuleiro['8'] == self.tabuleiro['9'] != ' ':
            return self.tabuleiro['7']
        elif self.tabuleiro['4'] == self.tabuleiro['5'] == self.tabuleiro['6'] != ' ':
            return self.tabuleiro['4']
        elif self.tabuleiro['1'] == self.tabuleiro['2'] == self.tabuleiro['3'] != ' ':
            return self.tabuleiro['1']
    
        # Verificar as 2 diagonais
        elif self.tabuleiro['7'] == self.tabuleiro['5'] == self.tabuleiro['3'] != ' ':
            return self.tabuleiro['7']
        elif self.tabuleiro['9'] == self.tabuleiro['5'] == self.tabuleiro['1'] != ' ':
            return self.tabuleiro['9']

        # Verificar empate
        if [*self.tabuleiro.values()].count(' ') == 0:
            return "Empate"
        else:
            return [*self.tabuleiro.values()].count('')

    def jogar(self):

        while True:
            self.exibir_tabuleiro()


            jogada = input("Turno do {}, defina sua jogada: ".format(self.turno))

            # Enquanto o jogador não fizer uma jogada válida

            while True:

                if self.verificar_jogada(jogada): # Se a jogada for válida... 
                    break # Encerra o loop
                else:
                    print("Jogada do {} inválida, jogue novamente.".format(self.turno))

            self.tabuleiro[jogada] = self.turno

            estado = self.verificar_tabuleiro()

            if estado == "x":
                print("X é o vencedor")
                break
            elif estado == "o":
                print("O é o vencedor")
                break
            
            if estado == "Empate":
                print("Empate")
                break

            # Trocar o jogador do próximo turno
            self.turno = "X" if self.turno == "O" else "O"

        self.exibir_tabuleiro()

jogo = JogoDaVelha()

jogo.jogar()