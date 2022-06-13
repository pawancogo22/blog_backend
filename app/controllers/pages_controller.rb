class PagesController < ApplicationController
    # def home
    #     render html: 'hello'
    # end
    # def post
    #     render html: 'post'
    # end

    # skip_before_action :verify_authenticity_token
    # def about
    #     render json: Movie.all()
    # end
    # def Movie
    #     render json: Movie.find(params[:id])
    # end
    # def Moviedel
    #     exp = Movie.find(params[:id])
    #     exp.destroy()
    #     render json: Movie.all()
    # end 
    # def Postmovie()

    #     # puts(params[:title])
    #     newmovie = Movie.new(params.permit(:title, :director, :year, :rating))
    #     newmovie.save()
    #     render json: Movie.all(), status: converted
    # end
   
    # def updatemovie()
    #     # obj = Movie.find(params[:id])
    #     # puts(obj, "ojjjjjjj")
        
    #     Movie.find(params[:id]).update(params.permit(:title, :director, :year, :rating))
    
    #     render json: Movie.all(), status: :ok
    # end

    # def index
    #     if (params[:id])
    #         allMovie = Movie.find(params[:id])
    #     else
    #         allMovie = Movie.all
    #     end
    #     render json: allMovie, status: :ok
    # end
    # def search
    #     test  = Movie.find_by(title: params[:title])
    #     render json: test
    # end

     skip_before_action :verify_authenticity_token
    def home
        render json: Blog.all()
    end
    
    def homeU
        render json: User.all()
    end

     def postblogs
        #puts(params[:userid])
        newblog = Blog.create(params.permit( :title, :content, :date, :user_id))
        newblog.save()
        render json: Blog.all
    end

    def adduser
        newuser = User.create(params.permit( :name, :email, :mobilenum, :password))
        newuser.save()
        render json: User.all
    end

    def finduser
        render json: User.find(params[:id])
    end

    
    def findblog
        if(params[:id])
            allBlog = Blog.find(params[:id])
        else
            allBlog = Blog.all
        end
        render json: allBlog
    end


    def updateblog
        Blog.find(params[:id]).update(params.permit(:title, :content, :date, :userid))
        render json: Blog.all
    end

    def delblog
        test = Blog.find(params[:id])
        test.destroy()
        render json: Blog.all
    end

    def deluser
        test1 = User.find(params[:id])
        test1.destroy()
        render json: User.all
    end


    def search
        test2  = Blog.find_by(title: params[:title])
        render json: test2
    end

    def searchu
        test3 = User.find_by(name: params[:name])
        render json: test3
    end    

    

       


    
end
