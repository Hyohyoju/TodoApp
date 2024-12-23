//
//  EmptyListView.swift
//  Todo
//
//  Created by 이효주 on 12/23/24.
//

import SwiftUI

struct EmptyListView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimated: Bool = false
    
    let images: [String] = [
        "illustration-no1",
        "illustration-no1",
        "illustration-no3"
    ]
    
    let tips: [String] = [
        "시간을 효율적으로 쓰세요.",
        "중요한 건 속도가 아닌 방향입니다.",
        "꺼리는 일부터 먼저 하세요.",
        "일이 끝나고 적절히 쉬세요.",
        "할 일을 미리 적어두세요."
    ]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 20) {
                Image("\(images.randomElement() ?? self.images[0])")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: .center)
                    .layoutPriority(1)
                
                Text("\(tips.randomElement() ?? self.tips[0])")
                    .layoutPriority(0.5)
                    .font(.system(.headline, design: .rounded))
            } //: VSTACK
            .padding(.horizontal)
            .opacity(isAnimated ? 1 : 0)
            .offset(y: isAnimated ? 0 : -50)
            .onAppear {
                withAnimation(.easeOut(duration: 1.5)) {
                    self.isAnimated.toggle()
                }
            }
        } //: ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    EmptyListView()
}
