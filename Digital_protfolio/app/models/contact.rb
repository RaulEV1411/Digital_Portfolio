class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :email
    attribute :num
    attribute :message 
  


    def headers
    {
        subject: 'Enviando Correo',
        to: 'raulez2023@hotmail.com',
        from: %("#{name}" <#{'raulez2023@hotmail.com'}>),
        encoding: 'base64' 
    }
    end
    
end