class LoginController < ApplicationController
  # display all data
  def index
    @users=User.all
  end
  # display template for create
  def new
  end
  # create record
  def create
    @users=User.new(user_params)
    if !@users.save
      flash[:notice] = "error"
      redirect_to login_new_path
    else  
      redirect_to login_index_path
    end
  end
  # display selected record
  def show
    @user=User.find(params[:id])
  end
  # display seleted record for updation
  def update_show
    @user=User.find(params[:id])
  end
  # update record
  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path
    else
      render 'update_show' 
      #render 
    end
  end
  # strong parameter
  def user_params
   params.permit(:user_name, :password)
  end
  # delete record
  def delete
    @user=User.find(params[:id])
    @user.delete 
    redirect_to root_path
  end
end