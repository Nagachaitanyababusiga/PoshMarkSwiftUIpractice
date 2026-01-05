//
//  UserProfileForm.swift
//  SwiftUIPractice
//
//  Created by Sarfaraz on 05/01/26.
//

import SwiftUI

struct UserProfileForm: View {
    
    @State private var user: User = User()
    
    var body: some View{
        NavigationStack{
            Form{
                Section("User Profile Bio"){
                    TextField("Enter name: ",text: $user.name)
                        .textInputAutocapitalization(.words)
                    TextField("Enter email: ", text: $user.email)
                        .keyboardType(.emailAddress)
                }
                Section("Age Selection"){
                    Picker("Age", selection: $user.age){
                        ForEach(18...60, id: \.self){ age in
                            Text("\(age)")
                        }
                    }
                }
                Section("Preferences"){
                    Toggle("Dark Mode", isOn: $user.isDarkTheme)
                }
                
                Section("Save"){
                    NavigationLink("View Profile"){
                        UserProfileSummaryView(user: user)
                    }
                }
                
            }.navigationTitle("Profile Form")
        }.padding()
    }
    
}


#Preview {
    UserProfileForm()
}
