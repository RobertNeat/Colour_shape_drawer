//
//  ContentView.swift
//  laboratorium_4_zadanie_2
//
//  Created by apple on 3/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedShape = "Circle"
    @State private var selectedColor = "Cyan"
    @State private var height = "100"
    @State private var width = "100"
    @State private var addBorder = false
    
    @State private var wysokosc:Int = 0
    //@State private var colorSelected = Color.red
    
    let shapes = ["Circle", "Ellipse", "Square"]
    let colors = [ "Cyan", "LightGreen", "Orange"]
    
    @State var liczba_str:String = "123"
    //@State var liczba_int:Int = Int(liczba_str!)
    

    
    var body: some View {
        VStack {
            Picker(selection: $selectedShape, label: Text("Select a shape")) {
                ForEach(shapes, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Picker(selection: $selectedColor, label: Text("Select a color")) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            
            HStack {
                Text("Height:")
                TextField("100", text: $height)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 80)
                Text("Width:")
                TextField("100", text: $width)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 80)
            }
            .padding()
            
            Toggle("Add border", isOn: $addBorder)
                .padding()
            
            Spacer()

            
            
            /*
            let liczba_int = Int(liczba_str) ?? 100 //jezeli nie może przekonwertowac to podstawia domysla wartosc (jeżeli by była owrapowana opcjonalnie to trzeba wykrzyknik w nawiasie)
            Text("example \(liczba_int)")
            */
                    
      
            
            let width_float:Float = Float(width) ?? 100
            let height_float:Float = Float(height) ?? 100
            
            
            if selectedShape == "Circle" {
                if(selectedColor=="Cyan"){
                    
                    Circle()
                        .fill(.cyan)//Color(selectedColor)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? Circle().stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
                else if(selectedColor=="LightGreen"){
                    Circle()
                        .fill(.green)//Color(selectedColor)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? Circle().stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
                else{
                    Circle()
                        .fill(.orange)//Color(selectedColor)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? Circle().stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
                

            } else if selectedShape == "Ellipse" {
                if(selectedColor=="Cyan"){
                    Ellipse()
                        .fill(.cyan)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? Ellipse().stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
                else if(selectedColor=="LightGreen"){
                    Ellipse()
                        .fill(.green)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? Ellipse().stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
                else{
                    Ellipse()
                        .fill(.orange)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? Ellipse().stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }

            } else {
                
                if(selectedColor=="Cyan"){
                    
                    Rectangle()
                        .fill(.cyan)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
                else if(selectedColor=="LightGreen"){
                    
                    Rectangle()
                        .fill(.green)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
                else{
                    
                    Rectangle()
                        .fill(.orange)
                        .frame(width: CGFloat(width_float), height: CGFloat(height_float))
                        .overlay(addBorder ? RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4).padding(4) : nil)
                }
              
            }
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


