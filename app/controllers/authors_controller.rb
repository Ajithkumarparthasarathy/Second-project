class AuthorsController < ApplicationController
    def index
    end

    def create
        author=Author.new(author_params)
        if author.save
            render "success"
        else
            render "failed"
        end
    end
end

