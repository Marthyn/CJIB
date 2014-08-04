require "rails_helper"
require 'fast-aes'

describe PeopleController, type: :controller do
  describe "GET #show" do
    it "responds with a person in json" do
      person = create(:person)
      get :show, id: person.bsn
      expect(response).to be_success
      puts response.body
    end

    it "responds with a person with bsn -1" do
      get :show, id: 346677
      expect(response).to be_success
      expect(JSON.parse(response.body)["bsn"]).to eq(-1)
    end
  end

  describe "POST #create" do
    it "saves a person" do
      person_attributes = { bsn: "123" }

      post :create, person: person_attributes
      expect(JSON.parse(response.body["status"])).to eq("OK")
    end

    it "doesn't save an existing bsn" do
      create(:person, bsn: 123)

      person_attributes = { bsn: "123" }

      post :create, person: person_attributes

      expect(JSON.parse(response.body["status"])).to eq("OK")
    end
  end
end
