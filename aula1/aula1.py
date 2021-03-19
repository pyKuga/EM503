import pandas as pd
from matplotlib import pyplot as plt
import os

#executa o arquivo via terminal 
os.system("gfortran aula1.f90 -o aula1")
os.system("./aula1")

#importa utilizando pandas
data = pd.read_csv("data.csv")

#separacao de variaveis
t = data['t']
v = data['v']

#plota o grafico
plt.plot(t,v)
plt.xlabel("Tempo")
plt.ylabel("Velocidade")
plt.title("Vxt - Problema do PQD")
plt.show()
