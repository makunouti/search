class SearchesController < ApplicationController
def search
  query = params[:query]
  target = params[:search_target]
  method = params[:search_method]

  if target == "User"
    @results = User.search(query, method)
  elsif target == "Post"
    @results = Post.search(query, method)
  else
    @results = []  # 空の配列を設定する
  end
end

end
