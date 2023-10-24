class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :email, validate: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i
    attribute :file, attachment: true
    attribute :message
    attribute :nickname, captcha: true

    def headers
    {
        subject: 'Sending email',
        to: 'alessandro14112003@gmail.com',
        from: %("#{name}" <#{email}>),
        encoding: 'base64' 
    }
    end
end