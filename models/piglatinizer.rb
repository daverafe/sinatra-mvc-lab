class PigLatinizer
    attr_reader :text
  
    def initialize
      @text = text
    end

    def piglatinize(word)
        binding.pry
     word_arr = word.scan /\w/
     if word_arr[0].include?("a, e, i, o, u") 
     piglatinized_text = word_arr.map do |w|
          w = w.gsub("qu", " ")
          w.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
          w = w.gsub(" ", "qu")
        end
        piglatinized_text.join("")
    end

    # def piglatinize
    #     @text.split(" ").map do |word|
    #       word = word.gsub("qu", " ")
    #       word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
    #       word = word.gsub(" ", "qu")
    #     end
    # end
end