//
//  ViewModifierPractice.swift
//  PracticeofSwiftUIAdvanced
//
//  Created by 沈清昊 on 8/9/23.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    
    func withDefaultButtonFormatting(backgroundColor: Color = .blue) -> some View {
        
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
        
    }
    
}

struct ViewModifierPractice: View {
    var body: some View {
        VStack(spacing: 10){
            Text("Hello World!")
                .font(.headline)
                .withDefaultButtonFormatting()
//                .modifier(DefaultButtonViewModifier())
                
            
            Text("Hello Everyone!")
                .font(.subheadline)
                .modifier(DefaultButtonViewModifier(backgroundColor: .orange))

            
            Text("Hello !!!")
                .font(.title)
                .modifier(DefaultButtonViewModifier(backgroundColor: .pink))
        }
        .padding()
    }
}

struct ViewModifierPractice_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierPractice()
    }
}
