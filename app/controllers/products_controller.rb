class ProductsController < ApplicationController
  def gerotors
    @page_title = "Gerotors"
  end
  
  def vvt_components
    @page_title = "VVT Components"
  end
  
  def valve_train_components
    @page_title = "Valve Train Components"
  end
end
