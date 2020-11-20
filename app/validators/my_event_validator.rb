class MyEventValidator < ActiveModel::EachValidator
  def validate(record)
    if record.user.present?
      user.event_ids.include?(event.id) ? true : false
    else
      false
    end
  end
end