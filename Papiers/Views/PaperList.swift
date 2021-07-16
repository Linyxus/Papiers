//
//  PaperList.swift
//  Papiers
//
//  Created by Yichen Xu on 2021/7/16.
//

import SwiftUI

extension NSTextField { // << workaround !!!
    open override var focusRingType: NSFocusRingType {
        get { .none }
        set { }
    }
}

struct PaperList: View {
    @State private var selected: Int? = nil
    
    var body: some View {
        List {
            ForEach(papers) { paper in
                PaperItem(paper: paper, selectedId: $selected)
                    .cornerRadius(5.0)
            }
            .listRowInsets(EdgeInsets())
        }
        .listStyle(PlainListStyle())
    }
}

struct PaperList_Previews: PreviewProvider {
    static var previews: some View {
        PaperList()
    }
}
