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

  private

  def newsletter_subscriber_params
    params.require(:newsletter_subscriber).permit(:name, :email)
  end
end
