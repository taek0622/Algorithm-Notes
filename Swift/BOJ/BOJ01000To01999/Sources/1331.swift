//
//  1331.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/30.
//

//  문제 링크: https://www.acmicpc.net/problem/1331
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ1331: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1161B
        var block = (0, 0)
        var firstBlock = (0, 0)
        var path = Set<String>()
        var result = "Valid"

        for idx in 0..<36 {
            var newBlock = (0, 0)

            let input = readLine()!

            if !path.insert(input).inserted {
                result = "Invalid"
                break
            }

            let data = input.map { String($0) }

            switch data[0] {
            case "A":
                newBlock.0 = 1
            case "B":
                newBlock.0 = 2
            case "C":
                newBlock.0 = 3
            case "D":
                newBlock.0 = 4
            case "E":
                newBlock.0 = 5
            case "F":
                newBlock.0 = 6
            default:
                break
            }

            newBlock.1 = Int(data[1])!

            if !((abs(newBlock.0 - block.0) == 1 && abs(newBlock.1 - block.1) == 2) || (abs(newBlock.0 - block.0) == 2 && abs(newBlock.1 - block.1) == 1)) && idx != 0 {
                result = "Invalid"
                break
            }

            if idx == 0 {
                firstBlock = newBlock
            }

            if idx == 35 && !((abs(newBlock.0 - firstBlock.0) == 1 && abs(newBlock.1 - firstBlock.1) == 2) || (abs(newBlock.0 - firstBlock.0) == 2 && abs(newBlock.1 - firstBlock.1) == 1)) {
                result = "Invalid"
                break
            }

            block = newBlock
        }

        print(result)
    }
}
