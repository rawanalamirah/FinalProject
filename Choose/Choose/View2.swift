//
//  View2.swift
//  Choose
//
//  Created by rawan alamirah on 1/8/21.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.leading)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(Color("color4"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding()
        
    }
}

struct View2: View {
    let items: Items
    @State var item1 = ""
    @State var item2 = ""
    @State var item3 = ""
    @State var item4 = ""
    @State var item5 = ""
    
    var body: some View{
        
        ZStack{
            Color("color6")
                .ignoresSafeArea()
            Color("color4")
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .offset(x: 0, y: -150)
            VStack{
                Text("Please enter your data:")
                    .foregroundColor(Color("color6"))
                    .font(.custom("Avenir", size: 25))
                    .padding(.vertical)
                Spacer()
                
                TextField("First Item", text: $item1)
                    .modifier(TextFieldModifier())
                TextField("Second Item", text: $item2)
                    .modifier(TextFieldModifier())
                TextField("Third Item", text: $item3)
                    .modifier(TextFieldModifier())
                TextField("Fourth Item", text: $item4)
                    .modifier(TextFieldModifier())
                TextField("Fifth Item", text: $item5)
                    .modifier(TextFieldModifier())
                
                Spacer()
                if item5 != ""{
                    
                NavigationLink(
                    destination: View3(items: Items(item1: item1, item2: item2, item3: item3, item4: item4, item5: item5)),
                    label: {

                        Text("Continue")
                            .foregroundColor(Color("color4"))
                            .font(.custom("Avenir", size: 20))
                            .padding()
                        
                    })
                }
                Spacer()
            }
        }

}
}
                

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2(items: Items())
    }
}

