class PagesController < ApplicationController
  def home
    @participations = Participation.last(3)
  end
end
