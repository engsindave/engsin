class CompanyController < ApplicationController
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
end
