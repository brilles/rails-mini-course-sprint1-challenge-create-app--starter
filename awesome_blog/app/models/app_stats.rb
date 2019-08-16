class AppStats
    include WordCounter
    attr_reader :posts, :quotes
    def initialize(posts, quotes)
        @posts = posts
        @quotes = quotes
    end

    def posts_count
        @posts.count
    end

    def quotes_count
        @quotes.count
    end

    def posts_word_count
        total_word_count = 0
        for post in @posts
            total_word_count += word_count(post.body)
        end
        total_word_count
    end

    def quotes_word_count
        total_word_count = 0
        for quote in @quotes
            total_word_count += word_count(quote.body)
        end
        total_word_count
    end

    def total_count
        @posts.count + @quotes.count
    end

    def total_word_count
        posts_word_count + quotes_word_count
    end
end