rm(list=ls())
input=read.csv("../input.txt",sep="\t",header=FALSE)
print(paste("Part 1:",sum(do.call(pmax, input)-do.call(pmin, input))))

### Part 2

doit = function(vec){ #define a function to do the math
  vec=sort(vec,decreasing=TRUE) #sort vector because any division of a small number by big wont be even
  for(i in 1:(length(vec)-1)){ #iterate over each number.  Dont need to go downstream on last number
      for(j in (i+1):length(vec)){ #compare to all downstream numbers
        if(vec[i] %% vec[j]==0){ #check if evenly divisible
          return(vec[i]/vec[j]) #if so return division result
        }
    }
  }
}

acc=0
for(i in 1:nrow(input)){ #iterate over each line and get the one divisible number
  acc=acc+doit(vec=as.numeric(input[i,]))
}
print(paste("Part 2:",acc))
