class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    # 1. 한번에 생성하기
    Post.create(title: params[:title],
                body: params[:body])

    # 1-1. 예전버전의 문법
    # Post.create(:title => params[:title], :body => params[:body])

    # 2. 객체 만들어서 저장하기
    # post = Post.new
    # post.title = params[:title]
    # post.body = params[:body]
    # post.save
  end

  def show
    @post = Post.find(params[:id])
  end
end
