require 'rails_helper'

RSpec.describe Bank, type: :model do
  before(:each) { @event = FactoryGirl.create :event }

  context "when the organization is a bank" do
    before(:each) do
      @bank = @event.create_bank
    end
    describe "default values" do
      it "should have 'The Bank' as a name" do
        expect(@bank.name).to eql("The Bank")
      end
    end
  end
end

