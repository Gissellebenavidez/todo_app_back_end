class TodoController < ApplicationController
    def index
        
    end
    def show
        todo_id=params[:id]
        if todo_id=='1'
            @todo_description='My Name'
            @todo_mood='happy'
            @todo_1='Talk to parents'
            @todo_2='Ask questions'
            @todo_3='Find out its urban meaning'
        elsif todo_id=='2'
            @todo_description='walking Lucky'
            @todo_mood='great'
            @todo_1='Go hiking'
            @todo_2='Get food and water'
            @todo_3='Go running with him'
        elsif todo_id=='3'
            @todo_description='Physics'
            @todo_mood='excited'
            @todo_1='Do graphs'
            @todo_2='Answer questions'
            @todo_3='Finish and print report'
         end
        @color="purple"
    end
    end
