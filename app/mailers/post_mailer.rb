class PostMailer < ActionMailer::Base

  include Resque::Mailer

  def post_created( post )
    @post = post
    mail(
        :from => ActionMailer::Base.smtp_settings[:user_name],
        :to => 'linhares.mauricio@gmail.com',
        :subject => "New post - #{post.title}" )
  end

end