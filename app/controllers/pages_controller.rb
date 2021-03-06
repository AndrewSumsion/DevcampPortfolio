class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @page_title = "About Me"
    @skills = Skill.all
  end

  def contact
    @page_title = "Contact Me"
  end
  
  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
