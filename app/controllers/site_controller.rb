class SiteController < ApplicationController
  def about_us
    @page_title = "About Us"
  end
  
  def presidents_message
    @page_title = "President's Message"
  end
  
  def mission_statement
    @page_title = "Mission Statement"
  end
  
  def global_supply
    @page_title = "Global Supply"
  end
  
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
