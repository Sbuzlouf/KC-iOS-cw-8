//
//  ContentView.swift
//  MyDiary
//
//  Created by Sumaya Buzlouf on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let colors = [Color.indigo, Color.blue, Color.cyan, Color.mint]
    
    @State var notes = ""
    @State var selected : Color
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Chose your fav colour")
                    .font(.system(size: 30))
                    .padding()
                
                HStack {
                    ForEach(colors, id:\.self){ color in
        
                            Circle()
                                .fill(color)
                                .frame(width: 80, height: 80)
                                .onTapGesture {
                                    selected = color
                                }
                    }
                }.padding()
                
                Text("Spill it")
                    .font(.system(size: 25))
                
                TextField("here!", text: $notes)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: SecondView(myC: selected, myN: notes)) {
                    Text("Save")
                        .font(.system(size: 30))
                        .frame(width: 180, height: 60)
                        .background(.green)
                        .cornerRadius(15)
                }
            }.navigationTitle("Some tea :)")
                .accentColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selected: .indigo)
    }
}
