require 'pry'
class Project
    attr_accessor :title, :backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        new_backer = ProjectBacker.new(self, backer)
    end

    def backers
        options = ProjectBacker.all.select {|option| option.project == self}
        options.map {|instance| instance.backer}
        
    end
end