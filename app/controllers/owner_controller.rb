class OwnerController < ApplicationController
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



    private

  def owner_params
    params.require(:owner).permit(:name, :age, :profession)
  end

end
