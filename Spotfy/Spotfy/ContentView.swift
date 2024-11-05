//
//  ContentView.swift
//  Spotfy
//
//  Created by Turma02-2 on 31/10/24.
//


import SwiftUI

struct MusicItem: Identifiable {
  var id = UUID()
  var title: String
  var artist: String
  var imageName: String
}

struct ContentView: View {
  var musicList = [
    MusicItem(title: "O que Sobrou do céu", artist: "O Rappa", imageName: "oquesobroudoceu"),
    MusicItem(title: "A minha alma", artist: "O Rappa", imageName: "oquesobroudoceu"),
    MusicItem(title: "Me deixa", artist: "O Rappa", imageName: "oquesobroudoceu"),
    MusicItem(title: "Honey baby", artist: "O Rappa", imageName: "oquesobroudoceu"),
    MusicItem(title: "Vapor barato", artist: "O Rappa", imageName: "oquesobroudoceu"),
  ]

  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea(.all)

      NavigationView {
          
        List(musicList) { item in
          HStack {
            Image(item.imageName)
              .resizable()
              .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
              Text(item.title)
                .font(.headline)
              Text(item.artist)
                .font(.subheadline)
            }
          }
        }
        .navigationTitle("Spotify")
        .navigationBarTitleDisplayMode(.inline)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
