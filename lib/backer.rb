class Backer
    attr_accessor :name, :project

    def initialize(name)
        @name = name
    end

    def back_project(project)
        new_backing = ProjectBacker.new(project, self)
    end

    def backed_projects
        options = ProjectBacker.all.select {|option| option.backer == self}
        options.map {|instance| instance.project}
    end

end