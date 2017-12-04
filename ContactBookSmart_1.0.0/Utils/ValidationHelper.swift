//
//  ValidationHelper.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/25/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation

class ValidationHelper {
    static func isValidEmail(strEmail : String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let email = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return email.evaluate(with: strEmail)
    }
    
    static func isValidPhoneNumber(strPhone : String) -> Bool {
        let phoneRegEx = "[0-9]{9,10}$"
        
        let phone = NSPredicate(format:"SELF MATCHES %@", phoneRegEx)
        return phone.evaluate(with: strPhone)
    }
    
    static func isValidNumberPassport(strPassport : String) -> Bool {
        let passportRegEx = "[A-Z0-9a-z]{8,20}"
        let passport = NSPredicate(format:"SELF MATCHES %@", passportRegEx)
        return passport.evaluate(with:strPassport)
    }
    
    static func isValidOTP(strOtp : String) -> Bool {
        let otpRegEx = "[0-9]{5,}"
        let otp = NSPredicate(format:"SELF MATCHES %@", otpRegEx)
        return otp.evaluate(with:strOtp)
    }
    
    static func isValidTextNoNumber(text : String, min : Int, max : Int) -> Bool {
        let txtRegEx = "[A-Za-z ]{\(min),\(max)}"
        let txt = NSPredicate(format:"SELF MATCHES %@", txtRegEx)
        return txt.evaluate(with:text)
    }
    
    static func isValidPassword(strPassword : String) -> Bool {
        let passwordRegEx = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[a-z0-9A-Z]{8,16}$"
        let password = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
        return password.evaluate(with:strPassword)
        
    }
}
