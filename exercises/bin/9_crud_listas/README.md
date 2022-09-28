Você foi contratado por uma empresa de Data Science que trabalha e filtra dados numa lista. Como parte do produto da empresa, você precisa construir um algoritmo de CRUD de listas, que tem como entrada uma lista de conteúdo imutável e executa uma lógica específica para verificar se essa lista de dados é válida ou não.

Algoritmo: 
1. Se a lista tem mais que 5 itens: 
    1. Se a primeira posição for 0 a última for 10:
        1. Remover determinados itens até que a lista tenha 5 itens, começando da segunda posição. 
    2. Caso a primeira posição não seja 0 e a última não seja 10, mas a quarta posição tem o valor de 3:
        1. Substituir a primeira posição por 1 e a última por 9.
        2. Remover determinados itens até que a lista tenha 5 itens, onde a penúltima posição será a última a ser excluída. 
    3. Caso nenhuma condição seja satisfeita:
        1. Deletar o último item. 
        2. Se ainda maior que 5: remover o primeiro.
        3. Se ainda maior que 5: remover do inicio até chegar em 5 itens 
2. Se a lista tem menos ou 5 itens:
    1. Adicionar o número 2 no final até completar 5 itens, se possível
    2. Colocar o número 8 na segunda posição. 
3. Agora que você tem certeza que sua lista tem 5 itens e segue o padrão acima, calcular:
    1. Somar a segunda posição com a quarta;
    2. Dividir a quinta posição com a terceira; 
 4. Se a multiplicação de 3.a. por 3.b. for maior que 15, exibir: "Lista válida", caso contrário, "Lista inválida"
#
Instruções
1. Criar lista growable a partir da lista inicial; 2. Utilizar os métodos "removeRange", "insert', 'addall' para manipulação de listas 3. Salvar 3.a e 3.b em variáveis para poder exibir a mensagem final.

# Casos de Testes
[2, 3] -> [2, 8, 2, 2, 2] -- Lista inválida 
[0, 6, 8, 3, 1, 4] -> [1, 6, 8, 3, 9] -- Lista inválida 
[0, 3, 4, 5, 6, 7, 8, 9, 10] -> [0, 7, 8, 9, 10] -- Lista válida 
[1, 2, 3, 5, 6, 7] -> [1, 2, 3, 5, 6] -- Lista inválida 


[10, 3, 6, 9, 4, 8, 7] -> [3, 6, 9, 4, 8] --Lista inválida 


[8, 7, 10, 4, 5, 6, 9, 2] -> [10, 4, 5, 6, 9] -- Lista válida 
[4, 9, 2, 3, 5] -> [4, 8, 2, 3, 5] -- Lista válida



