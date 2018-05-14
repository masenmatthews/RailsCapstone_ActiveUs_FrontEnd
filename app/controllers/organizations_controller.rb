class OrganizationsController < ApplicationController
  before_action :authorize, only: [:new]

  def index
    @organizations = Organization.all
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
    params.require(:organization).permit(:image, :organization_title, :organization_body)
  end
end
