class ListsController < ApplicationController

#create
    def new
        @list = List.new
        @list.title = params[:title]
        redirect_to list_path(@list)
    end

#read
    def show
        @list = List.find(params[:id])
    end

#update
    def edit
        @list = List.find(params[:id])
    end

    def update
        @list = List.find(params[:id])
        @list.update(list_params)
        redirect_to list_path(@list)
    end 

#delete
    def delete 
    end

  private

# strong_params
  def list_params
    params.require(:list).permit(:title, :items)
  end

end
