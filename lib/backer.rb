
class Backer

    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select {|backed| backed.backer == self}
        projects.collect {|backed| backed.project}
    end
end

