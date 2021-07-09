import numpy
import argparse
import pickle

def equation(x1,x2,x3):
  return x1 + x2 + x3

#performing math
result_equation = equation(x, y, z)

#saving results
file_name = 'result_' + str(x) + '_' + str(y) + '_' + str(z)
outfile   = open(file_name,'wb')
pickle.dump([result_equation, x, y, z], outfile)
outfile.close()
