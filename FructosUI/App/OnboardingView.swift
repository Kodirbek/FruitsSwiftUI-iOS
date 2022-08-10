//
//  OnboardingView.swift
//  FructosUI
//
//  Created by Abduqodir's MacPro on 2022/04/07.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Property
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {item in
                FruitCardView(fruit: item)
            }//: Loop
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
