//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Douglas de Melo Pontes on 09/08/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchengeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                Image(.silverpiece)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 30)
                                
                                Text("Silver Piece")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .padding(.bottom, -5)
                            
                            TextField("Amount", text: $leftAmount)
                                .textFieldStyle(.roundedBorder)
                            
                        }
                        Image(systemName: "equal")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .symbolEffect(.pulse)
                        
                        VStack{
                            HStack{
                                Text("Gold Piece")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                
                                Image(.goldpiece)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 33)
                            }.padding(.bottom, -5)
                            TextField("Amount", text: $rightAmount)
                                .textFieldStyle(.roundedBorder)
                                .multilineTextAlignment(.trailing)
                        }
                    }
                    .padding()
                    .background(.black.opacity(0.5))
                    .clipShape(.capsule)
                }.padding(5)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showExchengeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
