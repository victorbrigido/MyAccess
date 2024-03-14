//
//  LoginView.swift
//  MyAcess
//
//  Created by Victor Brigido on 11/03/24.
//

import SwiftUI
import Firebase


struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""

    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding()
                
            VStack{
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Senha", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.top, 5)
            }

            Button(action: {
                signIn()
            }) {
                Text("Entrar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.top, 20)

            Spacer()
        }
        .padding()
    }
    
    private func signIn() {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    errorMessage = error.localizedDescription
                    print(errorMessage)
                } else {
                    
                    print("autenticado!")
                    // Autenticação bem-sucedida, faça a navegação para a próxima tela
                    // Por exemplo:
                    // navigationController?.pushViewController(NextView(), animated: true)
                    // ou
                    // presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

