//
//  DetailView.swift
//  h4xor news
//
//  Created by Muhammad Umer on 31/07/2021.
//  Copyright © 2021 Muhammad Umer. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    var body: some View {
       WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

