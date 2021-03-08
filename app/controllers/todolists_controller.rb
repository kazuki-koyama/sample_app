class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    # データを新規登録するためのインスタンス作成
    list = List.new(list_params)
    # データをデータベースに保存
    list.save
    # リダイレクト
    redirect_to'/top'
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
