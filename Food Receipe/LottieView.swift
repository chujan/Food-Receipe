//
//  LottieView.swift
//  Food Receipe
//
//  Created by Jennifer Chukwuemeka on 21/06/2022.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    var name = ""
    var loodMode: LottieLoopMode = .loop
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = AnimationView()
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loodMode
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([ animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
                                      animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
                                      ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
    
    
    
}
