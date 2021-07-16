//
//  PaperItem.swift
//  Papiers
//
//  Created by Yichen Xu on 2021/7/16.
//

import SwiftUI

struct PaperItem: View {
    var paper: Paper
    
    @Binding var selectedId: Int?
    
    var selected: Bool {
        if let someSelected = selectedId {
            return paper.id == someSelected
        } else {
            return false
        }
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text(paper.title)
                    .font(.headline)
                
                Text(paper.authorList)
                    .font(.caption)
                
                Text("\(paper.venue), \(paper.year)")
                    .font(.caption)
            }
            Spacer()
        }
        .padding(10)
        .contentShape(Rectangle())
        .onTapGesture {
            selectedId = paper.id
        }
        .background(selected ? Color.gray.opacity(0.1) : Color.clear)
    }
}

struct PaperItem_Previews: PreviewProvider {
    static var previews: some View {
        PaperItem(paper: papers[1], selectedId: .constant(nil))
    }
}
