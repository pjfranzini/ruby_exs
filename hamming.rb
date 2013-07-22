class Hamming
    def initialize(sequence1,sequence2)
        @seq1 = sequence1
        @seq2 = sequence2
    end
    def length_error
        # actually shouldnt do this
        if @seq1.length != @seq2.length
            raise ArgumentError, "Error: comparing strings of unequal length"
        end
    end
    def compare
        length_error
        count = 0
        @seq1.length.times do |i|
            count += 1 if @seq1[i] != @seq2[i]
        end
        count
    end
end