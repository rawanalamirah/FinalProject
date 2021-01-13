//
//  View3.swift
//  Choose
//
//  Created by rawan alamirah on 1/8/21.
//

import SwiftUI

struct PieceOfPie: Shape {
    let startDegree: Double
    let endDegree: Double

    func path(in rect: CGRect) -> Path {
        Path { p in
            let center = CGPoint(x: rect.midX, y: rect.midY)
            p.move(to: center)
            p.addArc(center: center, radius: rect.width / 2, startAngle: Angle(degrees: startDegree), endAngle: Angle(degrees: endDegree), clockwise: false)
            p.closeSubpath()
            
        }
    }
    
    
}

struct View3: View {
    let items: Items
    @State private var degrees = 0.0

    var body: some View {
       
        ZStack{
            Color("color6")
                .ignoresSafeArea()
            Color("color4")
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .offset(x: 0, y: 190)
        VStack{
            Spacer()

            Group{
                ZStack{
                    PieceOfPie(startDegree: 0.0, endDegree: 72.0)
                        .fill(Color("color1"))

                    
                    GeometryReader{ geometry in
                        Text(self.items.item1)
                            .font(.custom("Avenir", size: 20))
                            .position(LabelCoordinate(in: geometry.size, for:( 0 + Double((72 / 2)))))
                    }
                    
                    ZStack{
                        PieceOfPie(startDegree: 72.0, endDegree: 144.0)
                            .fill(Color("color2"))
                        GeometryReader{ geometry in
                            Text(self.items.item2)
                                .font(.custom("Avenir", size: 20))
                                .position(LabelCoordinate(in: geometry.size, for:( 72 + Double((72 / 2)))))
                        }
                        }
                    
                    ZStack{
                        PieceOfPie(startDegree: 144.0, endDegree: 216.0)
                            .fill(Color("color3"))
                        GeometryReader{ geometry in
                            Text(self.items.item3)
                                .font(.custom("Avenir", size: 20))
                                .position(LabelCoordinate(in: geometry.size, for:( 144 + Double((72 / 2)))))
                        }
                        }
                    
                    ZStack{
                        PieceOfPie(startDegree: 216.0, endDegree: 288.0)
                            .fill(Color("color5"))
                        GeometryReader{ geometry in
                            Text(self.items.item4)
                                .font(.custom("Avenir", size: 20))
                                .position(LabelCoordinate(in: geometry.size, for:( 216 + Double((72 / 2)))))
                        }
                        }
                    
                    ZStack{
                        PieceOfPie(startDegree: 288.0, endDegree: 360.0)
                            .fill(Color.gray)
                        GeometryReader{ geometry in
                            Text(self.items.item5)
                                .font(.custom("Avenir", size: 20))
                                .position(LabelCoordinate(in: geometry.size, for:( 288 + Double((72 / 2)))))
                        }
                        }
                
                
                    
                }.padding(.all, -10.0)
                .rotationEffect(.degrees(degrees))
                .frame(width: 350, height: 350, alignment: .trailing)
                .overlay(Circle().stroke(Color.white, lineWidth: 6))
               
                VStack{
                Image(systemName:"arrowtriangle.up.fill")
                    .resizable()
                    .frame(width: 70, height: 50)
                    .foregroundColor(.white)
                    Spacer()
                }
            }
            

            
                    
            

            
                   
            Button(action: {
                let d = Double.random(in: 720...7200)
                let baseAnimation = Animation.easeInOut(duration: d / 360)
                        withAnimation (baseAnimation) {self.degrees += d}  })
                            {Text("Spin")
                            .foregroundColor(Color("color6"))
                            .font(.custom("Avenir", size: 25))
                            .padding()
                        
                    }
            Spacer()
                
                
                }
                
    }

                }

    }
    func LabelCoordinate( in geoSize: CGSize, for degree: Double) -> CGPoint {
        let center = CGPoint(x: geoSize.width / 2, y: geoSize.height / 2)
        let radius = geoSize.width / 4
        let yCoordinate = radius * sin(CGFloat(degree) * (CGFloat.pi / 180))
        let xCoordinate = radius * cos(CGFloat(degree) * (CGFloat.pi / 180))
        
        return CGPoint(x: center.x + xCoordinate, y: center.y + yCoordinate)
    }


struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3(items: Items(item1: "", item2: "", item3: "", item4: "", item5: ""))

    }
}


