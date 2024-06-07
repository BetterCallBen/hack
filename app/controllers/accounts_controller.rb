class AccountsController < ApplicationController
  def create
    @account = Account.new(password: params[:password])
    if @account.save
      redirect_to @account
    else
      render "new"
    end
  end
end
