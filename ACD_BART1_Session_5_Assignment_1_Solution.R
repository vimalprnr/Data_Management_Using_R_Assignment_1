States <- rownames(USArrests)
States_vect <- paste(States,collapse= ",")
States_vect <- tolower(States_vect)
vow<- c("a","e","i","o","u")
count <- function(x, pattern, split)
{
    unlist(lapply(strsplit(x, split),function(z) na.omit(length(grep(pattern, z)))))
}
count_vow <- 0
for(i in 1:length(vow))
{
  count_vow[i] <- count(States_vect,vow[i],",")
}
names(count_vow) <- vow
#count_vow will have count of each vowels.
count_vow
#barplot will give distribution of vowels.
barplot(count_vow)
