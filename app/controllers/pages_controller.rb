class PagesController < ApplicationController

  def home
  	@newsletter = Newsletter.new
  end
  
  def work
  end
  
  def people
  end

  def blog
  end

  def privacy
  end

end
