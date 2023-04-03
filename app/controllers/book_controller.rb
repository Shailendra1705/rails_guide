class BookController < ApplicationController
    def index
        @book = Book.all
    end
end
