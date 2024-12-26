//
//  LandingView.swift
//  RecordMiniApp
//
//  Created by Jamorn Suttipong on 8/9/2567 BE.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationStack {
            //title
            VStack(spacing: 20) {
                Image("titleImage")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.bottom, 30)
                Text("Transform Speech into Text Effortlessly")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .frame(width: 340)
                Text("Capture every detail with RecogNotes. Record conversations, lectures, meetings, and more, and watch as they are transcribed into accurate text instantly.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .frame(width: 330)
            }
            .padding()
    
            HStack(spacing: 20) {
                //register button
                NavigationLink(destination: RegisterView()) {
                    ExtractedDetailNavigationLinkView(title: "Register")
                }
                
                //login button
                NavigationLink(destination: HomeView()) {
                    ExtractedDetailNavigationLinkView(title: "Sign in")
                }
            }
            .padding()
        }
    }
}

#Preview {
    LandingView()
}

struct ExtractedDetailNavigationLinkView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .frame(width: 160, height: 54)
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
