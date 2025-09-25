"""A Simple Loan Approval Simulation"""

import random;
import from byllm.llm { Model }

# Use Gemini for reasoning feedback
glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

"""Provide AI-based feedback if loan is rejected"""
def give_feedback(income: int, loan_amount: int, credit_score: int) -> str by llm();

walker LoanApproval {
    has income: int;
    has loan_amount: int;
    has credit_score: int;

    can apply with `root entry;
    can evaluate with decision entry;
}

node decision {
    has approved: bool = False;
}

# Main entry point
with entry:__main__ {
    root spawn LoanApproval(5000, 20000, 650);   # Example applicant
    root spawn LoanApproval(3000, 10000, 550);   # Another applicant
    root spawn LoanApproval(8000, 5000, 720);    # Strong applicant
}

impl LoanApproval.apply {
    if not [root --> (`?decision)] {
        next = root ++> decision(False);
    } else {
        next = [root --> (`?decision)];
    }
    visit next;
}

impl LoanApproval.evaluate {
    if [-->] {
        visit [-->];
    } else {
        # Simple rule-based approval
        if self.income > 4000 and self.credit_score >= 650 and self.loan_amount < self.income * 4 {
            print("✅ Loan Approved!");
            disengage;
        } else {
            print("❌ Loan Rejected.");
            print(give_feedback(self.income, self.loan_amount, self.credit_score));
            here ++> decision(False);
        }
    }
}
