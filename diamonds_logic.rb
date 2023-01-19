# TODO extrair os "diamantes" <> e as "areias" . da expressão,
# TODO exibir a quantidade de diamantes extraídos.

sand_and_diamonds = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
#1 criar um local para salvar os diamantes encontrados
diamonds = []

#2 extrair as areias e salvar a nova string para utilizar o restante da expressão
without_sand = sand_and_diamonds.gsub(".", "")

#3 criar um loop para extrair os diamantes enquanto existirem
while without_sand.include?"<>"
  diamond_out = without_sand.slice!("<>")
  #4 salvar o diamante encontrado
  diamonds << diamond_out
end

#5 contar os diamantes encontrados
puts "Foram encontrados #{diamonds.count} diamantes"
