class PostsController < ApplicationController
  before_action :forbid_guest_user, {only: [:new, :create, :edit, :update, :destroy]}
  
  def index
    @posts = Post.all.order(created_at: :desc)
    @old_posts = Post.all.order(created_at: :asc)
  end
  
  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
    @likes_count = Like.where(post_id: @post.id).count
    @old_posts = Post.all.order(created_at: :asc)
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(
      title: params[:title],
      content: params[:content],
      article1: params[:article1],
      article2: params[:article2],
      article3: params[:article3],
      article4: params[:article4],
      article5: params[:article5],
      tag: params[:tag],
      village_tag: params[:village_tag],
      user_id: @current_user.id,
    )
    if params[:image1]
      @post.thumbnail1 = "#{@post.title}_1.jpg"
      image1 = params[:image1]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail1}", image1.read)
    end
    if params[:image2]
      @post.thumbnail2 = "#{@post.title}_2.jpg"
      image2 = params[:image2]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail2}", image2.read)
    end
    if params[:image3]
      @post.thumbnail3 = "#{@post.title}_3.jpg"
      image3 = params[:image3]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail3}", image3.read)
    end
    if params[:image4]
      @post.thumbnail4 = "#{@post.title}_4.jpg"
      image4 = params[:image4]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail4}", image4.read)
    end
    if params[:image5]
      @post.thumbnail5 = "#{@post.title}_5.jpg"
      image5 = params[:image5]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail5}", image5.read)
    end

    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.article1 = params[:article1]
    @post.article2 = params[:article2]
    @post.article3 = params[:article3]
    @post.article4 = params[:article4]
    @post.article5 = params[:article5]
    @post.tag = params[:tag]
    @post.village_tag = params[:village_tag]

    if params[:image1]
      @post.thumbnail1 = "#{@post.title}_1.jpg"
      image1 = params[:image1]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail1}", image1.read)
    end
    if params[:image2]
      @post.thumbnail2 = "#{@post.title}_2.jpg"
      image2 = params[:image2]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail2}", image2.read)
    end
    if params[:image3]
      @post.thumbnail3 = "#{@post.title}_3.jpg"
      image3 = params[:image3]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail3}", image3.read)
    end
    if params[:image4]
      @post.thumbnail4 = "#{@post.title}_4.jpg"
      image4 = params[:image4]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail4}", image4.read)
    end
    if params[:image5]
      @post.thumbnail5 = "#{@post.title}_5.jpg"
      image5 = params[:image5]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail5}", image5.read)
    end

    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/edit")
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end

  def tag_muramusubi
    @posts = Post.where(tag: "muramusubi").order(created_at: :desc)
    @old_posts = Post.all.order(created_at: :asc)
  end

  def tag_villages
    @posts = Post.where(tag: "villages").order(created_at: :desc)
    @old_posts = Post.all.order(created_at: :asc)
  end

  def tag_ueno
    @posts = Post.where(village_tag: "ueno").order(created_at: :desc)
    @old_posts = Post.all.order(created_at: :asc)
  end

  def tag_oshika
    @posts = Post.where(village_tag: "oshika").order(created_at: :desc)
    @old_posts = Post.all.order(created_at: :asc)
  end

  def tag_higashi_naruse
    @posts = Post.where(village_tag: "higashi_naruse").order(created_at: :desc)
    @old_posts = Post.all.order(created_at: :asc)
  end

end
