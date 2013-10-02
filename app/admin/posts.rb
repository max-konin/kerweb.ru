ActiveAdmin.register Post do
  config.filters = false
  controller do
    def edit
      redirect_to '/editor/posts/'+params[:id]
    end

    def show
      redirect_to '/posts/'+params[:id]
    end

    def new
      post = Post.create! title: 'This is a new epic post',
                          preview: 'This is a preview',
                          body: 'This epic text'
      redirect_to '/editor/posts/'+post.id.to_s
    end
  end
end
