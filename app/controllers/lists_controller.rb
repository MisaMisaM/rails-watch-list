class ListsController < ApplicationController
    def index
      @lists = List.all
    end

    def show
      @list = List.find(params[:id])
      @bookmarks = @list.bookmarks
    end

    def new
      @list = List.new
      @test = "coding daisuki"
    end

    def create
      @list = List.new(list_params)
      if @list.save
        redirect_to list_path(@list)
      else
        # give the form back again -> new.html.erb
        render :new, status: :unprocessable_entity
    end
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
