# Titanic-Classifier

Learning algorithm using a logistic regression classifier to predict whether or not a passenger survived.
Uses a matrix of passengers, each represented by a feature vector, which is normalized and stored in SFPPSAE_normMat.mat.
  (SFPPSAE -  Sex
              Fare
              Parch (# parents/children aboard)
              Pclass (Passenger class; 1st, 2nd, 3rd)
              Sibsp (# siblings/spouses aboard)
              Age
              Embarked City (Southampton = 2, Queenstown = 1, Cherbourg = 0)
  )
Uses gradient descent (gradDescent.m) to find optimal theta vector (weights of each feature), which is then fed into an algorithm that
  predicts (threshold: 0.5).
Specify regularization parameter, lambda, in gradDescent.m.
