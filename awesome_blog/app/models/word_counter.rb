module WordCounter
    def word_count
        if @body == nil
            0
        end
        else
            @body.split.size
        end
    end
end
