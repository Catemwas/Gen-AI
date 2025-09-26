# Loan Approval Simulator (Jac + AI)
## 📌Description
A loan approval simulation program written in Jac that uses Google Gemini for AI-based reasoning feedback.
It mimics how banks decide loan approvals using rules + AI feedback.

## 🚀Features

✅Applicants submit income, loan request, and credit score

✅Rule-based loan decision (approve/reject)

✅AI feedback (via Gemini) when loans are rejected

✅Multiple applicants supported in one run

## 🪛Installation
1.Install Python3.12 or higher

2.Set up a virtual environment:
```
python -m venv jac-env
source jac-env/bin/activate   # Linux/Mac
jac-env\Scripts\activate      # Windows
```

3.Install Jac and byLLM:
```
pip install jaclang byllm

```

4. Set up your GEMINI API key
```
export GEMINI_API_KEY="your_api_key_here"   # Linux/Mac
setx GEMINI_API_KEY "your_api_key_here"     # Windows
```

## ▶️Running the program
```
jac serve loan_approval.jac
```
## 📊Example Output
```
INFO - DATABASE_HOST is not available! Using LocalDB...
WARNING - Can't find NodeArchetype turn. Defaulting to base NodeArchetype.
WARNING - Can't find NodeArchetype transaction. Defaulting to base NodeArchetype.
❌ Loan Rejected.
Based on your income of $5000, requested loan amount of $20000, and credit score of 650, the loan application is likely to be rejected.

**Reasons for Rejection:**

*   **High Loan-to-Income Ratio:** The loan amount is significantly higher than your income. Lenders typically prefer a lower loan-to-income ratio to ensure you can comfortably manage repayments.
*   **Credit Score:** A credit score of 650 is generally considered fair or borderline. While it's not a very poor score, it's not strong enough to offset the risk posed by the high loan-to-income ratio. Lenders often prefer scores above 680, and ideally 700 or higher, for larger loan amounts.

**Recommendations:**

*   **Increase Income:** Explore ways to increase your income, such as a new job, a promotion, or a side hustle.
*   **Reduce Loan Amount:** Consider applying for a smaller loan amount that is more manageable based on your current income.
*   **Improve Credit Score:** Focus on improving your credit score by:
    *   Paying bills on time.
    *   Reducing credit card debt.
    *   Avoiding opening new credit accounts unnecessarily.
    *   Checking your credit report for errors and disputing them.
*   **Consider a Co-signer:** If possible, consider applying with a co-signer who has a stronger credit history and higher income.
*   **Explore Alternative Lenders:** Research credit unions or online lenders that may be more willing to work with borrowers who have fair credit or higher loan-to-income ratios, but be aware that these lenders may charge higher interest rates.

❌ Loan Rejected.
Based on your income of $3000, loan amount request of $10000, and credit score of 550, the loan is likely to be rejected.  A credit score of 550 is considered poor, and the loan amount is significantly higher than your monthly income.  Consider improving your credit score and/or reducing the loan amount requested. You could also explore options like a co-signer or secured loan to increase your chances of approval.

✅ Loan Approved!
INFO:     Started server process [12268]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
INFO:     Shutting down
INFO:     Waiting for application shutdown.
INFO:     Application shutdown complete.
INFO:     Finished server process [12268]

```
## 🎊Contributors 
[Catherine Njeri](https://github.com/Catemwas/Gen-AI)
