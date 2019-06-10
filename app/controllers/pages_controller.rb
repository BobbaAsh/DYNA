class PagesController < ApplicationController
  def home
    # @participations = Participation.last(3)
    @participations = current_user.participations.last(3)
    @documents = Document.all
  end

end
