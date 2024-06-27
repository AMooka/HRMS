class EmployeeMailer < ApplicationMailer
    default from: 'no-reply@example.com'


    def notify_employee(employee)
       @employee = employee
       mail(to: @employee.email, subject: "welcome to the system")
    end
end
