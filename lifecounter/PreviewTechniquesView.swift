//
//  PreviewTechniquesView.swift
//  lifecounter
//
//  Created by stlp on 4/21/22.
//

import Foundation
import SwiftUI

struct PreviewTechniquesView: View{
    var body: some View{
        Text("Hello World")
    }
}

struct PreviewTechniquesView_Previews: PreviewProvider{
    static var previews: some View{
        PreviewTechniquesView()
            .previewDevice("iphone SE (2nd generation)")
    }
}
