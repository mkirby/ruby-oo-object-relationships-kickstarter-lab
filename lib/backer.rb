class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.map { |kickStart| 
        if kickStart.backer == self
            kickStart.project
        end
        }

        projects.compact

    end
end





