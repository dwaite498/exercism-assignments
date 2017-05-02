class Hamming
    def self.compute(strand_a, strand_b)
      if strand_a.length != strand_b.length
          raise ArgumentError.new("wrong number of arguments")
      end
      s_split = strand_a.split(//)
      t_split = strand_b.split(//)
      counter = 0
      s_split.length.times do |i|
        if s_split[i] != t_split[i]
            counter += 1
        end
      end
      return counter
    end
end

   module BookKeeping
     VERSION = 3
   end