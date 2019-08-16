module WordCounter
    def word_count(post_body)
        if post_body == nil
            0
        else
            post_body.split.size
        end
    end
end
