//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/31.
//

// 메모리: 69100KB, 시간: 12ms, 코드 길이: 435B
let input = Int(readLine()!)!

var score = 0
var totalScore = 0

for _ in 1...input {
    let arrayInput = Array(readLine()!)
    for i in 0..<arrayInput.count {
        if arrayInput[i] == "O" {
            if i > 0 && arrayInput[i-1] == "O" {
                score += 1
            }
            else {
                score = 1
            }
            totalScore += score
        }
    }
    print(totalScore)
    totalScore = 0
}

/*
 출처: https://www.acmicpc.net/source/14366783
 메모리: 60396KB, 시간: 8ms, 코드 길이: 108B
 (1...Int(readLine()!)!).map{_ in print(readLine()!.split{$0=="X"}.map{($0.count+1)*$0.count/2}.reduce(0,+))}
 */
