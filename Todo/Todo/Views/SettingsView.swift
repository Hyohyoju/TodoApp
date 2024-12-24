//
//  SettingsView.swift
//  Todo
//
//  Created by 이효주 on 12/23/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                // MARK: - FORM
                
                Form {
                    // MARK: - SECTION 3
                    
                    Section(header: Text("Follow me on social media")) {
                        FormRowLinkView(icon: "globe", color: .pink, text: "GitHub", link: "https://github.com/Hyohyoju")
                        FormRowLinkView(icon: "link", color: .blue, text: "velog 개발 블로그", link: "https://velog.io/@julie08051/posts")
                    }
                    .padding(.vertical, 1)
                    
                    // MARK: SECTION 4
                    
                    Section (header: Text("앱 관련 정보")){
                        FormRowStaticView(icon: "gear", firstText: "어플리케이션", secondText: "Todo")
                        FormRowStaticView(icon: "checkmark.seal", firstText: "상호성", secondText: "iPhone, iPad")
                        FormRowStaticView(icon: "keyboard", firstText: "개발자", secondText: "이효주")
                        FormRowStaticView(icon: "flag", firstText: "버전", secondText: "1.0.0")
                    } //: SECTION 4
                    .padding(.vertical, 1)
                } //: FORM
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
                
                // MARK: - FOOTER
                
                Text("효쥬얌이 만들었음♡")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .padding(.top, 6)
                    .padding(.bottom, 8)
                    .foregroundColor(Color.secondary)
            } //: VSTACK
            .navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
            })
            .navigationBarTitle("Settings", displayMode: .inline)
            .background(Color("ColorBackground")).edgesIgnoringSafeArea([.leading, .bottom, .trailing])
        }
    } //: NAVIGATION
}

#Preview {
    SettingsView()
}
