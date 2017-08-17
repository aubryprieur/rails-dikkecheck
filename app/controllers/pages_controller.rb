class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @belges = Belge.order("RANDOM()").first(4)
  end
end
