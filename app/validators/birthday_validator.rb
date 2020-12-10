class BirthdayValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return unless value.present? && value > Time.zone.today

    message = options[:message] || :birthday
    record.errors.add(attribute, message)
  end
end
