class ArticlesController < ApplicationController
    
    def show
        @article = Article.find(params[:id])
    end 

    def index
        @article=Article.all
    end

    def new
        @article=Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        @article=Article.new(params.require(:article).permit(:title, :description))
        if @article.save
           flash[:notice] = "Article was saved successfully."
          redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Article updated successfully."
            redirect_to @article
        else
            render 'edit'
        end
    end


end