//
//  SettingsView.swift
//  FructosUI
//
//  Created by Abduqodir's MacPro on 2022/06/08.
//

import SwiftUI

struct SettingsView: View {
  //MARK: - Properties
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  //MARK: - Body
    var body: some View {
      NavigationView {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(spacing: 20) {
            //MARK: - Section 1
            GroupBox(
              label:
                SettingsLabelView(labelText: "Fructos", labelImage: "info.circle")
            ) {
              Divider().padding(.vertical, 4)
              
              HStack(alignment: .center, spacing: 10) {
                Image("logo")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 80, height: 80)
                  .cornerRadius(9)
                
                Text("Most fruits are naturally low in fat, sodium and calories. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                  .font(.footnote)
              }
            }
            
            //MARK: - Section 2
            
            GroupBox(
              label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
            ) {
              Divider().padding(.vertical, 4)
              
              Text("If you wish, you can restart the application by toggling the switch in this box. This way it starts the onboarding process and you will see the welcome screen again.")
                .padding(.vertical, 8)
                .frame(minHeight: 60)
                .layoutPriority(1)
                .font(.footnote)
                .multilineTextAlignment(.leading)
              
              Toggle(isOn: $isOnboarding) {
                if isOnboarding {
                  Text("Restarted".uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                } else {
                  Text("Restart".uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                }
              }
              .padding()
              .background(
                Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
              )
            }
            
            //MARK: - Section 3
            
            GroupBox(
              label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"))
            {
              SettingsRowView(name: "Developer", content: "Kodirbek")
              SettingsRowView(name: "Designer", content: "Robert Petras")
              SettingsRowView(name: "Compatibility", content: "iOS 15")
              SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
              SettingsRowView(name: "Facebook", linkLabel: "Kodirbek Khamzaev", linkDestination: "facebook.com/kodirbekkhamzaev")
              SettingsRowView(name: "SwiftUI", content: "2.0")
              SettingsRowView(name: "Version", content: "1.1.0")
              }
            }//: GroupBox
            
          }//: VStack
          .navigationBarTitle(Text("Settings"), displayMode: .large)
          .navigationBarItems(
            trailing:
              Button(action: {
                presentationMode.wrappedValue.dismiss()
              }) {
                Image(systemName: "xmark")
              }
          )
          .padding()
        }//: ScrollView
      }//: Navigation
    }


//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
      SettingsView()
        .preferredColorScheme(.dark)
    }
}