class StaticController < ApplicationController
  def home
  end

  def lessons
  end

  def contact
  end

  def about
  end

  def quiz
  end

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

  private

  def newsletter_subscriber_params
    params.require(:newsletter_subscriber).permit(:name, :email)
  end
end
