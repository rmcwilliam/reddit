class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@herokuappinstuff.com"
  layout 'mailer'
end
