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
  
  def power_steering_components
    @page_title = "Power Steering Components"
  end
  
  def sensor_rings
    @page_title = "Sensor Rings"
  end
end
