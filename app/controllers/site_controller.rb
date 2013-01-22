class SiteController < ApplicationController  
  def quality
    @page_title = "Quality"
  end
  
  def environment
    @page_title = "Environment"
  end
  
  def safety
    @page_title = "Safety"
  end
  
  def careers
    @page_title = "Careers"
  end
  
  def contact
    @page_title = "Contact"
  end
end
