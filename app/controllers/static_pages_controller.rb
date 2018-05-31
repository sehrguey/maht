# encoding: utf-8
class StaticPagesController < ApplicationController
    skip_before_action :verify_authenticity_token
  def home
  end
  def crossroads
  end
  def whereto
    goto = params[:name]
    case goto.downcase.strip
        when 'пизда'
      redirect_to w0lookup_path
      when 'хуй'
       redirect_to w1lookup_path
      when 'ебать'
      redirect_to w2lookup_path
      
    else
      
      redirect_to :controller=>'static_pages', :action=>'crossroads'
    end
  end
  
  
end

