package expensesheetsystem

class User {

    String name
    Double initialBankBalance

    static hasMany = [expenses: Expense]

    static constraints = {
        name blank: false, unique: true
        initialBankBalance blank: false
    }

    String toString() {
        return name
    }
}

