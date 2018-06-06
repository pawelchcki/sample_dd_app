class JobsController < ApplicationController
    def index
        n = 10
        n.times do
            Delayed::Job.create!(handler: Delayed::Job.count + rand(n))
        end

        offset = Delayed::Job.count - n - n/2
        offset = 0 if offset < 0
        @jobs = Delayed::Job.offset(offset).take(n*10)

        return render 'index'
    end
end
