class BelgeMailer < ApplicationMailer
  def creation_confirmation(belge)
    @belge = belge

    mail(
      to:       @belge.user.email,
      subject:  "création d'un Dikkechecker: #{@belge.first_name} #{@belge.last_name}!"
    )
  end
end

