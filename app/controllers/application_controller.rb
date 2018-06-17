class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def newsletter_sign_up
    @newsletter_subscriber = NewsletterSubscriber.new(newsletter_subscriber_params)
    if @newsletter_subscriber.save
      flash[:success] = "Thanks for signing up - we'll be in touch soon with the latest from NKC Equestrian Training!"
      redirect_to root_url
    else
      flash[:error] = "Sorry, please make sure you submit a valid name and email address"
      redirect_to root_url
    end
  end
end
