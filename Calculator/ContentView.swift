//
//  ContentView.swift
//  Calc1
//
//  Created by Faisal Hakim on 2/16/21.
//

import SwiftUI

struct ContentView: View {
    
    let buttonArray = [
        ["7","8","9","X"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        ["0",".","0","/"]

    ]
    var body: some View {
       
        ZStack(alignment:.bottom){
                        Color.black
            Color.black.edgesIgnoringSafeArea(.all)
           
            VStack{
                
                
                //Calculator Result Area
            HStack{
             Spacer()
                Text("990").foregroundColor(.white).font(.system(size:70))
            }.padding()
     
            
            //Calculator Buttons Area
                
            ForEach(buttonArray,id:\.self){ row in
                
        HStack{
            ForEach(row,id: \.self){button in
                Text(button).font(.system(size:32)).frame(width:80,height:80).foregroundColor(.white).background(Color.yellow).cornerRadius(40)
                    .padding(4)
                    
            
            }
        }
                
            }
        }.padding(.bottom)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


