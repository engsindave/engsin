require 'spec_helper'

describe SiteController do
  describe 'handling GET to index' do
    def do_get
      get :index
    end
    
    it "should be successful" do
      do_get
      response.should be_success
    end
  end
end
