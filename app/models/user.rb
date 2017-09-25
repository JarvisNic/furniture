class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #<%= form.select :type  , options_for_select(Typeinmu.all.map{|s|[s.name, s.id ]}),{},{:class=> "form-control",:style=>"float:left" } %>
end
