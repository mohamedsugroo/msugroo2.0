class BlocksController < ApplicationController
  before_action :set_block, only: [:show, :edit, :update, :destroy]

  def index
    @blocks = Block.order("created_at DESC")
  end

  def show
  end

  def new
    @block = Block.new
  end

  def edit
  end

  def create
    @block = Block.new(block_params)

    respond_to do |format|
      if @block.save
        format.html { redirect_to @block, notice: 'Block was successfully created.' }
        format.json { render :show, status: :created, location: @block }
      else
        format.html { render :new }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @block.update(block_params)
        format.html { redirect_to @block, notice: 'Block was successfully updated.' }
        format.json { render :show, status: :ok, location: @block }
      else
        format.html { render :edit }
        format.json { render json: @block.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @block.destroy
    respond_to do |format|
      format.html { redirect_to blocks_url, notice: 'Block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_block
      @block = Block.find(params[:id])
    end

    def block_params
      params.require(:block).permit(:work_id, :title, :block_style, :content, :block_type, :block_width, :block_content_wrapper)
    end
end
