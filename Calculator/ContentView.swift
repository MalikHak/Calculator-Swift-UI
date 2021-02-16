//
//  ContentView.swift
//  Calculator
//
//  Created by Faisal Hakim on 2/10/21.
//

import SwiftUI


struct ContentView: View {
    
    let buttons = [
    ["7","8","9","X"],
    ["4","5","6","X"],
    ["1","2","3","X"],
    ["0",".",".","X"]
    ] 
    var body: some View {
        
        ZStack(alignment: .bottom){
            Color.black
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
            VStack(spacing:16){
            
            HStack{
            Spacer()
                Text("32").foregroundColor(.white)
                    .font(.system(size:64))
                
            }.padding()
            
            ForEach(buttons, id:\.self){row in
            HStack{
                ForEach(row, id: \.self){button in
   
                    Text(button).font(.system(size:32)).frame(width:80,height:80)
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(40) 
                }
                
            }
            
            }
            }     
        }.padding(.bottom)
        }}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


