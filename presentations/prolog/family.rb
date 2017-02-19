
class Family
    def initialize
        @parents = Hash.new {|hash, key| hash[key] = []}
        @children = Hash.new {|hash, key| hash[key] = []}
    end

    def add_parent(parent_name, child_name)
        @parents[child_name] << parent_name
        @children[parent_name] << child_name
    end

    def siblings(person)
        siblings = []
        @parents[person].each do |parent|
            siblings << @children[parent] - [person]
        end
        siblings.flatten
    end

    def cousins(person)
        cousins = []
        aunts_and_uncles = @parents[person].map do |parent|
            siblings(parent)
        end.flatten

        aunts_and_uncles.each do |aunt_or_uncle|
            cousins << @children[aunt_or_uncle]
        end
        cousins.flatten
    end
end
