//
//  main.swift
//  SwiftLeetCode
//
//  Created by Daniil on 12.09.2023.
//

import Foundation

struct Solution {
    // 14. Longest Common Prefix
    //
    // Write a function to find the longest common prefix string amongst an array of strings.
    // If there is no common prefix, return an empty string "".
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        // 1. Берем любую строку для проверки содержиться ли она в других словах
        var str = strs[0]
        for word in strs {
            // 2. Если наша строка не содержиться то удаляем последний из строки пока не найдем ту часть которая есть в этом слове
            // Пример ищем в слове FLOW префикс FLOWER его нет и мы удаляем по одной букве пока не дойдем до FLOW
            // Как только нашли переходим к след слову и т.д.
            while !word.hasPrefix(str) {
                str = String(str.dropLast())
            }
        }
        return str
    }
}

let soution = Solution()
print(soution.longestCommonPrefix(["flower", "flow", "flight"]))
