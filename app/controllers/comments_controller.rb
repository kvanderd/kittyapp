class CommentsController < ApplicationController
 before_filter :load_commentable
 
  def index
  	# @commentable = Kitty.find(params[:kitty_id])
  	@comments = @commentable.comments
  end

  def new
    @parent_id = params.delete(:parent_id)
    @commentable = find_commentable
    @comment = Comment.new( :parent_id => @parent_id, 
                            :commentable_id => @commentable.id,
                            :commentable_type => @commentable.class.to_s)
  end

  def create
  	@commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])
    # @comment = @commentable.comments.new(params[:comment])
    @comment.user_id = session[:user_id]
    if @comment.save
    	redirect_to @commentable
    else
    	render new
    end
  end

private

  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

end