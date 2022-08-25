# class MoviesController < ApplicationController
#   before_action :set_movie, only: %i[ show edit update destroy ]

#   # GET /movies
#   def index
#     @movies = Movie.all
#   end

#   # GET /movies/1
#   def show
#   end

#   # GET /movies/new
#   def new
#     @movie = Movie.new
#   end

#   # GET /movies/1/edit
#   def edit
#   end

#   # POST /movies
#   def create
#     @movie = Movie.new(movie_params)

#     if @movie.save
#       redirect_to @movie, notice: "Movie was successfully created."
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /movies/1
#   def update
#     if @movie.update(movie_params)
#       redirect_to @movie, notice: "Movie was successfully updated."
#     else
#       render :edit, status: :unprocessable_entity
#     end
#   end

#   # DELETE /movies/1
#   def destroy
#     # before_destroy
#     # Post.select("posts.*, COUNT(comments.id) as comment_count").joins("LEFT OUTER JOIN comments ON (comments.post_id = posts.id)").group("posts.id")
#     # if Movie.all(:include => :bookmarks)
#     if @movie.bookmarks.empty?
#       @movie.destroy
#       redirect_to movies_url, notice: "Movie was successfully destroyed."
#     else
#       flash[:notice] = "Movie can't be destroyed, it is referenced in at least one bookmark."
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_movie
#       @movie = Movie.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def movie_params
#       params.require(:movie).permit(:title, :overview, :poster_url, :rating)
#     end
# end
