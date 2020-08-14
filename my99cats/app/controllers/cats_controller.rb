class CatsController < ApplicationController

    def index
        @cats = Cat.all.order("cats.id ASC")

        render :index
    end

    def show
        @cat = Cat.find_by(id: params[:id])

        if @cat
            render :show
        else
            redirect_to cats_url
        end
    end

    def new
        # debugger
        @cat = Cat.new
        @colors = Cat.COLORS
        render :new
    end

    def create
        @cat = Cat.new(cat_params)

        if @cat.save
            redirect_to cat_url(@cat)
        else
            puts @cat.errors.full_messages
            redirect_to new_cat_url
        end
    end

    def edit
        @cat = Cat.find_by(id: params[:id])
        @colors = Cat.COLORS
        render :edit
    end

    def update
        @cat = Cat.find_by(id: params[:id])

        if @cat.update(cat_params)
            redirect_to cat_url(@cat)
        else
            puts @cat.errors.full_messages
            redirect_to edit_cat_url(@cat)
        end
    end

    private
    def cat_params
        params.require(:cat).permit(:name, :birth_date, :color, :sex, :description)
    end
end