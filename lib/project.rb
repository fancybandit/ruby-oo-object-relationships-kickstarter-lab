
class Project

    attr_accessor :title

    def initialize(title)
        self.title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select {|backed| backed.project == self}
        projects.collect {|backed| backed.backer}
    end
end

