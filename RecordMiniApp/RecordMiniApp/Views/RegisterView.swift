//
//  RegisterView.swift
//  RecordMiniApp
//
//  Created by Jamorn Suttipong on 8/9/2567 BE.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var emailAddress = ""
    @State private var password = ""
    @State private var isShowPassword = false
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("Create an account")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Already have an account?")
                            .font(.subheadline)
                        NavigationLink(destination: HomeView()) {
                            Text("Login")
                                .foregroundStyle(.purple)
                                .underline()
                        }
                    }
                }
                .padding(.bottom, 50)
                
                VStack(alignment: .trailing, spacing: 20) {
                    TextField("Email address", text: $emailAddress)
                        .padding()
                        .frame(width: 340, height: 64)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    HStack {
                        if isShowPassword {
                            TextField("Password", text: $password)
                        } else {
                            SecureField("Password", text: $password)
                        }
                        Button {
                            isShowPassword.toggle()
                        } label: {
                            Image(systemName: isShowPassword ? "eye" : "eye.slash")
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding()
                    .frame(width: 340, height: 64)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Text("Recovery Password")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                
                Button {
                    
                } label: {
                    Text("Continue")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 340, height: 54)
                        .background(.purple)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding(.vertical)
                
                LabelledDividerView(label: "or sign up with", horizontalPadding: 10)
                
                HStack(spacing: 85) {
                    ExtractedSignUpView(imageName: "paperplane.fill")
                    ExtractedSignUpView(imageName: "apple.logo")
                    ExtractedSignUpView(imageName: "person.fill")
                }
                .padding(.vertical, 40)
                
                Spacer()
                
                Group {
                    Text("By clicking Create account you agree to Recognotes ") + 
                    Text("Terms of use ").foregroundStyle(.purple) + Text("and ") +
                    Text("Privacy policy").foregroundStyle(.purple)
                }
                .font(.footnote)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    RegisterView()
}

struct ExtractedSignUpView: View {
    
    var imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 32, height: 32)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 1.0)
                    .foregroundStyle(Color(.systemGray4))
                    .frame(width: 100, height: 56)
            }
    }
}
