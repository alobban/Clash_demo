require 'spec_helper'

describe "search/home.html.erb" do

	#subject { page }
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "Page header" do
  	it "should have selector 'h1'" do
  		puts response.body
  		response.body.should have_selector( 'h1' )
  		response.body.should contain( 'Clash Demo' )
  	end
  end
end
	