class BookshelvesController < ApplicationController
  before_action :set_bookshelf, only: [:show, :update, :destroy]

  # GET /bookshelves
  def index
    bookshelves = Bookshelf.all

    render json: BookshelfSerializer.new(bookshelves)
  end

  # GET /bookshelves/1
  def show
    render json: bookshelf
  end

  # POST /bookshelves
  def create
    @bookshelf = Bookshelf.new(bookshelf_params)

    if @bookshelf.save
      render json: @bookshelf, status: :created, location: @bookshelf
    else
      render json: @bookshelf.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookshelves/1
  def update
    if @bookshelf.update(bookshelf_params)
      render json: @bookshelf
    else
      render json: @bookshelf.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookshelves/1
  def destroy
    @bookshelf.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookshelf
      @bookshelf = Bookshelf.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookshelf_params
      params.fetch(:bookshelf, {})
    end
end
