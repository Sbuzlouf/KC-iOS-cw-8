//
//  SecondView.swift
//  MyDiary
//
//  Created by Sumaya Buzlouf on 20/08/2022.
//

import SwiftUI

struct SecondView: View {
    
    var myC : Color
    var myN : String
    
    var body: some View {
        ZStack{
            myC.ignoresSafeArea()
            
            Text(myN)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(myC: .white, myN: "")
    }
}
