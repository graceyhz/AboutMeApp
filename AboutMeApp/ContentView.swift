//
//  ContentView.swift
//  AboutMeApp
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct CustomColor{
    static let lightYellow = Color("lightYellow")
    static let burntSienna = Color("burntSienna")
    static let darkBrown = Color("darkBrown")
    
}

struct ContentView: View {
    @State private var showAlertArt = false
    @State private var showAlertBallet = false
    @State private var showAlertScioly = false
    @State var paragraph = "hellohelolheloelhleo"
    
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    VStack(alignment: .leading){
                        Text("Grace Zhao").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color("lightYellow"))
                        Spacer().frame(height: 10.0)
                        Text("赵芸华").foregroundColor(Color("lightYellow"))
                        Spacer().frame(height: 10.0)
                        Text("Class of 2025").foregroundColor(Color("lightYellow"))
                        
                    }
                    .padding(.all)
                    Image("grace1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit).cornerRadius(15)
                        .padding(.all)
                }
                .background(CustomColor.darkBrown)
                .cornerRadius(15)
                .shadow(radius: 10)
                .padding(.top)
                
                
                HStack{
                    VStack{
                        Button(action: {
                            paragraph = "I've done art since I was 6 years old! Although I primarily do digital art now, I also enjoy watercolor and gouache. I love drawing portraits the most!"
                        },
                               label: {
                            Image("art")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                                .shadow(radius: 10)
                                .padding(.horizontal, 150.0)
                            
                        })
                        
                        Button(action: {
                            paragraph = "I've done ballet since I was 5 years old, and love it a lot! I've performed in various shows, such as the Nutcracker, Don Quixote, and more."
                        },
                               label: {
                            Image("ballet")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                                .shadow(radius: 10)
                                .padding(.horizontal, 150.0)
                        })
                        
                        Button(action: {
                            paragraph = "I've participated in Science Olympaid since 7th grade, and it is one of my favorite clubs and competitions! Fun fact; our team made nationals this year!"
                        },
                               label: {
                            Image("scioly")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(15)
                                .shadow(radius: 10)
                                .padding(.horizontal, 150.0)
                        }

                        )}
                    .padding([.top, .bottom, .trailing], 10.0)
                    Spacer()
                    Text(paragraph)
                        .padding([.top, .bottom, .trailing]).foregroundColor(Color("lightYellow"))

                    
                    
                }
                .background(CustomColor.darkBrown)
                .cornerRadius(15)
                .shadow(radius: 10)
                .padding(.all)
            }
            .padding(.all)

            
        }
        .background(CustomColor.burntSienna)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
