def solution(str)

    return [] if str.empty?
      
    str << "_" if str.size.odd?
    
    arr = []
    n = 0
    long = str.length
      
    while long > 0 do
        rang = str[n..n+1]
        arr << rang
        n+=2
        long-=2
    end
      
    arr
    end
    p solution("poldo")