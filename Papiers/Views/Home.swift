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
                    Text("All Papers")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                        .cornerRadius(5.0)
                        .padding(5)
                }
                
                Text("Collections")
                    .font(.headline)
                    .fontWeight(.light)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                ForEach(collections, id: \.self) { collection in
                    
                    NavigationLink(destination: PaperList()) {
                        Text(collection)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                            .cornerRadius(5.0)
                            .padding(5)
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
                            .font(.subheadline)
                            .foregroundColor(.primary)
                            .cornerRadius(5.0)
                            .padding(5)
                    }
                }

                NavigationLink(destination: PaperList()) {
                    HStack {
                        Image(systemName: "square.and.arrow.down")
                        
                        Text("Import")
                            .font(.subheadline)
                            .foregroundColor(.primary)
                            .cornerRadius(5.0)
                            .padding(5)
                    }
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
