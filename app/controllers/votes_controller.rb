class VotesController < ApplicationController

	def create
		if params[:up] == true
			up = true
		else
			up = false
		end
		  @vote = Vote.create!(up: up, user_id: session[:user_id], kitty_id: params[:kitty_id])
		  @vote.save!
		  ap @vote
		 render :json => { :new_count => up ? @vote.kitty.up_votes.count : @vote.kitty.down_votes.count }
	end
end


{
               "_method" => "post",
    "authenticity_token" => "Zke6KFyAiEpTgBcRXX8VPphUHGL6EJiiUlnDpdIMXeI=",
              "kitty_id" => "1",
                    "up" => "false",
                "action" => "create",
            "controller" => "votes"
}