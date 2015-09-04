class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

 def create
    @owner = Owner.new(owner_params)
  
    if @owner.save
      redirect_to owners_path
    else
      render :new
    end
  end

   def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    
    if @owner.update(owner_params)
      redirect_to owners_path
    else
      render :edit
    end
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to owners_path
  end


    private

  def owner_params
    params.require(:owner).permit(:name, :age, :profession)
  end
end  
