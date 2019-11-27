class CategoriesController < ApplicationController
  #before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    #render plain: params[:category].inspect
    @category = Category.new(category_params)

    @category.save
    redirect_to @category

    # @categories = Category.new(params.require(:category).permit(:title))
    # @categories.category_id = params[:category_id] 

    # respond_to do |format|
    #   if @categories.save
    #     format.html { redirect_to @categories, notice: 'Category  was successfully created.' }
    #     format.json { render :show, status: :created, location: @categories }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @categories.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end

 private
#   # Use callbacks to share common setup or constraints between actions.
#   def set_category
#     @category = Category.find(params[:category_id])
#   end
def category_params
  params.require(:category).permit(:title)
end
