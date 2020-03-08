$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
 result = {}
  i = 0


  while i < nds.count do
    dir_name = nds[i][:name]
    result[dir_name] = 0
    movie = 0
    while movie < nds[i][:movies].count do
      result[dir_name] += nds[i][:movies][movie][:worldwide_gross]
      movie +=1
    end

    i +=1
  end
  result
end