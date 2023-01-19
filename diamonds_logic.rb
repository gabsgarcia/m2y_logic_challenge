# TODO extrair os "diamantes" <> e as "areias" . da expressão,
# TODO exibir a quantidade de diamantes extraídos.

sd = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
#1 criar um local para salvar os diamantes encontrados
diamonds = []

#2 extrair as areias e salvar para utilizar o restante da expressão
without_sand = sd.gsub(".", "")

#3 criar um loop para extrair os diamantes enquanto existirem
while without_sand.include?"<>"
  diamond_out = without_sand.slice!("<>")
  p without_sand
  p diamond_out
  #4 salvar os diamantes encontrados
  diamonds << diamond_out
  p diamonds
end

#5 contar os diamantes encontrados
p diamonds.count
