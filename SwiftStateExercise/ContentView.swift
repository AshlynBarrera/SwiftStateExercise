//
//  ContentView.swift
//  SwiftStateExercise
//
//  Created by Ashlyn Barrera on 2/15/23.
//

import SwiftUI

struct ContentView: View {
//1a
    @State var numOne = 0
    @State var numTwo = 2
    
    //Bonus
    @State var letterIndex = 0
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    

    
    var body: some View {
        VStack {
            
            Spacer()

            HStack {
                Text("ONE")
                Text(String(numOne))
                Button("ADD ONE", action: {
                    numOne = numOne + 1
                })
            }
            
            
            Spacer()
            
            HStack {
                Text("TWO")
                Text(String(numTwo))
                Button("Squared", action: {
                    numTwo = numTwo * numTwo
                } )
            }
            
            Spacer()
   //Bonus
            HStack {
                Text("BONUS")
                Text(String(letters[letterIndex]))
                Button( "Next Letter ", action: {
                    letterIndex = letterIndex + 1
                    while (letterIndex == 26 ){
                        letterIndex = 0
                        
                    }
                })
                
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
