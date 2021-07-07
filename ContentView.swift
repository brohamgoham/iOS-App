//
//  ContentView.swift
//  MohamApp
//
//  Created by Mohammed Abuelmaali on 7/7/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var text: String
    let stories = ["story1", "story2", "story3", "story1", "story2", "story3",]
    
    let facebookBlue = UIColor(red: 23/255.0, green: 200/255.0, blue: 242/255.0, alpha: 1)
    var body: some View {
        VStack {
            HStack{
                Text("mohamz Black Web")
                    .font(.system(size: 28, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                Spacer()
                Image(systemName: "bolt.horizontal.circle")
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
            TextField("Search..", text: $text)
                .padding(7)
                .background(Color(.systemGray6))
                .cornerRadius(13)
                .padding(.horizontal, 15)
            ZStack{
                Color(.secondarySystemBackground)
                ScrollView(.vertical) {
                    VStack {
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 3) {
                                ForEach(stories, id: \.self) { name in
                                    Image(name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 140, height: 140, alignment: .center)
                                        .background(Color.gray)
                                        .clipped()
                                }
                            }
                            .padding()
                        }
                        BlackMarket()
                        Spacer()
                        
                        
                    }
                }
            }
            Spacer()
        }
    }
}
struct BlackMarket: View {
    var body: some View {
        Text("Welcome to My Black Web ")
        VStack {
            HStack {
                Image("story3")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack {
                    Text("Hello I am MohamGoHam, the Mind")
                    Text("I founded Mohamz Black Web to")
                    
                }
                Spacer()

            }
            HStack {
                
            }
            HStack {
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
