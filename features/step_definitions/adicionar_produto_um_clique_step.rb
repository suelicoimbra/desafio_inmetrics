Dado("que esteja no site demo.cs-cart.com") do
  visit 'https://demo.cs-cart.com/'
  @home_page = HomePage.new

  ##page detalhe produto
  @detalhe_produto = DetalheProdutoPage.new
end

Quando("acessar a compra de produto através do botão comprar com um clique") do
 
## mapeando elementos
  #  find('.ty-column4:nth-child(1) .ty-pict').click
  #  find('#opener_call_request_150 > span').click
  #  fill_in('call_data_call_request_150_name', :with=>'sueli')
  #  fill_in('call_data_call_request_150_phone', :with=>'11948489494')
  #  fill_in('call_data_call_request_150_email', :with=>'teste@gmail.com')
  #  find('.cm-form-dialog-closer:nth-child(1)').click

## utilizando page objects
  @home_page.produto.click
  @home_page.botao_um_clique.click 
end

Quando("preencher {string}, {string} e {string}") do |nome, telefone, email|
  @detalhe_produto.preencher_dados(nome, telefone, email)
end

Então("ao concluir a compra apresentara o texto {string}.") do |mensagem|
  # find('.cm-notification-content')
  @detalhe_produto.validar_mensagem
end