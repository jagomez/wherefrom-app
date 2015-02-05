class StoriesController < ApplicationController
	def index
		@stories = Story.all
	end

	def show
		@story = Story.find(params[:id])
	end
	
	def new
		@story = Story.new
	end

	def create
		@story = current_user.stories.create(params[:story_parms])
		flash[:success] = "Story successfully Added"
		redirect_to "/stories/#{@story.id}"
	end

	def edit
		@story = Story.find_by(:id => params[:id])
	end

	def update
		@story = Story.find_by(:id => params[:id])
		@story.update_attributes(story_params)
		flash[:success] = "Story Updated"
		redirect_to "/stories/#{params[:id]}"
	end

	def destroy
		@story = Story.find_by(:id => params[:id])
		@story.destroy
		flash[:success] ="Story Deleted."
		redirect_to '/stories'
	end

	def story_params
		params.require(:story).permit(:title, :address)
	end
end
