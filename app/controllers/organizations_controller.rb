class OrganizationsController < ApplicationController

  def index
    @homeless_organizations = Organization.get_homeless_organizations
    @music_and_art_organizations = Organization.get_music_and_art_organizations
    @animal_welfare_organizations = Organization.get_animal_welfare_organizations
   end

  def new
    @organization = Organization.new
  end

  def create
    @user = User.find(session[:user_id])
    @organization = @user.organizations.new(organization_params)
    if @organization.save
      flash[:notice] = "Thanks, your organization is has been added to the list!"
      redirect_to organizations_path
    else
      render :new
    end
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organizations_path
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update!(organization_params)
      flash[:notice] = "Good job! Your organization was updated!"
      redirect_to organization_path(@organization)
    else
      render :edit
    end
  end

  private
  def organization_params
    params.require(:organization).permit(:name, :category, :description, :address, :phone, :website)
  end
end
