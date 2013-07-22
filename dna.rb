class DNA
	ALLOWED_LETTERS = /[ACTGU]/
    def initialize(sequence)
        @seq = sequence
    end
    def dna_check(dna_string, error_msg)
        if dna_string.gsub(ALLOWED_LETTERS,'') != ''
            raise ArgumentError, error_msg
        end
    end
    def error_check(nucleotide)
	  	dna_check(@seq,"Invalid sequence")
        dna_check(nucleotide,"That's not a nucleotide, silly!")
    end
    def count(nucleotide)
        error_check(nucleotide)
        # main logic
        dna_count = 0
        @seq.each_char do |char|
           dna_count +=1 if char == nucleotide
        end
        dna_count
    end
    def nucleotide_counts
        dna_check(@seq,"Invalid sequence")
        # main logic
        dna_count = {'A' => 0, 'T' => 0, 'G' => 0, 'C' => 0, 'U' => 0}
        @seq.each_char do |char|
           dna_count[char] +=1
        end
        dna_count.each do |key, value|
           dna_count.delete key if value == 0
        end
        # could also use hash.reject method
        dna_count
    end

end