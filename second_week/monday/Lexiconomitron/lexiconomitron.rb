class Lexiconomitron
  def eat_t_conc lexi
    # w = "great scott!"
    # e = w.split().to_s
    # puts "#{e}"
    # puts tdown = e.

    @p = lexi.gsub("t",'').split(" ")
    lexi =[]
    lexi.push(@p.shift.reverse)
    lexi.push(@p.pop.reverse)
    lexi.join(" ")
  end

  def eat_t lexi
      @p = lexi.gsub("t",'').split(" ")
      @p.join(" ")
  end

  def oompa_loompa sentence
    word = []
    sentence.split(" ").each do |words|
      if words.length <= 3
        word.push(words)
      end
    end
    word.join(" ")
  end

end

#Lexiconomitron.new.oompa_loompa("if you wanna be my lover")

# lex.eat_t
