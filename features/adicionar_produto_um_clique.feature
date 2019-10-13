#language:pt
#utf-8

Funcionalidade: Validar Produto com um clique
Eu como usuário não logado do site demo.cs-cart.com 
Quero visualizar a mensagem de texto na tela do site
Para validar a compra através do botão Buy now with 1-click 

Cenario: Validar que na tela a mensagem 'has been successfully created'
 Dado que esteja no site demo.cs-cart.com
 Quando acessar a compra de produto através do botão comprar com um clique
 E preencher "sueli", "11948489494" e "teste@gmail.com"
 Então ao concluir a compra apresentara o texto 'has been successfully created'.

