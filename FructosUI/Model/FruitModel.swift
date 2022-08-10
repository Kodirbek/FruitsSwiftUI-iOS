//
//  FruitModel.swift
//  FructosUI
//
//  Created by Abduqodir's MacPro on 2022/04/08.
//

import SwiftUI

//MARK: - DataModel

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}


