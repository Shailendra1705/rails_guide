class Article < ApplicationRecord

   #callbacks
    after_initialize do |article|
        puts "Object Initailized of article"
    end

    after_find do |article|
        puts "You have found an object!"
    end

    after_create_commit :enter_article_to_db
    after_update_commit :log_user_saved_to_db


    has_many :comments, dependent: :destroy

    validates :title, presence: true


    
    # validate :title, presence: true, uniqueness: true, strict: TitleException
    # validates :title,presence:true,uniqueness: true, strict: TitleGenerationException
    validates :body, presence: true, length: { minimum:10 }


    # VALID_STATUSES = ['public','private','archived']
    # validates :status, inclusion : { in: VALID_STATUSES}


    def archived?
        status == 'archived'
    end

    private
    def enter_article_to_db
        puts "Article saved to DB"
    end
    
end

# <% if @article.errors.any? %>
#   <div id="error_explanation">
#     <h2><%= pluralize(@article.errors.count, "error") %> prohibited this article from being saved:</h2>

#     <ul>
#       <% @article.errors.each do |error| %>
#         <li><%= error.full_message %></li>
#       <% end %>
#     </ul>
#   </div>
# <% end %>
