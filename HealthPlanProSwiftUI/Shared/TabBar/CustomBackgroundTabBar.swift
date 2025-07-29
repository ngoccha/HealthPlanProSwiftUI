//
//  CustomTabBar.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/28/25.
//

import UIKit

func createBackgroundImage() -> UIImage {
    let height: CGFloat = 80
    let width: CGFloat = UIScreen.main.bounds.width
    let cornerRadius: CGFloat = 25
    let size = CGSize(width: width, height: height)

    let renderer = UIGraphicsImageRenderer(size: size)
    let image = renderer.image { context in
        let path = UIBezierPath(
            roundedRect: CGRect(origin: .zero, size: size),
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
        )

        UIColor.white.setFill()
        path.fill()
    }

    return image
}
