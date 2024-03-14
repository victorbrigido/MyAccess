//
//  MenuView.swift
//  MyAcess
//
//  Created by Victor Brigido on 12/03/24.
//

import SwiftUI

struct MenuView: View {
  var onQRCodeTap: () -> Void = {} // Action for QR Code button
  var onReservationsTap: () -> Void = {} // Action for Reservations button
  var onAssociateCompanyTap: () -> Void = {} // Action for Associate Company button
  var onAccountDetailsTap: () -> Void = {} // Action for Account Details button
  var onTermsOfUseTap: () -> Void = {} // Action for Terms of Use button
  var onPrivacyPoliciesTap: () -> Void = {} // Action for Privacy Policies button
  var onLogoutTap: () -> Void = {} // Action for Logout button

  var body: some View {
    VStack(alignment: .leading) {
        
      Button {
        onQRCodeTap()
      } label: {
        HStack {
          Image(systemName: "qrcode")
            .foregroundColor(.white)
          Text("QR Code")
            .foregroundColor(.white)
        }
      }
      .padding(.top, 80) // Add some top padding

      Button {
        onReservationsTap()
      } label: {
        HStack {
          Image(systemName: "calendar.badge.plus") // Optional icon for reservations
            .foregroundColor(.white)
          Text("Reservas")
            .foregroundColor(.white)
        }
      }
      .padding(.top, 10)

      Button {
        onAssociateCompanyTap()
      } label: {
        HStack {
          Image(systemName: "link") // Optional icon for association
            .foregroundColor(.white)
          Text("Associar Empresa")
            .foregroundColor(.white)
        }
      }
      .padding(.top, 10)
        
      Button {
        onAccountDetailsTap()
      } label: {
        HStack {
          Image(systemName: "person.circle") // Optional icon for account details
            .foregroundColor(.white)
          Text("Dados da Conta")
            .foregroundColor(.white)
        }
      }
      .padding(.top, 10)

      Button {
        onTermsOfUseTap()
      } label: {
        HStack {
          Image(systemName: "doc.text") // Optional icon for terms of use
            .foregroundColor(.white)
          Text("Termos de Uso")
            .foregroundColor(.white)
        }
      }
      .padding(.top, 10)
        
      Button {
        onPrivacyPoliciesTap()
      } label: {
        HStack {
          Image(systemName: "lock.shield") // Optional icon for privacy policies
            .foregroundColor(.white)
          Text("Políticas de Privacidade")
            .foregroundColor(.white)
        }
      }
      .padding(.top, 10)

       Spacer()
        
      Button {
        onLogoutTap()
      } label: {
        HStack {
          Image(systemName: "power") // Optional icon for logout
            .foregroundColor(.white) // Red color for logout
            .bold()
          Text("Logoff")
            .foregroundColor(.white)
            .bold()
        }
        .padding(.leading)
      }
      .padding(.bottom)
    }
    .padding()
    .foregroundColor(.white)
    .background(Color.green)
    .frame(maxWidth: .infinity, maxHeight: .infinity) // Allow full height and width
    .edgesIgnoringSafeArea(.vertical) // Remove safe area insets
    .offset(x: -80) // Set horizontal offset to 0 (center) initially
  }
}


#Preview {
    MenuView()
}
