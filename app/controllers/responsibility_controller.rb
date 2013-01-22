class ResponsibilityController < ApplicationController
  def quality
    @page_title = "Quality"
  end
  
  def environment
    @page_title = "Environment"
  end
  
  def safety
    @page_title = "Safety"
  end
  
  def community
    @page_title = "Community"
  end
end
