require 'spec_helper'
 
describe ChargesController do
  [Charge, Customer].each(&:delete_all)

  render_views
  let(:page) { Capybara::Node::Simple.new(@response.body) }
 
  describe "GET 'index'" do
    before { get :index }
 
    it 'displays only three charges lists' do
      page.should have_css("table", count: 3)
    end

    it 'displays the lists with correct labels' do
      %{Failed Charges|Disputed Charges|Successful Charges}.split('|').each do |list_title|
        page.should have_css("h3", text: list_title, count: 1)
      end
    end

    it "shows 10 successful charges" do
      page.should have_css("table.successful tbody tr", count: 10)
    end

    it "shows 5 failed charges" do
      page.should have_css("table.failed tbody tr", count: 5)
    end

    it "shows that disputed charges exist" do
      page.should have_css("table.disputed tbody tr")
    end

  end
  [Charge, Customer].each(&:delete_all)
end
