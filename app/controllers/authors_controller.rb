class AuthorsController < ApplicationController
    def index
    end

    def first
    end

    def create
      @author=Author.new(author_params)
      if @author.save
        respond_to do |format|
          format.html { redirect_to action: "success" }
        end
      else
        render "failed"
      end
    end

    def success
    end


    private
    def author_params
        params.require(:author).permit(:first_name, :last_name)
    end

end