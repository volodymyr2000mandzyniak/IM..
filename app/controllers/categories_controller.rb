class CategoriesController < ApplicationController
  before_action :set_category, only: [ :show, :edit, :update, :destroy ]
    
  def index
    @categories	= Category.all
  end
    
  def show
    @movies = Movie.where(category_id: [@category.subtree_ids])
  end
    
  def new
    @category = Category.new
    @categories = Category.all.order(:name)  
  end
    
  def edit
    @categories = Category.where("id != #{@category.id}").order(:name)  
  end
        
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      flash[:danger] = 'Категорія не добавлено'
      render :new
    end
  end	
    
  def update
    if @category.update(category_params)	
      redirect_to category_path
    else
      render :edit	
    end
  end
        
  def destroy
    @category.destroy
		redirect_to categories_path
  end
        
  private
    
  def set_category
    @category = Category.find(params[:id])
  end
        
  def category_params
    params.require(:category).permit(:name, :parent_id)
  end
        
end
