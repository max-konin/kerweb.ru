ActiveAdmin.register Post do
  config.filters = false
  controller do
    def edit
      redirect_to '/editor/blog/' + params[:id]
    end

    def show
      redirect_to '/blog/' + params[:id]
    end

    def new
      post = Post.create! title: 'This is a new epic post',
                          preview: 'This is a preview',
                          body: 'This epic text'
      redirect_to '/editor/blog/' + post.id.to_s
    end
  end
end
