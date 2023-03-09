input = readLines("../input.txt")
# input="1212"
# input="1221"
# input="123425"
# input="123123"
# input="12131415"
input = as.numeric(unlist(strsplit(input,""))) #split and convert to numeric

acc=c()
num_to_increment=length(input)/2 #this is the number of steps away you want to match
for(i in 1:length(input)){ #iterate over each input
  if((i+num_to_increment)<=length(input)){ #if you don't need to wrap...
    if(input[i]==input[i+num_to_increment]){ #...just compare it
      acc=c(acc,input[i])#add to vector if it matches
    }
  }else{#...if you do need to wrap...
    new_pos=num_to_increment-(length(input)-i) #get the position.  start with steps to increment.  substract steps you increment before wrapping
    if(input[i]==input[new_pos]){ #...and compare it
      acc=c(acc,input[i])#add to vector if it matches
    }
    
  }
}

print(paste("Part 2:",sum(acc)))
