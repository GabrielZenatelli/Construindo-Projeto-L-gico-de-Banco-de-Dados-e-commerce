
salario = float(input())

if (salario >= 0) and (salario <= 600):
    percentual = 17
elif salario <= 900:
    percentual = 13
elif salario <= 1500:
    percentual = 12
elif salario <= 2000:
    percentual = 10
elif salario > 2000:
    percentual = 5
else:
    percentual = 0

if percentual == 0:
    print('Valor de salário inválido')
else:
    salario_novo = salario * ((100 + percentual) / 100)
    diferenca = salario_novo - salario

    print('Novo salario:', "{:.2f}".format(salario_novo))
    print('Reajuste ganho:', "{:.2f}".format(diferenca))
    print('Em percentual: {} %'.format(percentual))


