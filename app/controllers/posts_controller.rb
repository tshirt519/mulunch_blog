class PostsController < ApplicationController
  # before_action :authenticate_user, {only: [:new, :create, :edit, :update, :destroy]}
  # before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}
  
  def index
    @posts = Post.all.order(created_at: :desc)
    @old_posts = Post.all.order(created_at: :asc)
  end
  
  def show
    @post = Post.find_by(id: params[:id])
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
      user_id: 1 #仮のユーザーid
    )
    if params[:image1]
      @post.thumbnail1 = "#{@post.id}_1.jpg"
      image1 = params[:image1]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail1}", image1.read)
    end
    if params[:image2]
      @post.thumbnail2 = "#{@post.id}_2.jpg"
      image2 = params[:image2]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail2}", image2.read)
    end
    if params[:image3]
      @post.thumbnail3 = "#{@post.id}_3.jpg"
      image3 = params[:image3]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail3}", image3.read)
    end
    if params[:image4]
      @post.thumbnail4 = "#{@post.id}_4.jpg"
      image4 = params[:image4]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail4}", image4.read)
    end
    if params[:image5]
      @post.thumbnail5 = "#{@post.id}_5.jpg"
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
    if params[:image1]
      @post.thumbnail1 = "#{@post.id}_1.jpg"
      image1 = params[:image1]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail1}", image1.read)
    end
    if params[:image2]
      @post.thumbnail2 = "#{@post.id}_2.jpg"
      image2 = params[:image2]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail2}", image2.read)
    end
    if params[:image3]
      @post.thumbnail3 = "#{@post.id}_3.jpg"
      image3 = params[:image3]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail3}", image3.read)
    end
    if params[:image4]
      @post.thumbnail4 = "#{@post.id}_4.jpg"
      image4 = params[:image4]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail4}", image4.read)
    end
    if params[:image5]
      @post.thumbnail5 = "#{@post.id}_5.jpg"
      image5 = params[:image5]
      File.binwrite("public/post_thumbnails/#{@post.thumbnail5}", image5.read)
    end

    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/posts/index")
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
  
  def ensure_correct_user
    @post = Post.find_by(id: params[:id])
    if @post.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

  def tag_muramusubi
    @posts = Post.where(tag: "muramusubi").order(created_at: :desc)
  end

  def tag_villages
    @posts = Post.where(tag: "villages").order(created_at: :desc)
  end

end
