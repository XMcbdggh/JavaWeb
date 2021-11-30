package com;

/**
 * @author 25090
 */
public class Circle extends Shape{
    private double radius;
    private final static double PI=3.1415;
    public Circle(double radius){
        this.radius=radius;
    }
    @Override
    public double getArea() {
        return this.radius*this.radius*PI;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
}
