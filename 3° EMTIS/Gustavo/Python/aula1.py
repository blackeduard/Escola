class JogoDaVelha: 

    tabuleiro = { '7': '','8': '','9': '',
                '4': '','5': '','6': '',
                '1': '','2': '','3': ''}
    turno = None

def __init__(self, jodador_inicial = 'x'):
    self.turno = jogador_inicial

def exibir_tabuleiro(self):
    print("""┌───┬───┬───┐
            | {} | {} | {} |
            ├───┼───┼───┤
            | {} | {} | {} |    
            ├───┼───┼───┤
            | {} | {} | {} |
            └───┴───┴───┘""".format(self.tabuleiro['7'], self.tabuleiro['8'], self.tabuleiro['9'], self.tabuleiro['4'], self.tabuleiro['5'], self.tabuleiro['6'], self.tabuleiro['1'], self.tabuleiro['2'], self.tabuleiro['3']))
    
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
    