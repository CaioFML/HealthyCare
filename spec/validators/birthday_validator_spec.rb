require "rails_helper"

class Validatable
  include ActiveModel::Validations
  attr_accessor :birthday
  validates :birthday, birthday: true
end

describe BirthdayValidator do
  subject { Validatable.new }

  context "when date is before current date" do
    before { subject.birthday = Date.today - 1 }

    it "should be valid" do
      expect(subject.valid?).to be_truthy
    end
  end

  context "when date is equal current date" do
    before { subject.birthday = Date.today}

    it "should be valid" do
      expect(subject.valid?).to be_truthy
    end
  end

  context "when date is greater than current date" do
    before { subject.birthday = Date.today + 1 }

    it "should be invalid" do
      expect(subject.valid?).to be_falsey
    end

    it "adds an error on model" do
      subject.valid?
      expect(subject.errors.keys).to include(:birthday)
    end
  end
end