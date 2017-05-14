class RnaTranscription
   def Complex.of_dna(dna)
        split_dna = dna.split(//)
       rna_result = ""
       split_dna.each do |i|
          if i == "G"
              i = "C"
            rna_result << i
          elsif i == "C"
              i = "G"
            rna_result << i
          elsif i == "T"
              i = "A"
            rna_result << i
          elsif i == "A"
              i = "U"
            rna_result << i
          else
            return ""
          end
       end
       return rna_result

   end
   

end
    module BookKeeping
     VERSION = 4
    end