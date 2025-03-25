-- Codigo usado para determina a formatação UTF-8 ao terminal
os.execute("chcp 65001")


-- Conjunto De Caracteres Aleatorios
local Letras = {"a", "b", "c","d", "e", "f", "g", "h", "i", "j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
local numeros = {"1","2","3","4","5","6","7","8","9","0"}
local especiais = {"=","/",".",",","<",">","?"}

-- Lista agrupando todos os caracteres
local ListaCompleta = {
    Letras,
    numeros,
    especiais
}

-- Nessa parte do codigo o programa vai pedir uma quantidade limite de caracteres para a senha
print("")
print("Insira a quantidades de caracteres você quer na sua Senha")
print("--------------------")
local tamanho = io.read("*n")
local senha = ""

-- Nessa etapa, fazemos um loop que vai selecionar aleatoriamente uma das listas dentro de ListaCompleta
for i = 1, tamanho, 1 do
   local ListaIndice = math.random(#ListaCompleta)
   local Lista = ListaCompleta[ListaIndice]

   -- Aqui selecionamos um caracteres aleatorio dentro da lista que escolhemos
   local caracteres = math.random(#Lista)
   local char = Lista[caracteres]

   -- Dessa forma, concatenamos a senha que estava vazia com o caractere aleatorio selecionado e reiniciamos o loop ate a quantidade de caractere chega no limite
   senha = senha .. char

end
-- Por fim, saimos do loop e mostra-mos sua senha aleatoria
print()
print(string.format("A sua senha gerada aleatoriamente é: %s",senha))
print("")

--[[
    Obrigado pela Atenção!!!!
    Lembrando que a senha e totalmente aleatoria toda vez e apenas para fins de testes sendo inutil a não ser para este codigo de exemplo, não use ela pois não garanto total segurança!!!
    by Luiz Hilário_
]]