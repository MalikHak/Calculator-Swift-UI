//
//  ContentView.swift
//  Calculator
//
//  Created by Faisal Hakim on 2/10/21.
//

import SwiftUI
enum CalculatorButton:String{
    case zero,one,two,three,four,five,six,seven,eight,nine
    case equals,plus,minus,multiply,divide
    
    case ac,plusminus,percent
    
    
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
        case .equals:
            return "10"
        case .plus:
            return "11"
        case .minus:
            return "-"
        case .multiply:
            return "X"
        case .divide:
            return "/"
        case .ac:
            return "AC"
        case .plusminus:
            return "+/_"
        case .percent:
            return "/"
        default:
            return "AC"
        }
    }
    
    var backGroundColor:Color{
        
        switch self {
        case .zero,.one,.two,.three,.four,.five,.six,.seven:
            return Color(.gray)
        
        case .ac,.plusminus,.percent:
        return Color(.lightGray)
        
        default:
            return .orange
        }
    }
}

struct ContentView: View {
    
    let buttons:[[CalculatorButton]] = [
        [.ac,.plusminus,.percent,.divide],
        [.four,.five,.six,.minus],
        [.one,.two,.three,.plus]
     
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
   
                    Text(button.title).font(.system(size:32)).frame(width:80,height:80)
                        .foregroundColor(.white)
                        .background(button.backGroundColor)
                        .cornerRadius(40)
                    
                }
                
            }
            
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

