class VotesController < ApplicationController

	def create
		up = params[:up] =~ /^t/ ? true : false
		 @vote = Vote.create!(up: up, user_id: session[:user_id], kitty_id: params[:kitty_id])
		 @vote.save!
		 render :json => { :new_count => up ? @vote.kitty.up_votes.count : @vote.kitty.down_votes.count }
	end
end


# {
#                "_method" => "post",
#     "authenticity_token" => "Zke6KFyAiEpTgBcRXX8VPphUHGL6EJiiUlnDpdIMXeI=",
#               "kitty_id" => "1",
#                     "up" => "false",
#                 "action" => "create",
#             "controller" => "votes"
# }