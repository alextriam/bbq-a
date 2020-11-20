class EmailExistValidator < ActiveModel::EachValidator
  def validate(record)
    if User.find_by(email: record.user_email).present?
      record.errors.add :user_email, I18n.t("app.email_used")
      false
    else
      true
    end  
  end
end