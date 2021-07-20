//
//  Home.swift
//  Papiers
//
//  Created by Yichen Xu on 2021/7/16.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List {
                Text("Papiers")
                    .font(Font.custom("SF Mono", size: 16))
                    .frame(maxWidth: .infinity, alignment: .center)

                NavigationLink(destination: PaperList()) {
                    HStack {
                        Image(systemName: "tray.2")
                        
                        Text("All Papers")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.primary)
                            .cornerRadius(5.0)
                    }
                    .padding(8)
                }
                
                Text("Collections")
                    .font(.headline)
                    .fontWeight(.light)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                ForEach(collections, id: \.self) { collection in
                    NavigationLink(destination: PaperList()) {
                        HStack {
                            Image(systemName: "tray.full")
                            
                            Text(collection)
                                .font(.headline)
                                .fontWeight(.regular)
                                .foregroundColor(.primary)
                                .cornerRadius(5.0)
                        }
                        .padding(8)
                    }
                }
                
                Text("Tools")
                    .font(.headline)
                    .fontWeight(.light)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                NavigationLink(destination: PaperList()) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.primary)
                            .cornerRadius(5.0)
                    }
                    .padding(8)
                }

                NavigationLink(destination: PaperList()) {
                    HStack {
                        Image(systemName: "square.and.arrow.down")
                        
                        Text("Import")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.primary)
                            .cornerRadius(5.0)
                    }
                    .padding(8)
                }
            }
            .frame(minWidth: 250)
            .navigationTitle("Papiers")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
