require "rails_helper"

class Validatable
  include ActiveModel::Validations
  attr_accessor :birthday

  validates :birthday, birthday: true
end

describe BirthdayValidator do
  subject(:validatable) { Validatable.new }

  context "when date is before current date" do
    before { validatable.birthday = Time.zone.today - 1 }

    it "is valid" do
      expect(validatable).to be_valid
    end
  end

  context "when date is equal current date" do
    before { validatable.birthday = Time.zone.today }

    it "is valid" do
      expect(validatable).to be_valid
    end
  end

  context "when date is greater than current date" do
    before { validatable.birthday = Time.zone.today + 1 }

    it "is invalid" do
      expect(validatable).not_to be_valid
    end

    it "adds an error on model" do
      validatable.valid?
      expect(validatable.errors.keys).to include(:birthday)
    end
  end
end
