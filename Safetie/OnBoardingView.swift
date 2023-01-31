//
//  ContentView.swift
//  idk//
//  Created by Alanoud Saleh on 13/05/1444 AH.
//meow
//edjlsijr
import SwiftUI

struct OnBoardingView: View {
    @Binding var shouldshowonb : Bool
    var body: some View {
        
        ZStack{
            
//            
//            LinearGradient(colors: [Color("BGColor1"),Color("BGColor2")], startPoint: .top, endPoint: .bottom)
            VStack(spacing:75){
               
                
                VStack(spacing:15){
                   // TextLineView()
                    
                    RectView(SFName:"checkmark.diamond", Title: "Phishing URL Detection", Content: "Detect malicious URLs used for phishing.          ")
                   
                    RectView(SFName: "exclamationmark.triangle", Title: "Malicious URL Scanning", Content: "Identify URLs used for malware and viruses.                                 ")
                    RectView(SFName: "envelope.badge.shield.half.filled", Title: "Email Spammer Domains", Content: "Sift through SPAM emails with detection for domains.")
     
                }
                
                VStack(alignment:.leading){
                    TextLineView(Word1: "One", Word2: "Click")
                    TextLineView(Word1: "and you’re all", Word2: "Safe")
                }
                
                Button {
                    shouldshowonb.toggle()
                } label: {
                    ButtonView(Word1: "Start")
                }

            }
        }.ignoresSafeArea()
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
     

        OnBoardingView(shouldshowonb: .constant(true))
    }
}


struct RectView: View {
    @State var SFName = "checkmark.diamond"
    @State var Title = "URL Checker"
    @State var Content = "check any link before you open it to make sure it is safe link."
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 26).foregroundColor(Color("RectColor")).frame(width: 360, height: 85).opacity(0.5)
            RoundedRectangle(cornerRadius: 26).foregroundColor(Color("RectColor")).frame(width: 335, height: 85)
            
            HStack{
                
                Image(systemName: SFName).foregroundColor(.white).font(.title)
                    .padding(5)
                VStack(alignment: .leading){
                    Text(Title).foregroundColor(.white).bold()
                 
                    Text(Content).foregroundColor(.white.opacity(0.7))
                }
                Spacer()
            }.padding(.horizontal,40)
        }
    }
}

struct TextLineView: View {
    @State var Word1 = "With"
    @State var Word2 = "Safetie"
    var body: some View {
        HStack{
            Text(Word1)
            Text(Word2).foregroundColor(Color("ButtonColor")).bold()
        }.font(.title)
    }
}

struct ButtonView: View {
    @State var Word1 = "With"
    @State var color = Color("ButtonColor")
    var body: some View {
        Text(Word1).frame(width: 200, height: 45)
            .foregroundColor(.white).background{
        
        
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 200, height: 45).foregroundColor(color).shadow(radius: 0.3) }
    }
}
