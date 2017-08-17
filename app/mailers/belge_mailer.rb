class BelgeMailer < ApplicationMailer
  def creation_confirmation(belge)
    @belge = belge

    mail(
      to:       @belge.user.email,
      subject:  "Restaurant #{@belge.first_name} #{@belge.last_name} created!"
    )
  end
end

