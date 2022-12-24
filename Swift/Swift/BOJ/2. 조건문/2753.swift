//
//  2753.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

// 2-3단계 2753번 윤년

class BOJ2753 {
    func run() {
        let input = Int(readLine()!)!

        if (input % 4 == 0 && input % 100 != 0) || input % 400 == 0 {
            print("1")
        }
        else {
            print("0")
        }
    }
}
