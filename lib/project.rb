cclass Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.map { |kickStart | 
        if kickStart.project == self
            kickStart.backer
        end
        }
        backers.compact
    end
end
