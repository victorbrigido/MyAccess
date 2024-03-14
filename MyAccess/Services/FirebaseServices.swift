//
//  FirebaseServices.swift
//  MyAcess
//
//  Created by Victor Brigido on 11/03/24.
//

import Foundation



func createUser(name: String, email: String, completion: @escaping (Error?) -> Void) {
    guard let url = URL(string: "http://your-backend-url/addUser") else {
        completion(NSError(domain: "Invalid URL", code: 0, userInfo: nil))
        return
    }

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    let userData = ["name": name, "email": email]
    guard let jsonData = try? JSONSerialization.data(withJSONObject: userData) else {
        completion(NSError(domain: "Invalid Data", code: 0, userInfo: nil))
        return
    }

    URLSession.shared.uploadTask(with: request, from: jsonData) { data, response, error in
        if let error = error {
            completion(error)
            return
        }
        completion(nil)
    }.resume()
}
