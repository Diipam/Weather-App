//
//  Shapes.swift
//  WeatherApp
//
//  Created by Smart Solar Nepal on 01/09/2023.
//

import SwiftUI

struct Arc : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX - 1, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX + 1, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX + 1, y: rect.maxY + 1))
        path.addLine(to: CGPoint(x: rect.minX - 1, y: rect.maxY + 1))

        return path
    }
}

struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.38156*height))
        path.addCurve(to: CGPoint(x: 0.03465*width, y: 0.03132*height), control1: CGPoint(x: 0, y: 0.18219*height), control2: CGPoint(x: 0, y: 0.08251*height))
        path.addCurve(to: CGPoint(x: 0.22437*width, y: 0.05012*height), control1: CGPoint(x: 0.0693*width, y: -0.01986*height), control2: CGPoint(x: 0.12099*width, y: 0.00347*height))
        path.addLine(to: CGPoint(x: 0.89787*width, y: 0.35407*height))
        path.addCurve(to: CGPoint(x: 0.9857*width, y: 0.42129*height), control1: CGPoint(x: 0.94689*width, y: 0.3762*height), control2: CGPoint(x: 0.9714*width, y: 0.38726*height))
        path.addCurve(to: CGPoint(x: width, y: 0.59713*height), control1: CGPoint(x: width, y: 0.45532*height), control2: CGPoint(x: width, y: 0.50259*height))
        path.addLine(to: CGPoint(x: width, y: 0.75*height))
        path.addCurve(to: CGPoint(x: 0.98047*width, y: 0.96339*height), control1: CGPoint(x: width, y: 0.86785*height), control2: CGPoint(x: width, y: 0.92678*height))
        path.addCurve(to: CGPoint(x: 0.86667*width, y: height), control1: CGPoint(x: 0.96095*width, y: height), control2: CGPoint(x: 0.92952*width, y: height))
        path.addLine(to: CGPoint(x: 0.13333*width, y: height))
        path.addCurve(to: CGPoint(x: 0.01953*width, y: 0.96339*height), control1: CGPoint(x: 0.07048*width, y: height), control2: CGPoint(x: 0.03905*width, y: height))
        path.addCurve(to: CGPoint(x: 0, y: 0.75*height), control1: CGPoint(x: 0, y: 0.92678*height), control2: CGPoint(x: 0, y: 0.86785*height))
        path.addLine(to: CGPoint(x: 0, y: 0.38156*height))
        path.closeSubpath()
        return path
    }
}
