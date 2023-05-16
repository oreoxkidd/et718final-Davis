class ArticlesController < ApplicationController
    
    def index
    @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    # snippet for brevity
    
    def new
    end
    
    def create
        @article = Article.new(article.params)
 
        @article.save
        redirect_to @article
    end
 
    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
