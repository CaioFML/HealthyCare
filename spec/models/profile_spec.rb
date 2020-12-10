RSpec.describe Profile do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cell_phone) }
    it { is_expected.to validate_numericality_of(:weight).is_greater_than(0) }
    it { is_expected.to validate_numericality_of(:height).is_greater_than(0) }
    it { is_expected.to belong_to :user }
  end

  describe "birthday" do
    it { is_expected.to validate_presence_of(:birthday) }
    
    it "is valid with past birthday" do
      subject.birthday = Date.today - 1
      subject.valid?
      expect(subject.errors.keys).to_not include :birthday
    end
    
    it "is valid with current birthday" do
      subject.birthday = Date.today
      subject.valid?
      expect(subject.errors.keys).to_not include :birthday
    end
    
    it "is invalid with future birthday" do
      subject.birthday = Date.today + 1
      subject.valid?
      expect(subject.errors.keys).to include :birthday
    end
  end
end
