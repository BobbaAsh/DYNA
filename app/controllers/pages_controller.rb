class PagesController < ApplicationController
  def home
    # @participations = Participation.last(3)
    if user_signed_in?
      @participations = current_user.participations.last(3)
    else
    end
    @documents = Document.all

  end

end
