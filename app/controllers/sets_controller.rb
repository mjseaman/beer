class SetsController < ApplicationController
  def index
    @sets = Set.all
  end

  def show
    @set = Set.find(params[:id])
  end

  def new
    @set = Set.new
  end

  def create
    @set = Set.new(params[:set])
    if @set.save
      redirect_to @set, :notice => "Successfully created set."
    else
      render :action => 'new'
    end
  end

  def edit
    @set = Set.find(params[:id])
  end

  def update
    @set = Set.find(params[:id])
    if @set.update_attributes(params[:set])
      redirect_to @set, :notice  => "Successfully updated set."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @set = Set.find(params[:id])
    @set.destroy
    redirect_to sets_url, :notice => "Successfully destroyed set."
  end
end
