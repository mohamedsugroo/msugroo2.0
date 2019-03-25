class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]
  before_action :set_service
  before_action :authenticate_user!, except: [:show]

  def index
    @sections = Section.where(service_id: @service.id)
  end

  def show
  end

  def new
    @section = Section.new
  end

  def edit
  end

  def create
    @section = Section.new(section_params)
    @section.service_id = @service.id

    respond_to do |format|
      if @section.save
        format.html { redirect_to service_section_path(@section.service.slug,@section), notice: 'Section was successfully created.' }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to service_section_path(@section.service.slug,@section), notice: 'Section was successfully updated.' }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to services_path, notice: 'Section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_section
      @section = Section.friendly.find(params[:id])
    end

    def set_service
      @service = Service.friendly.find(params[:service_id])
    end

    def section_params
      params.require(:section).permit(:title, :subheading, :content, :service_id, :user_id, :cover, :service_name, :summary)
    end
end
