//
//  HomeView.swift
//  RecordMiniApp
//
//  Created by Jamorn Suttipong on 8/9/2567 BE.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchRecord = ""
    @State private var isSelected = false
    
    @State private var categoires: Model = .all
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                
                //navigation and avatar
                HStack {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    Image("blackCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
                .padding(.bottom, 5)
                
                //heading
                HStack {
                    Text("Recordings")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "bitcoinsign")
                        Text("150")
                            .font(.subheadline)
                    }
                    .foregroundStyle(.purple)
                    .padding()
                    .frame(height: 32)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.purple)
                    }
                    
                }
                
                //search bar
                HStack(spacing: 12) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.gray)
                    TextField("Search Recordings", text: $searchRecord)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding()
                .frame(width: 360, height: 64)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                //type tab view
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(Model.allCases) {i in
                            Text(i.rawValue)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundStyle(categoires == i ? .white : .purple)
                                .padding()
                                .frame(height: 32)
                                .background(categoires == i ? .purple : .white)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(lineWidth: 0.2)
                                        .foregroundStyle(.purple)
                                }
                                .onTapGesture {
                                    withAnimation(.snappy) {
                                        categoires = i
                                    }
                            }
                        }
                    }
                }
                .padding(.vertical)
            }
            
            //recording and upload
            VStack(alignment: .center) {
                Image(systemName: "mic.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.purple)
                    .frame(width: 250, height: 250)
                
                Spacer()
                
                HStack {
                    Image(systemName: "music.note")
                    Text("Upload File")
                }
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.purple)
                .padding()
                .frame(height: 64)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(.purple)
                }
            }
            .padding(.vertical, 50)
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView()
}
