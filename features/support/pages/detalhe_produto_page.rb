
class DetalheProdutoPage < SitePrism::Page         
  
    def preencher_dados(nome, telefone, email)
      fill_in('call_data_call_request_278_name', :with=> nome)
      fill_in('call_data_call_request_278_phone', :with=> telefone)
      fill_in('call_data_call_request_278_email', :with=> email)
      find('.cm-form-dialog-closer:nth-child(1)').click
    end

    def validar_mensagem
        find('.cm-notification-content')
    end
      
  end
  
  