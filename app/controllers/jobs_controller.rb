class JobsController < ApplicationController
    def index
        n = 100
        n.times do
            Delayed::Job.create!(handler: Delayed::Job.count + rand(n))
        end

        offset = rand(Delayed::Job.count - n)
        if offset > n
            offset -= n
        elsif offset < 0
            offset = 0
        end
        
        @jobs = Delayed::Job.offset(offset).take(n)

        return render 'index'
    end
end
