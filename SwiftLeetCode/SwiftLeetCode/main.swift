//
//  main.swift
//  SwiftLeetCode
//
//  Created by Daniil on 12.09.2023.
//

import Foundation

struct Solution {
    // 3. Longest Substring Without Repeating Characters
    //
    // Given a string s, find the length of the longest substring without repeating characters.
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // 1. Создаем счетчик в каторый будем записывать максимальное колличество уникальной подстроки
        var maxCount = 0
        // 2. Создаем хранилище в котором будем собирать уникальную подстроку
        var str: [Character] = []
        
        for char in s {
            // 3. Проверяем есть ли в нашем хранилище уже такой Chatracter и если да то получаем его индекс
            if let index = str.firstIndex(of: char) {
                // 4. Удаляем все в уникальной строке от начала до этого индекса
                str.removeSubrange(0...index)
            }
            // 5. Добавляем в строку Chatracter если он уникальный
            str += String(char)
            // 6. Обновляем счетчик с максимальным колличеством
            maxCount = max(maxCount, str.count)
        }
        return maxCount
    }
}

let soution = Solution()
print(soution.lengthOfLongestSubstring("abcabcbb"))
