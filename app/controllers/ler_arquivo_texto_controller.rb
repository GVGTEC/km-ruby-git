class LerArquivoTextoController < ApplicationController

  #debugger

  def LerArquivo
#      if(File.exist?('produtos.txt'))
#        puts 'File exists'
#      else
#        puts 'File does not exist'
#      end
     
      array_produtos=[]

      File.open('produtos.txt', 'r') do |leitura|

#      while
#        #linha = leitura.gets.delete("\n")
#
#        linha = leitura.gets
#
#        #@linha=linha
#
#        #array_produtos.push (linha.split(";"))
#
#        array_produtos = linha.split(";")
#        
##       @array_produtos << array_produtos
#
#        #debugger
#      end    

      while
        #linha = leitura.gets.delete("\n")

        linha = leitura.gets

        #@linha=linha

        #array_produtos.push (linha.split(";"))

        linha = linha.split(";")

        array_produtos << linha;

        #@array_produtos = linha

        #debugger
      end   

      @lista_produtos = array_produtos

      #debugger
      
    end
  end
end
