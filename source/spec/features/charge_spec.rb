require 'spec_helper'

describe 'charges', js: true do
  before(:each) do
    @charges  = FactoryGirl.create_list(:charge,10)
    @fails = FactoryGirl.create_list(:fail,5)
    @disputes =  FactoryGirl.create_list(:dispute,5)
  end
  
  it 'index' do
    visit charges_path
    page.should have_content('Failed Charges')
    page.should have_content('Disputed Charges')
    page.should have_content('Success Charges') 
    page.should have_css("li", :count => 3) 
    save_and_open_page     
    page.all("tr.fail").count.should == 5
    page.all("tr.dispute").count.should == 5
    page.all("tr.charge").count.should == 10    
  end
  
end
