class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        jobs = roles.map{|r| r.salary}
        jobs.sum
    end

    def blockbusters

    end

    def most_successful

    end


end