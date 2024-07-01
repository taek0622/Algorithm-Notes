//
//  11098.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11098
//  알고리즘 분류: 구현, 문자열

class BOJ11098: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 16ms, 코드 길이: 374B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let p = Int(readLine()!)!
            var player = (name: "", price: 0)

            for _ in 0..<p {
                let input = readLine()!.split(separator: " ").map { String($0) }
                let C = Int(input[0])!

                if C > player.price {
                    player.price = C
                    player.name = input[1]
                }
            }

            print(player.name)
        }
    }
}
