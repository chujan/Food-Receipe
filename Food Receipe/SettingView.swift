//
//  SettingView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 20/06/2022.
//

import SwiftUI


struct SettingView: View {
    @Binding var isPresented: Bool
    @State private var selection = 1
    @State private var email = ""
    var body: some View {
        NavigationView{
            Form {
                Picker(selection: $selection, label: Text("Favorite Genre")) {
                    Text("Action").tag(1)
                    Text("Comedy").tag(2)
                    Text("Comedy").tag(2)
                    Text("Comedy").tag(2)
                }
                Section(header: Text("Email")) {
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action:{
                    isPresented.toggle()
                    
                }) {
                 Text("Save")
                    
                }
                
            }.navigationTitle("Settings")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(isPresented: Binding<Bool>.constant(false))
    }
}
