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
  
  def environment_and_safety
    @page_title = "Environment & Safety"
  end
end
