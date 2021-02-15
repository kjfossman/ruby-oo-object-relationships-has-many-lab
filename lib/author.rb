class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        list = []
        Post.all.each do |x|
            if x.author == self
                list << x
            end
        end
        return list
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
    end

    def self.post_count
        Post.all.count
    end



end