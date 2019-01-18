class UserMailer < ApplicationMailer
    def confirmation_email(email, order)

        mail(to: email, subject: 'Your order has been completed!' + order.id.to_s)
    end
end
