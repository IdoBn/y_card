require 'rails_helper'

RSpec.describe Company, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it { should have_many(:tags) }
  it { should have_many(:taggings) }

  it 'searches by tags' do
  	pizza = FactoryGirl.create(:tag, name: "pizza")

  	american = FactoryGirl.create(:company, name: "american pizza")
  	american.tags << pizza
  	olio = FactoryGirl.create(:company, name: "olio")
  	olio.tags << pizza
  	dvora = FactoryGirl.create(:company, name: "dvora")

  	expect(Company.search("pizza")).to eq([american, olio])
  end

  it 'searches by descriptions' do
  	american = FactoryGirl.create(:company, name: "american pizza", description: "a really awesome pizza place!")
  	olio = FactoryGirl.create(:company, name: "olio", description: "we have pizzas!!!")
  	dvora = FactoryGirl.create(:company, name: "dvora", description: "falafels!")

  	expect(Company.search("pizza")).to eq([american, olio])
  end
end
