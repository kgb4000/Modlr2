class PagesController < ApplicationController
  def home
    @casts = Cast.all
    @pins = Pin.all
  end

  def about
  end

  def contact
  end

  def action
  end

  def action
  end
  
end
