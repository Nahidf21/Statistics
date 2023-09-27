import pandas as pd
import statsmodels.api as sm

# Read the Excel file
mydata = pd.read_excel("UniversalBank.xlsx")

# Define the independent variables and add a constant (for intercept)
X_probit = sm.add_constant(mydata[['Income', 'Family']])
y_probit = mydata['Personal_Loan']

# Fit the Probit model
probit_model = sm.Probit(y_probit, X_probit).fit()
print(probit_model.summary())

# Define the independent variables and add a constant (for intercept)
X_logit = sm.add_constant(mydata[['Income', 'Family']])
y_logit = mydata['Personal_Loan']

# Fit the Logit model
logit_model = sm.Logit(y_logit, X_logit).fit()
print(logit_model.summary())

# Extract coefficients from the Probit model
Intercept_Probit = probit_model.params['const']
IncomeCoeff_Probit = probit_model.params['Income']
FamilyCoeff_Probit = probit_model.params['Family']

# Extract coefficients from the Logit model
Intercept_Logit = logit_model.params['const']
IncomeCoeff_Logit = logit_model.params['Income']
FamilyCoeff_Logit = logit_model.params['Family']

# Print the coefficients
print("\nProbit Model Coefficients:")
print("Intercept:", Intercept_Probit)
print("Income:", IncomeCoeff_Probit)
print("Family:", FamilyCoeff_Probit)

print("\nLogit Model Coefficients:")
print("Intercept:", Intercept_Logit)
print("Income:", IncomeCoeff_Logit)
print("Family:", FamilyCoeff_Logit)

income = 1
family = 1

personal_loan = Intercept_Probit + IncomeCoeff_Probit * income + family * FamilyCoeff_Probit
print("\nProbit:", personal_loan)
