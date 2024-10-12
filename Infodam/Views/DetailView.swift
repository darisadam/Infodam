//
//  DetailView.swift
//  Infodam
//
//  Created by Adam Daris Ryadhi on 12/10/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

