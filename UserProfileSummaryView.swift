//
//  ProfileSummaryview.swift
//  SwiftUIPractice
//
//  Created by Sarfaraz on 05/01/26.
//


import SwiftUI

struct UserProfileSummaryView: View {

    let user: User

    var body: some View {
        VStack(spacing: 16) {
            Text("Profile Summary")
                .font(.largeTitle)
                .bold()

            Text("User Name: \(user.name)")
            Text("User Age: \(user.age)")
            Text("User Email: \(user.email)")
            Text("Dark Theme: \(user.isDarkTheme ? "Enabled" : "Disabled")")
        }
        .padding()
    }
}

#Preview {
    UserProfileSummaryView(
        user: User(
            name: "Babu",
            email: "nagachaitanyababusiga@gmail.com",
            age: 50,
            isDarkTheme: true
        )
    )
}
