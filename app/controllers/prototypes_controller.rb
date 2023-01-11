class PrototypesController < ApplicationController
  before_action :set_prototype,except: [:index, :new, :create]
  
  def index
    @prototypes = Prototype.includes(:user)
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
    # @prototype = Prototype.find(params[:id])
  end

  def edit
    # @prototype = Prototype.find(params[:id])
  end

  # def update
  #   # if @prototype.update(prototype_params)
  #   #   redirect_to prototype_path(@prototype)
  #   prototype = Prototype.find(params[:id])
  #   if prototype.update(prototype_params)
  #     redirect_to prototype_path
  #   else
  #     render :edit
  #     # redirect_to edit_prototype_path
  #     # render :edit にするとルーティングおかしかったので上記にした
  #   end
  # end

  def update
    if @prototype.update(prototype_params)
      redirect_to prototype_path(@prototype)
    else
      render :edit
    end
  end

  def destroy
    if @prototype.update(prototype_params)
      redirect_to prototype_path(@prototype)
    else
      render :edit
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
