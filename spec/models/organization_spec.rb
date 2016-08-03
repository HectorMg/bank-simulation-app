require 'rails_helper'

RSpec.describe Organization, type: :model do
  before(:each) { @organization = FactoryGirl.create :organization }

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should validate_presence_of :market }
    it { should validate_numericality_of :numerator }
    it { should validate_presence_of :type }
    it { should belong_to :event }
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
