input = readLines("../input.txt")
# input="1122"
# input="1111"
# input="1234"
# input="91212129"
input = as.numeric(unlist(strsplit(input,""))) #split and convert to numeric

acc=c()
for(i in 1:length(input)){ #iterate over each input
  if(i<length(input)){ #if you aren't at the last element...
    if(input[i]==input[i+1]){ #...compare it to the next element...
      acc=c(acc,input[i])#add to vector if it matches
    }
  }else{#...otherwise if you're at the last element...
    if(input[i]==input[1]){#...compare it to the first element
      acc=c(acc,input[i])#add to vector if it matches
    }
  }
}

print(paste("Part 1:",sum(acc)))
