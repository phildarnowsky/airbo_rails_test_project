require 'spec_helper'

describe 'charges', js: true do
  it 'index' do
    visit charges_path 
    save_and_open_page   
    page.should have_content('Failed Charges')    
  end
  
end
