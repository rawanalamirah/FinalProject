//
//  ContentView.swift
//  Choose
//
//  Created by rawan alamirah on 1/8/21.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        NavigationView{
        ZStack{
            Color("color6")
                .ignoresSafeArea()
            Color("color4")
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .offset(x: -30)
            VStack{

                HStack{
                    Text("Hello There!")
                        .foregroundColor(.white)
                        .font(.custom("Avenir", size: 45))
                        .bold()
                        .padding()
                    Spacer()
                }
                Spacer()
                
                Text("Can't decide? don't worry, we got you!")
                    .foregroundColor(.white)
                    .font(.custom("Avenir", size: 25))
                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)

                

                
                    
                
                Spacer()
                NavigationLink(
                    destination: View2(items: Items(item1: "", item2: "", item3: "", item4: "", item5: "")),
                    label: {
                        Text("let's get started!")
                            .foregroundColor(Color("color4"))
                            .font(.custom("Avenir", size: 25))
                            .padding()
                            .frame(width: 215, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("color6"))
                            .clipped()
                            .cornerRadius(5)
                    })
              Spacer()
            }
            
   
        }
        }
    
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .ignoresSafeArea()
    }
}

