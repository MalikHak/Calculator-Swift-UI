//
//  ContentView.swift
//  Calculator
//
//  Created by Faisal Hakim on 2/10/21.
//

import SwiftUI

struct ContentView: View {
    
    enum CalculateButton:String{
      
      case zero,one,two,three,four,five,six,seven,eight,nine
      case equals,plus,minus,multiply,divide
      case ac,plusminus,percent
        
        var backgroundColor:Color{
            switch self {
            case .zero,.one,.two,.three,.four,.five,.six,.seven,.eight,.nine:
               return Color(.darkGray)
                
            case .ac,.plusminus,.percent:
                return Color(.lightGray)
  
            default:
                return .orange
                
            }
            
        }
        
        var title:String{
            switch self {
          
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
            case .equals:
                return "="
            case .plus:
                return "+"
            case .minus:
                return "-"
            case .multiply:
                return "X"
            case .divide:
                return "/"
            case .ac:
                return "AC"
            case .plusminus:
                return "+/-"
            case .percent:
                return "%"
            }
        }

    }
    
    let buttons : [[CalculateButton]] = [
        [.ac,.plusminus,.percent,.divide],
        [.seven,.eight,.nine,.plus],
        [.one,.two,.three,.plus],
        [.four,.five,.six,.minus]
        
        
    
    ]
    var body: some View {
        ZStack(alignment:.bottom){
            Color.black
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:12){
            
            HStack{
                Spacer()
                Text("34").foregroundColor(Color.white).font(.system(size:64))
            }.padding()
            
            
            
            ForEach(buttons,id:\.self){ row in
                HStack(spacing:12){
            ForEach(row,id: \.self){button in
                
                Button(action:{
                    print(button.rawValue)
                }){
                    Text(button.title).font(.system(size: 32))
                                       .frame(width:self.buttonWidth(),height:self.buttonWidth()).foregroundColor(.white).background(button.backgroundColor).cornerRadius(self.buttonWidth())

                }
                
               
            }
            
        }
        
        }
            }.padding(.bottom)
        }
        
    }
    
    func buttonWidth() -> CGFloat{
        
        return (UIScreen.main.bounds.width - 5 * 12)/4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
