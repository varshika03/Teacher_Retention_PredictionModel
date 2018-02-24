import pandas as pd
import numpy as np
import sklearn as sk
from sklearn import tree
from sklearn import linear_model
from sklearn import metrics
from sklearn.svm import SVC
import pickle as p

with open('C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\TrainedModelUsingDecisiongTree.pkl', 'rb') as fid:
    my_tree = p.load(fid)
    
data = pd.read_csv("C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\testdata.csv")
test=data.tail(1)
test_features = test[["Age","Experience","Qualification","Subjects Taught","Gender","Marital Status","Salary","Attendance","Work Satisfaction","Migration"]].values
my_predictions=my_tree.predict(test_features)
print(my_predictions)