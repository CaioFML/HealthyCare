RSpec.describe Profile do
  describe "validations" do
    subject (:profile) { build(:profile) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cell_phone) }
    it { is_expected.to validate_presence_of(:birthday) }
    it { is_expected.to validate_numericality_of(:weight).is_greater_than(0) }
    it { is_expected.to validate_numericality_of(:height).is_greater_than(0) }
    it { is_expected.to belong_to :user }

    context "when birthday" do
      it "is valid with past birthday" do
        profile.birthday = Time.zone.today - 1
        profile.valid?
        expect(profile.errors.keys).not_to include :birthday
      end

      it "is valid with current birthday" do
        profile.birthday = Time.zone.today
        profile.valid?
        expect(profile.errors.keys).not_to include :birthday
      end

      it "is invalid with future birthday" do
        profile.birthday = Time.zone.today + 1
        profile.valid?
        expect(profile.errors.keys).to include :birthday
      end
    end
  end
end
