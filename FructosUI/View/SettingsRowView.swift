//
//  SettingsRowView.swift
//  FructosUI
//
//  Created by Abduqodir's MacPro on 2022/06/08.
//

import SwiftUI

struct SettingsRowView: View {
  //MARK: - Properties
  
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  
  //MARK: - Body
  var body: some View {
    VStack {
      Divider().padding(.vertical, 4)
      
      HStack {
        Text(name).foregroundColor(.gray)
        Spacer()
        if content != nil {
          Text(content!)
        } else if linkLabel != nil && linkDestination != nil {
          Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
          Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
        } else {
          EmptyView()
        }
      }
    }
  }
}

//MARK: - Preview
struct SettingsRowView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SettingsRowView(name: "Developer", content: "Kodirbek")
        .previewLayout(.fixed(width: 375, height: 60))
      .padding()
      
      SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
  }
}
