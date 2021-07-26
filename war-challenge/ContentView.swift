//
//  ContentView.swift
//  war-challenge
//
//  Created by Ferhad Quluzade on 25.07.21.
//

import SwiftUI

struct ContentView: View {
   @State var plyImgNum=2
    @State var compImgNum=2
    @State var plyScore=0
    @State var compScore=0
    
    var body: some View {
        
      
        ZStack{
            Image("background").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card"+String(compImgNum))
                    Spacer()
                    Image("card"+String(plyImgNum))
                    Spacer()
                }
                Spacer()
                Button(action: {
                    plyImgNum=Int.random(in: 2...13)
                    compImgNum=Int.random(in: 2...13)
                    if plyImgNum>compImgNum{
                        plyScore+=1
                    }
                    else if plyImgNum<compImgNum{
                        compScore+=1
                    }
                  
                    
                }, label: {
                    Image("dealbutton")
})
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(plyScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(compScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
