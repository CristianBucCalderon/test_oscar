import numpy
import argparse
import pickle

CLI = argparse.ArgumentParser()
CLI.add_argument("--machine", type = str, default = 'x7')
CLI.add_argument("--method", type = str, default = 'ddm')
CLI.add_argument("--nburnin", type = int, default = 0)

args = CLI.parse_args()
print(args)

x =args.parameter1 
y =args.parameter2
z =args.parameter3

def equation(x1,x2,x3):
  return x1 + x2 + x3

#performing math
result_equation = equation(x, y, z)

#saving results
file_name = 'result_' + str(x) + '_' + str(y) + '_' + str(z)
outfile   = open(file_name,'wb')
pickle.dump([result_equation, x, y, z], outfile)
outfile.close()
