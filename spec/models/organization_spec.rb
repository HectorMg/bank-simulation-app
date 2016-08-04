require 'rails_helper'

RSpec.describe Organization, type: :model do
  before(:each) do
    @event = FactoryGirl.create :event
    org_factory = FactoryGirl.build :organization
    @organization = event.organizations.create(name: org_factory.name,
                                               market: org_factory.market,
                                               numerator: org_factory.numerator,
                                               type: "Company")
  end

  describe "parent validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should validate_presence_of :type }
    it { should belong_to :event }
  end

  context "when the organization is a company" do
    before(:each) do
      @organization = event.companies.create(name: "Company Name", numerator: 1)
    end
    describe "validations" do
      it { should validate_presence_of :market }
      it { should validate_numericality_of :numerator }
    end
  end


  describe "response to attributes" do
    it "should respond to all attributes" do
      expect(@organization).to respond_to :name
      expect(@organization).to respond_to :market
      expect(@organization).to respond_to :numerator
      expect(@organization).to respond_to :type
      expect(@organization).to respond_to :event_id
    end
  end
end
