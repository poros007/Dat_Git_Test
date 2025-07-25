#Αφού φορτώσετε το ενσωματωμένο σύνολο της R mtcars στη μεταβλητή  dat με την 
#εντολή:dat=mtcars
#και αφού τρέξετε ένα δένδρο ιεραρχικής ομαδοποίησης με την εντολή hclust, 
#να επιλέξετε ένα αριθμό ομάδων και να σχεδιάσετε το αντίστοιχο δένδρο μαζί 
#με τις ομάδες που αποφασίσατε να κρατήσετε. Στείλτε την αντίστοιχη εικόνα.

dat=mtcars
#show(dat)

pmatrix = scale(dat)

d = dist(pmatrix)

c = hclust(d, method="ward.D2")

plot(c)

groups <- cutree(c, k=4)
rect.hclust(c, k=4)

print(groups)

table(mtcars$cyl, groups)

