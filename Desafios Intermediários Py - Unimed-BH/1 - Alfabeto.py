print('PROGRAMA DA POSIÇÃO DA LETRA NO ALFABETO'.center(100, '-'))

# Nosso Alfabeto em string
alfabeto = 'ABCDEFGHIJKLMNOPQRSTUVXWYZ'


# Função verifica e trata entrada de valores inválidos
def verifica_letra(arg):
    letra = arg
    while letra.upper() not in alfabeto:
        letra = input('Insira a letra válida que voce deseja saber a posição: ')
    return letra


# Função que retorna a posiçao da letra digitada
def posicao_letra(arg):
    for indice, valor in enumerate(alfabeto):
        if valor == arg.upper():
            pos_letra = indice + 1
            print(pos_letra)
            break


# Entrada da letra
letra_digitada = input('Insira a letra que voce deseja saber a posição: ')

# Funções
posicao_letra(verifica_letra(letra_digitada))
