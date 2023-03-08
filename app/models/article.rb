class Article < ApplicationRecord
    has_many :comments,dependent: :destroy

    validates :title , presence: true


    
    # validate :title, presence: true, uniqueness: true, strict: TitleException
    # validates :title,presence:true,uniqueness: true, strict: TitleGenerationException
    validates :body,presence:true , length:{minimum:10}


    # VALID_STATUSES = ['public','private','archived']
    # validates :status, inclusion : { in: VALID_STATUSES}


    def archived?
        status == 'archived'
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
