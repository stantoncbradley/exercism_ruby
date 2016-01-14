class Complement

  VERSION = 3

  DNA = 'GCTA'
  RNA = 'CGAU'

  def self.of_dna(dna)
    unless dna.chars.all?{|c| DNA.include? c}
      raise ArgumentError.new('dna must contain valid nucleotides (G,C,T,A)')
    end
    dna.tr(DNA, RNA)
  end

end
