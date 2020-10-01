class UniversitiesController < ApplicationController
  def index
    @universities = University.all
  end

  def new
  end

  def create
      university = University.new(uni_params)
      if university.valid?
        university.save!
        redirect_to :action => "show", :id => university.id
      else
        if !university.errors[:rank].empty?
	  flash[:alert] = "Rank " + university.errors[:rank].first
        else # missing required name
          flash[:alert] = "Name " + university.errors[:name].first
        end
        redirect_to :action => 'new'
    end
  end

  def show
    matches = University.where(:id => params[:id])
    @university = matches.empty? ? nil : matches.first
  end

  def edit
  end

  def update
    university = University.find(params[:id])
    university.update(uni_params)
    redirect_to :action => "show", :id => university.id
  end

  def delete
    University.destroy(params[:id])
  end

  private
  def uni_params
    params.require(:university).permit(:name, :rank, :remarks)
  end
end
