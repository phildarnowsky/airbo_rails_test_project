require "spec_helper"

feature "Charges index page" do
  background do
    customer1 = FactoryGirl.create(:customer, first_name: 'Johny', last_name: 'Flow')
    customer2 = FactoryGirl.create(:customer, first_name: 'Raj', last_name: 'Jamnis')
    customer3 = FactoryGirl.create(:customer, first_name: 'Andrew', last_name: 'Chung')
    customer4 = FactoryGirl.create(:customer, first_name: 'Mike', last_name: 'Smith')

    # Charges
    ## Successful
    FactoryGirl.create_list(:charge, 5, :successful, customer: customer1)
    FactoryGirl.create_list(:charge, 3, :successful, customer: customer2)
    FactoryGirl.create(:charge, :successful, customer: customer3)
    FactoryGirl.create(:charge, :successful, customer: customer4)

    ## Failed
    FactoryGirl.create_list(:charge, 3, :failed, customer: customer3)
    FactoryGirl.create_list(:charge, 2, :failed, customer: customer4)

    ## Disputed
    FactoryGirl.create_list(:charge, 3, :disputed, customer: customer1)
    FactoryGirl.create_list(:charge, 2, :disputed, customer: customer2)
  end

  scenario "User can see charges" do
    visit '/charges'

    within("#charges") do
      within(".failed") do
        expect(page).to have_content('Failed Charges')
        expect(page).to have_css("ol li", count: 5)
      end

      within(".successful") do
        expect(page).to have_content('Successful Charges')
        expect(page).to have_css("ol li", count: 10)
      end

      within(".disputed") do
        expect(page).to have_content('Disputed Charges')
        expect(page).to have_css("ol li", count: 5)
      end
    end
  end
end
