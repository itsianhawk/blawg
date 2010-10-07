  #LEET ENCRYPTION/DECRYPTION TOOL I MADE
  
  input = ARGV[0]

  encrypt = input.tr('a-y', 'b-z')

  puts encrypt
  
  decrypt = encrypt.tr('b-z', 'a-y')
  
  puts decrypt