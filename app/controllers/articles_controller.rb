class ArticlesController < ApplicationController
  def show
    # debugger
    @article =  Article.find(params[":id"]) # Article.find(params["id"])
  end
end
