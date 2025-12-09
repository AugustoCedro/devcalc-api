package com.devcalc.service;

public class CalculatorService {

    public double add(double a, double b) {
        return a + b;
    }
    public double subtract(double a, double b) {
        return a - b;
    }
    public double multiply(double a, double b) {
        return a * b;
    }
    public double divide(double a, double b) {
        if(b == 0){
            throw new ArithmeticException("Divide by zero");
        }
        return a / b;
    }
}
