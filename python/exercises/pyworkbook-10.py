import numpy as np

a = raw_input("Please enter a = ")
b = raw_input("Please enter b = ")
sum = float(a) + float(b)
difference = float(b) - float(a)
product = float(a)*float(b)
quo = float(a)/float(b)
rem = float(a)%float(b)
exp = float(a) ** float(b)
log = np.log(float(a))

print "sum of a and b = "+str(sum)
print "difference of b and a = "+str(difference)
print "product of a and b = "+str(product)
print "quotient when a is divided by b = "+str(quo)
print "reminder when a is divided by b = "+str(rem)
print "base 10 logarithm of a = "+str(log)
print "a elevated to its b power = "+str(exp)
