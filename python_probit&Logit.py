import pandas as pd
import statsmodels.api as sm
from sklearn.metrics import roc_curve, auc
import matplotlib.pyplot as plt

# Load data
mydata = pd.read_excel("UniversalBank.xlsx")

# Prepare data for modeling
X = sm.add_constant(mydata[['Income', 'Family']])  # Add constant for intercept
y = mydata['Personal_Loan']

# Fit Probit model
probit_model = sm.Probit(y, X).fit()
print(probit_model.summary())

logit_model = sm.Logit(y, X).fit()
print(logit_model.summary())

# Plot ROC curves
fpr_probit, tpr_probit, _ = roc_curve(y, probit_model.predict(X))
fpr_logit, tpr_logit, _ = roc_curve(y, logit_model.predict(X))

plt.figure(figsize=(10, 7))
plt.plot(fpr_logit, tpr_logit, color='blue', label=f'Logit Model (AUC = {auc(fpr_logit, tpr_logit):.2f})')
plt.plot(fpr_probit, tpr_probit, color='red', label=f'Probit Model (AUC = {auc(fpr_probit, tpr_probit):.2f})')

plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate')
plt.title('ROC Curves for Probit and Logit Models')
plt.legend(loc='lower right')
plt.show()