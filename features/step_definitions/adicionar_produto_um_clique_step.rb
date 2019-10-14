Dado("que esteja no site demo.cs-cart.com") do
#  visit "https://demo.cs-cart.com/"
  visit "/"
  @home_page = HomePage.new
end

Quando("acessar a compra de produto através do botão comprar com um clique") do
  ##page detalhe produto
  @detalhe_produto = DetalheProdutoPage.new

  @home_page.produto.click
  @home_page.botao_um_clique.click 
end

Quando("preencher {string}, {string} e {string}") do |nome, telefone, email|
  @detalhe_produto.preencher_dados(nome, telefone, email)
end

Então("ao concluir a compra apresentara o texto {string}.") do |mensagem|
  @detalhe_produto.validar_mensagem
end