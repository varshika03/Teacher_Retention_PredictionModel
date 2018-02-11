import pandas as pd
import numpy as np
import sklearn as sk
from sklearn import tree
from sklearn import linear_model
from sklearn import metrics
from sklearn.svm import SVC
import pickle as p
data = pd.read_csv("TeachersDatasetFinal.csv")
train=data[2:301]
cross=data[302:401]
test=data[402:501]
train_target = train["Likely to Leave"].values
train_features = train[["Age","Experience","Qualification","Subjects Taught","Gender","Marital Status","Salary","Attendance","Work Satisfaction","Migration"]].values
svm_model_linear = SVC(kernel = 'linear', C = 1).fit(train_features, train_target)
cross_features = cross[["Age","Experience","Qualification","Subjects Taught","Gender","Marital Status","Salary","Attendance","Work Satisfaction","Migration"]].values
my_prediction = svm_model_linear.predict(cross_features)
print(metrics.accuracy_score(cross["Likely to Leave"],my_prediction))
with open('TrainedModelUsingSVMLinear.pkl', 'wb') as fid:
    p.dump(svm_model_linear, fid) 

