require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:each) { @event = FactoryGirl.create :event }

  describe "validations" do
    it { should validate_presence_of :edition }
    it { should validate_numericality_of :year }
  end

  describe "attribute response" do
    it "should respond to all attributes" do
      expect(@event).to respond_to :edition
      expect(@event).to respond_to :year
    end
  end
end
