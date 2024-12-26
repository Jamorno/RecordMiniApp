//
//  LabelledDividerView.swift
//  RecordMiniApp
//
//  Created by Jamorn Suttipong on 8/9/2567 BE.
//

import SwiftUI

struct LabelledDividerView: View {
    
    let label: String
    let horizontalPadding: CGFloat
    
    init(label: String, horizontalPadding: CGFloat) {
        self.label = label
        self.horizontalPadding = horizontalPadding
    }
    
    var body: some View {
        HStack {
            line
            
            Text(label)
                .font(.subheadline)
                .foregroundStyle(.black)
            
            line
        }
    }
    
    var line: some View {
        VStack {
            Divider()
                .background(.gray)
                .padding(.horizontal)
        }
    }
}

#Preview {
    LabelledDividerView(label: "or", horizontalPadding: 0)
}
