require "sinatra" # sinatra を読み込み
get "/hi" do # /hi へアクセスされたときの処理をブロックで書く
  "hi!" # ブロックの最後の結果をブラウザで表示する
end
