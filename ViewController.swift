//
//  ViewController.swift
//  MyMusic
//
//  Created by Mai Morita on 2018/11/04.
//  Copyright © 2018年 MaiChan. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

let cymbalPath=Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
    var cymbalPlayer=AVAudioPlayer()
    @IBAction func cymbal(_ sender: Any) {
        
        soundPlayer(player: &cymbalPlayer, path:cymbalPath, count:0)
    }
    
    let guitarPath=Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    
    var guitarPlayer=AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        
        soundPlayer(player: &guitarPlayer, path: guitarPath, count:0)
}
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    var backmusicPlayer=AVAudioPlayer()
    

    @IBAction func play(_ sender: Any) {
        
        soundPlayer(player: &backmusicPlayer, path: backmusicPath,count: -1)
    }
    
    @IBAction func stop(_ sender: Any) {
        backmusicPlayer.stop()
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int){
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            print("エラーが発生しました")
        }
    }
    
}
