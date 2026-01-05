//
//  AClearButtonAndStyling.swift
//  SwiftUIPractice
//
//  Created by Sarfaraz on 05/01/26.
//

import SwiftUI

struct AClearButtonAndStyling: View {
    @State private var count: Int = 0;
    
    //Combing two string important syntax
    var styledText: AttributedString {
        var text = AttributedString("The count is \(count)")
        if let range = text.range(of: "The count is "){
            text[range].foregroundColor = .black
        }
        if let range = text.range(of: "\(count)"){
            text[range].foregroundColor = .red
        }
        return text
    }
    
    var body: some View {
        VStack(spacing: 10){
            
            Text(styledText)
            .padding(20)
            .font(.largeTitle)
            .italic()

            Button("Click Me") {
                count += 1
            }
            .buttonStyle(.borderedProminent)

        }

    }
}

#Preview {
    AClearButtonAndStyling()
}
