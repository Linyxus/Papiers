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
    @State private var testSelected: String? = nil
    
    var body: some View {
        List {
            ForEach(papers) { paper in
                PaperItem(paper: paper, selectedId: $selected)
                    .cornerRadius(5.0)
            }
            .listRowInsets(EdgeInsets())
        }
        .listStyle(PlainListStyle())
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Menu {
                    Button(action: {}) {
                        Label("File", systemImage: "doc.badge.plus")
                    }

                    Button(action: {}) {
                        Label("Folder", systemImage: "folder.badge.plus")
                    }
                }
                label: {
                    Label("Import", systemImage: "plus")
                }
            }
            
            ToolbarItem(placement: .primaryAction) {
                Menu {
                    Button(action: {}) {
                        Label("Bibtex Entry", systemImage: "pencil")
                    }

                    Button(action: {}) {
                        Label("Citation Text", systemImage: "note.text")
                    }
                    
                    Button(action: {}) {
                        Label("File Path", systemImage: "paperclip")
                    }
                }
                label: {
                    Label("Export", systemImage: "square.and.arrow.up")
                }
            }
            
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Label("Read", systemImage: "book")
                }
            }
            
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Label("Search", systemImage: "magnifyingglass")
                }
            }
        }
    }
}

struct PaperList_Previews: PreviewProvider {
    static var previews: some View {
        PaperList()
    }
}
