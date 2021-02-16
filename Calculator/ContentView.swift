//
//  ContentView.swift
//  Calculator
//
//  Created by Faisal Hakim on 2/10/21.
//

import SwiftUI



struct ContentView: View {
    

        
    
    var body: some View {
        
        VStack{
            HStack{
                ForEach(["7","8","9","X"], id: \.self){button in
   
                    Text(button).font(.system(size:32)).frame(width:80,height:80)
                    
                }
                
            }
            
        }
    
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
