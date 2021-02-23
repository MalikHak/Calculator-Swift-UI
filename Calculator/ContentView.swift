//
//  ContentView.swift
//  Calc1
//
//  Created by Faisal Hakim on 2/16/21.
//

import SwiftUI

enum CalculatorButton: String{
    
    case zero, one, two, three, four,five,six,seven,eight,nine
    case eqquals, plus,minus,multiply,divide
    case ac,plusminus,percent
    case decimalpoint

    var backgroundColor:Color{
        switch self{
        case .zero,.one,.two,.three,.four,.five,.six,.seven,.eight,.nine,.decimalpoint:
        return Color(.darkGray)
             
    
        case .ac,.plusminus,.percent:
        return Color(.lightGray)
        
        default:
            return .orange
        }
    }
    
    
    
    var title:String{
        switch self{
 
        case .zero:
           return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .decimalpoint:
        return "."
        case .eqquals:
            return  "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiply:
            return "X"
        case .divide:
            return "/"
       
        case .plusminus:
           return "+/-"
        case .percent:
         return   "%"
        
         default:
            return "AC"
        
        }
    
    }
    
}


//Creating Environment Object
class GlobalEnvironment: ObservableObject{
    
    @Published var display = "00"
    
    
    func recieveInput(calculatorButton:CalculatorButton){
        
        self.display = calculatorButton.title
        
//Add code for sepcifing the number and operations
        
//Add Code for calculation methods
        
        
        // A simple trick for Calculation has been added to test file
        
        
        
        
        
    }
    
    
}

struct ContentView: View {
    
    @EnvironmentObject var env:GlobalEnvironment
    
    let buttonArray: [[CalculatorButton]] = [
        [.ac,.plusminus,.percent,.divide],
        [.seven,.eight,.nine,.multiply],
        [.four,.five,.six,.minus],
        [.one,.two,.three,.plus],
        [.zero,.decimalpoint,.eqquals]

    ]
    var body: some View {
       
        ZStack(alignment:.bottom){
                        Color.black
            Color.black.edgesIgnoringSafeArea(.all)
           
            VStack{
                
                
                //Calculator Result Area
            HStack{
             Spacer()
                Text(env.display).foregroundColor(.white).font(.system(size:70))
            }.padding()
     
            
            //Calculator Buttons Area
                
            ForEach(buttonArray,id:\.self){ row in
                
                HStack(spacing: 12){
            ForEach(row,id: \.self){button in
               
                Button(action:{
                 
                    self.env.recieveInput(calculatorButton: button)
                    
                }){
                    Text(button.title).font(.system(size:32)).frame(width:self.buttonwidth(button: button),height: (UIScreen.main.bounds.width - 5 * 12)/4).foregroundColor(.white).background(button.backgroundColor).cornerRadius(self.buttonwidth(button: button))
                                        .padding(4)
                }
                
                
                    
            
            }
        }
                
            }
        }.padding(.bottom)
            
        }
    }

    func buttonwidth(button:CalculatorButton) ->CGFloat{
        
        if button == .zero {
            return (UIScreen.main.bounds.width - 4 * 12)/4*2
        }
        
        return (UIScreen.main.bounds.width - 5 * 12)/4
        
        
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalEnvironment())    }
}

