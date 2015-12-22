class NewsEvent < ActiveRecord::Base

   before_save do
    self.description = self.description.html_safe
  end


  before_update do
    self.description = self.description.html_safe
  end
end
