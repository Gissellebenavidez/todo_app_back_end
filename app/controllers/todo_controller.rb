class TodoController < ApplicationController
    def index
    @todos= Todo.all    
    end
    def show
        @todo=Todo.find_by_id(params[:id])
        @description= @todo.description
        @pomodoro_estimate=@todo.pomodoro_estimate
        
        # if todo_id=='1'
        #     @todo_description= @todo.description
        #     @todo_pomodoro_estimate=@todo.pomodoro_estimate
        #     @todo_mood='happy'
        #     @todo_1='Talk to parents'
        #     @todo_2='Ask questions'
        #     @todo_3='Find out its urban meaning'
        # elsif todo_id=='2'
        #     @todo_description= @todo.description
        #     @todo_pomodoro_estimate= @todo.pomodoro_estimate
        #     @todo_mood='great'
        #     @todo_1='Go hiking'
        #     @todo_2='Get food and water'
        #     @todo_3='Go running with him'
        # elsif todo_id=='3'
        #     @todo_description= @todo.description
        #     @todo_pomodoro_estimate=@todo.pomodoro_estimate
        #     @todo_mood='excited'
        #     @todo_1='Do graphs'
        #     @todo_2='Answer questions'
        #     @todo_3='Finish and print report'
        #  end
        # @color="purple"
    end
    
    def new
    
    end
    
    def create
     t = Todo.new
     t.description = params['description']
     t.pomodoro_estimate = params['pomodoro_estimate']
     t.save
     redirect_to "/todo/show/#{ t.id }"
    end
    
    def edit
        @todo=Todo.find_by_id(params[:id])
        
    end
    
    def update
         t = Todo.find_by_id(params[:id])
           t.description = params['description']
             t.pomodoro_estimate = params['pomodoro_estimate']
             t.save
            redirect_to "/todo/show/#{t.id}"
    end
    def destroy
        t= Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    
    end
    end
    