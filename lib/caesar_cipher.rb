#Caesar Cypher.

#Take advantage of the fact that letters can 
#be represented as numbers in the ASCII table
class CaesarCipher
  def ciphertext(string, number, cipher = '')
    string.each_codepoint do |asc|
      cipher << case asc
        when 'a'.ord..'z'.ord
          'a'.ord + (asc - 'a'.ord + number) % 26
        when 'A'.ord..'Z'.ord
          'A'.ord + (asc - 'A'.ord + number) % 26
        else
          asc
      end
    end
    cipher
  end
end