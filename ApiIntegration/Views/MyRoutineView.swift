//
//  MyRoutinesView.swift
//  ApiIntegration
//
//  Created by Erdem Senol on 14.09.2021.
//

import SwiftUI

struct MyRoutineView: View {
    var body: some View {
        ZStack{
            Color("neutral").edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160)
                    Spacer()
                    Image("bag")
                        .padding(.trailing, 10)
                        .padding(.top, -8)
                    Image("chat")
                        .padding(.trailing, 10)
                    Image("info")
                        .padding(.top, -8)
                        .padding(.leading, -4)
                }.padding()
                HStack{
                    Image(systemName: "chevron.left")
                    Text("Back")
                        .fontWeight(.semibold)
                    Spacer()
                }.padding()
                .padding(.top, -8)
                HStack{
                    Text("My Routine")
                        .font(.largeTitle)
                    Spacer()
                }.padding()
                ScrollView(.horizontal){
                    HStack(spacing: nil){
                        ColumnView(image: "user", am: "AM", pm: "PM", freq: "Twice Weekly", type: "Cleanser")
                        ColumnView(image: "user", am: "AM", pm: "PM", freq: "Twice Weekly", type: "Cleanser")
                        ColumnView(image: "user", am: "AM", pm: "PM", freq: "Twice Weekly", type: "Cleanser")
                        ColumnView(image: "user", am: "AM", pm: "PM", freq: "Twice Weekly", type: "Cleanser")
                    }
                }.frame(height: UIScreen.main.bounds.height / 1.7)
                .padding(.leading, 100)
                HStack{
                    VStack{
                        Image("user")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                        Text("My Profile")
                            .font(.caption)
                    }
                    Spacer()
                    VStack{
                        Image("bottle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("My Shelf")
                            .font(.caption)
                    }
                    Spacer()
                    VStack{
                        Image("add")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("Explore")
                            .font(.caption)
                    }
                }.frame(width: UIScreen.main.bounds.width - 80)
            }
        }.foregroundColor(Color("text"))
    }
}

struct MyRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        MyRoutineView()
    }
}

struct ColumnView: View {
    let image: String
    let am: String
    let pm: String
    let freq: String
    let type: String
    
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 180)
            Text(am)
            Text(pm)
            Text(freq)
                .underline()
                .frame(width: 60, height: 60)
                .multilineTextAlignment(.center)
            Text(type)
                .font(.system(size: 28))
                .lineLimit(1)
                .padding(.leading, -25)
                .frame(height: 220 )
                .rotationEffect(.degrees(90))
                
        }
    }
}
