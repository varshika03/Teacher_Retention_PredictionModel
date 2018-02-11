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

with open('C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\TrainedModelUsingLogReg.pkl', 'rb') as fid:
    lr = p.load(fid)

with open('C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\TrainedModelUsingSVMLinear.pkl', 'rb') as fid:
    svm_linear = p.load(fid)

with open('C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\TrainedModelUsingSVMPoly.pkl', 'rb') as fid:
    svm_poly= p.load(fid)

with open('C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\TrainedRandomForest.pkl', 'rb') as fid:
    rforest= p.load(fid)

    
data = pd.read_csv("C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\testdata.csv")
test=data.tail(1)
test_features = test[["Age","Experience","Qualification","Subjects Taught","Gender","Marital Status","Salary","Attendance","Work Satisfaction","Migration"]].values
predictions_tree=my_tree.predict(test_features)
predictions_lr=lr.predict(test_features)
predictions_svm_linear=svm_linear.predict(test_features)
predictions_svm_poly=svm_poly.predict(test_features)
predictions_rforest=rforest.predict(test_features)
print(predictions_tree)
print(predictions_lr)
print(predictions_svm_linear)
print(predictions_svm_poly)
print(predictions_rforest)
