class MyEventValidator < ActiveModel::EachValidator
  def validate(record)
    if record.user.present?
      record.user.event_ids.include?(record.event.id) ? true : false
    else
      false
    end
  end
end
