//
//  ContentView.swift
//  Animation
//
//  Created by にゃんにゃん丸 on 2020/09/28.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var size1 : CGFloat = 0
    @State var size2 : CGFloat = 0
    @State var size3 : CGFloat = 0
    @State var number : CGFloat = 120
    
    var body: some View {
        
        GeometryReader{ reader in
            
            
            
            ZStack{
                
                
                VStack{
                    
                    HStack{
                        
                        
                        Image("image").resizable()
                            .clipShape(Circle())
                            .frame(width: number, height: number)
                            .offset(y: self.size1)
                        
                        Image("image")
                            .resizable()
                            .clipShape(Capsule())
                            .frame(width: number, height: number).offset(y: self.size2)
                        
                        
                        
                        Image("image")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: number, height: number).offset(y: self.size3)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    Spacer()
                    
                    
                    
                }
                VStack{
                    
                    Spacer()
                    
                    
                    HStack{
                        
                        
                        Spacer()
                        
                        Button(action: {
                            
                            self.size1 = reader.size.height - 80
                            
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                
                                self.size2 = reader.size.height - 80
                                
                                
                            }
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2){
                                
                                self.size3 = reader.size.height - 80
                                
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        }){
                            
                            Image(systemName: "square.and.arrow.down.fill").resizable().frame(width: 35, height: 35)
                            
                        }
                        .foregroundColor(Color(#colorLiteral(red: 0.5432000756, green: 0.1451710165, blue: 0.005097335204, alpha: 1)))
                        .padding(.trailing,15)
                    }
                    
                    
                }.animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6 ))
                
                
                
                
                
                
            }
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
