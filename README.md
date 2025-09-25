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
export OPENAI_API_KEY="your_api_key_here"   # Linux/Mac
setx OPENAI_API_KEY "your_api_key_here"     # Windows
```

## ▶️Running the program
```
jac run loan_approval.jac
```
## 📊Example Output
```
❌ Loan Rejected.
Based on your income of $5000, loan amount of $20000, and credit score of 650, the loan is likely to be rejected.

**Here's why:**

*   **Income:** Your income might be insufficient to comfortably repay a $20000 loan. Lenders generally look for a debt-to-income ratio that indicates you can manage the payments.

*   **Loan Amount:** The loan amount is relatively high compared to your income.

*   **Credit Score:** A credit score of 650 is generally considered "fair." While not the worst, it's not ideal and may indicate a higher risk to lenders.

**Recommendations:**

*   **Increase Income:** Explore ways to increase your income, such as a second job or a promotion.

*   **Reduce Loan Amount:** Consider borrowing a smaller amount to increase your chances of approval.

*   **Improve Credit Score:** Take steps to improve your credit score, such as paying bills on time, reducing credit card balances, and checking your credit report for errors. You can also explore secured credit cards or credit-builder loans.

*   **Consider a Co-signer:** A co-signer with a strong credit history and income could improve your chances.

*   **Explore Alternative Lenders:** Some lenders specialize in loans for individuals with fair credit, but be aware that these loans may come with higher interest rates.

❌ Loan Rejected.
Based on the provided information:

**AI Feedback: Loan Rejected**

*   **Income:** Your income of $3000 may be insufficient to comfortably repay a loan of $10000. Lenders typically look for a debt-to-income ratio that demonstrates affordability.
*   **Loan Amount:** The loan amount of $10000 is relatively high compared to your stated income.
*   **Credit Score:** A credit score of 550 is considered poor. This indicates a high risk of default, making it unlikely for lenders to approve your loan application.

**Recommendations:**

*   **Improve Credit Score:** Focus on improving your credit score by paying bills on time, reducing existing debt, and avoiding new credit applications.
*   **Increase Income:** Explore opportunities to increase your income.
*   **Reduce Loan Amount:** Consider applying for a smaller loan amount that is more manageable given your income and credit profile.       
*   **Consider a Co-signer:** If possible, consider applying with a co-signer who has a stronger credit history and income.

✅ Loan Approved!

```
## 🎊Contributors 
[Catherine Njeri](https://github.com/Catemwas/Gen-AI)
