class PagesController < ApplicationController

  def home
  	@news = NewsEvent.order(on: :asc).last(12)
  end

end
