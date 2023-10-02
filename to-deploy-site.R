getwd()

# Caminho para a pasta com os arquivos HTML
caminho_pasta <- "./docs"

# Lista de arquivos HTML na pasta
lista_arquivos <- list.files(path = caminho_pasta, pattern = "\\.html$", full.names = TRUE)
lista_arquivos

# Caminho antigo para as imagens que será substituído
caminho_antigo <- "_main_files/figure-html/"

# Novo caminho para as imagens
novo_caminho <- "figure-html/"

# Loop pelos arquivos HTML
for (arquivo in lista_arquivos) {
  
  # Ler o conteúdo do arquivo HTML
  conteudo <- readLines(arquivo, warn = FALSE)
  
  # Substituir todas as ocorrências do caminho antigo pelo novo caminho
  conteudo_modificado <- gsub(caminho_antigo, novo_caminho, conteudo)
  
  # Salvar o conteúdo modificado no mesmo arquivo
  writeLines(conteudo_modificado, arquivo)
}

cat("Substituição concluída com sucesso!\n")

# Mudando o caminho da pasta

# Define o caminho antigo e novo
caminho_antigo <- "./docs/_main_files/figure-html"
caminho_novo <- "./docs/figure-html"

# Renomeia a subpasta
if (file.rename(caminho_antigo, caminho_novo)) {
  cat("Subpasta renomeada com sucesso!\n")
} else {
  cat("Erro ao renomear subpasta. Verifique se o caminho antigo existe e o caminho novo não existe.\n")
}
