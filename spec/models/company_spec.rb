require 'rails_helper'

RSpec.describe Company, type: :model do
  before(:each) { @event = FactoryGirl.create :event }

  context "when the organization is a company" do
    before(:each) do
      @company = @event.companies.create(name: "Company Name", market: "Food", numerator: 1)
    end
    describe "validations" do
      it { should validate_presence_of :market }
      it { should validate_numericality_of :numerator }
    end
  end
end

