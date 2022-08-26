//
//  CrewView.swift
//  Moonshot
//
//  Created by Yuri Gerasimchuk on 29.05.2022.
//

import SwiftUI

struct CrewRoster: View {
    let crew: [MissionView.CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewmember in
                    NavigationLink {
                        AstronautView(astronaut: crewmember.astronaut)
                    } label: {
                        HStack {
                            Image(crewmember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                                .accessibilityHidden(true)
                            
                            VStack(alignment: .leading) {
                                Text(crewmember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text(crewmember.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct CrewView_Previews: PreviewProvider {
    static var previews: some View {
        CrewRoster(crew: [MissionView.CrewMember(role: "Commander", astronaut: Astronaut(id: "schirra", name: "Walter M. Schirra", description: ""))])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
