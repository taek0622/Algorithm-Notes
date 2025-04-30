//
//  1157.swift
//  Swift
//
//  Created by 김민택 on 2022/06/09.
//

// 문제: https://www.acmicpc.net/problem/1157

class BOJ1157: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 85708KB, 시간: 156ms, 코드 길이: 528B
    private func solution1() {
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
    }

    // 메모리: 71112B, 시간: 108ms, 코드 길이: 466B
    // 원문 출처: https://www.acmicpc.net/source/43965449
    private func solution2() {
        let word = readLine()!.uppercased()
        var table: Dictionary<Character, Int> = [:]
        word.forEach {
            table[$0, default: 0] += 1
        }

        if table.count == 1 {
            print(word[word.startIndex])
        } else {
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
    }

    // 메모리: 85712KB, 시간: 196ms, 코드 길이: 453B
    private func solution3() {
        let input = Array(readLine()!.uppercased())
        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var counter = Array(repeating: 0, count: 26)

        for char in alphabet.indices {
            for word in input {
                if alphabet[char] == word {
                    counter[char] += 1
                }
            }
        }

        if counter.firstIndex(of: counter.max()!) != counter.lastIndex(of: counter.max()!) {
            print("?")
        } else {
            print(alphabet[counter.firstIndex(of: counter.max()!)!])
        }
    }

    // 메모리: 85712KB, 시간: 180ms, 코드 길이: 356B
    private func solution4() {
        let input = Array(readLine()!.uppercased())
        var alphabet = [Character: Int]()
        var maxChar = [Character]()

        input.forEach {
            if alphabet[$0] == nil {
                alphabet[$0] = 0
            }

            alphabet[$0]! += 1
        }

        for char in alphabet.keys where alphabet[char] == alphabet.values.max() {
            maxChar.append(char)
        }

        print(maxChar.count == 1 ? maxChar[0] : "?")
    }

    // 메모리: 71112KB, 시간: 144ms, 코드 길이: 423B
    private func solution5() {
        let input = readLine()!.uppercased()
        var alphabet = [Character: Int]()

        input.forEach {
            alphabet[$0, default: 0] += 1
        }

        let values = alphabet.values.sorted(by: >)

        if alphabet.count == 1 {
            print(alphabet[alphabet.startIndex].key)
        } else if values[0] == values[1] {
            print("?")
        } else {
            for (key, value) in alphabet {
                if value == values[0] {
                    print(key)
                    break
                }
            }
        }
    }
}
