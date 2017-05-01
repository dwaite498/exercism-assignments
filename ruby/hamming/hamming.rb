class Hamming
    def self.compute(s, t)
        result = nil
        if s == t
            result = 0
        elsif s.length == 1
            result = 1
        else
          s_split = s.split(//)
          t_split = t.split(//)
          dna = s_split.length
          s_split.count.times do |i|
            counter = 0
            if i == t_split[i]
                counter += 1
                puts t_split[i]
            end
            puts counter
          end
            
        end
    end
end