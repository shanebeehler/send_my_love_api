class PostsController < ApplicationController

  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
    @recent_posts           = Post.most_recent(3)
    @running_total_distance = Post.running_total_distance
    @city_count             = Post.city_count
    @country_count          = Post.country_count
    @count_all              = Post.count_all
    @count_per_city         = Post.count_per_city
    @count_per_country      = Post.count_per_country
    @person_count           = Post.person_count

    render json: [@recent_posts, [@city_count, @country_count, @count_all, @count_per_city, @count_per_country, @person_count, @running_total_distance]]
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def user_profile
    @user_history       = Post.where("user_id = ?", params[:user_id]).order("created_at desc")
    @current_love       = @user_history.first
    @love_from_id       = @current_love.id - 1
    @love_to_id         = @current_love.id + 1
    @love_from          = Post.find(@love_from_id)
    @love_to            = Post.find_by(id: @love_to_id)
    @current_love_array = [@love_from, @current_love, @love_to]
    @profile            = { current_love: @current_love_array }
    render json: @profile
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:user_id, :name, :city, :country, :lat, :lng, :milliseconds)
    end
end
