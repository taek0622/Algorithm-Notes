//
//  1157.swift
//  Swift
//
//  Created by 김민택 on 2022/06/09.
//

// 문제: https://www.acmicpc.net/problem/1157

class BOJ1157 {
    func run() {
        // 메모리: 85708KB, 시간: 156ms, 코드 길이: 528B
        let input = Array(readLine()!.uppercased())

        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

        var countArray: [Int] = []

        for i in alphabet {
            var count = 0
            for j in 0..<input.count {
                if i == input[j] {
                    count += 1
                }
            }
            countArray.append(count)
        }

        var maxCount = 0
        var maxIndex = 0

        for i in 0..<countArray.count {
            if countArray[i] == countArray.max() {
                maxCount += 1
                maxIndex = i
            }
        }

        if maxCount == 1 {
            print(alphabet[maxIndex])
        } else {
            print("?")
        }

        /*
         출처: https://www.acmicpc.net/source/43965449
         메모리: 81520KB, 시간: 108ms, 코드 길이: 486B
         let word = readLine()!.uppercased()
         var table: Dictionary<Character, Int> = [:]
         word.forEach {
             table[$0, default: 0] += 1
         }

         if table.count == 1 {
             print(word[word.startIndex])
         } else { // count > 1
             let values = table.values.sorted(by: >)
             if values[0] == values[1] {
                 print("?")
             } else {
                 for (key, value) in table {
                     if value == values[0] {
                         print(key)
                         break
                     }
                 }
             }
         }
         */
    }
}
