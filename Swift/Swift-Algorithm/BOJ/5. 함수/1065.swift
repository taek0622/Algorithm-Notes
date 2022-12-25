//
//  1065.swift
//  Swift
//
//  Created by 김민택 on 2022/06/04.
//

// 문제: https://www.acmicpc.net/problem/1065

class BOJ1065 {
    func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 628B
    private func solution1() {
        let input = Int(readLine()!)!
        var cnt = 0

        for i in 1...input {
            if sequenceNumber(i) {
                cnt += 1
            }
        }

        print(cnt)

        func sequenceNumber(_ originalNumber: Int) -> Bool {
            var tempNumber = originalNumber
            var tempArray: [Int] = []

            if originalNumber < 100 {
                return true
            }

            while tempNumber > 0 {
                tempArray.append(tempNumber % 10)
                tempNumber /= 10
            }

            let difference = tempArray[0] - tempArray[1]

            for i in 1..<tempArray.count {
                if tempArray[i-1] - difference != tempArray[i] {
                    return false
                }
            }

            return true
        }
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 525B
    private func solution2() {
        let input = Int(readLine()!)!
        var cnt = 0

        for i in 1...input {
            if sequenceNumber(i) {
                cnt += 1
            }
        }

        print(cnt)

        func sequenceNumber(_ originalNumber: Int) -> Bool {
            if originalNumber < 100 {
                return true
            }

            let tempArray = String(originalNumber).map { Int(String($0))! }

            let difference = tempArray[0] - tempArray[1]

            for i in 1..<tempArray.count {
                if tempArray[i-1] - difference != tempArray[i] {
                    return false
                }
            }

            return true
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 543B
    private func solution3() {
        let input = Int(readLine()!)!
        var cnt = 0

        if input < 100 {
            cnt = input
        }
        else {
            cnt = 99
            for i in 100...input {
                if sequenceNumber(i) {
                    cnt += 1
                }
            }
        }

        print(cnt)

        func sequenceNumber(_ originalNumber: Int) -> Bool {
            let tempArray = String(originalNumber).map { Int(String($0))! }
            
            let difference = tempArray[0] - tempArray[1]
            
            for i in 1..<tempArray.count {
                if tempArray[i-1] - difference != tempArray[i] {
                    return false
                }
            }
            
            return true
        }
    }
}
