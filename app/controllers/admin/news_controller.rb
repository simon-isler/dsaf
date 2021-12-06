# frozen_string_literal: true

module Admin
  class NewsController < AdminController
    def index
      @news = News.all.order(created_at: :desc)
    end

    def new
      @news = News.new
    end

    def edit
      @news = News.find(params[:id])
    end

    def create
      @news = News.new(news_params)
      if @news.save
        redirect_to admin_news_index_path, flash: { notice: 'News entry was created!' }
      else
        render 'new'
      end
    end

    def update
      @news = News.find(params[:id])

      if @news.update(news_params)
        redirect_to admin_news_index_path, notice: 'News entry was updated!'
      else
        render 'edit'
      end
    end

    def destroy
      @news = News.find(params[:id])
      @news.destroy

      redirect_to admin_news_index_path, notice: 'News entry was deleted!'
    end

    private

    def news_params
      params.require(:admin_news).permit(:title, :description, :image)
    end
  end
end
