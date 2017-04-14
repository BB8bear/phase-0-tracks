class TodoList
    attr_accessor :list

    def initialize(list)
        @list = list 
    end

    def get_items
        @list
    end

    def add_item(new_item)
        @list.push(new_item)
    end

    def delete_item(del_item)
        @list.delete(del_item)
    end

    def get_item(index)
        @list[index]
    end
end
