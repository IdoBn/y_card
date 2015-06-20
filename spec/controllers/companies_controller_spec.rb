require 'rails_helper'

RSpec.describe CompaniesController, :type => :controller do

  let(:pizza) { FactoryGirl.create(:tag, name: "pizza") }
  let(:american) { FactoryGirl.create(:company, name: "american pizza", description: "a really awesome pizza place!") }
  let(:olio) { FactoryGirl.create(:company, name: "olio", description: "we have pizzas!!!") }
  let(:dvora) { FactoryGirl.create(:company, name: "dvora", description: "falafels!") }

  before(:each) {
    american.tags << pizza
    olio.tags << pizza
    dvora
  }

  describe "GET show" do
    it "returns specific company" do
      get :show, { id: american.id }
      expect(response.body).to eq({company: american}.to_json(include: [:tags]))
    end
  end

  describe "GET index" do
    it "returns all companies" do
      get :index
      expect(response.body).to eq({companies: [american, olio, dvora]}.to_json(include: [:tags]))
    end

    it "returns search results" do 
      get :index, { query: "pizza" }
      expect(response.body).to eq({companies: [american, olio]}.to_json(include: [:tags]))
    end
  end

end
