-- List of birthdays (Format: {"Name", "Month", "Day"})
set birthdayList to {{"John Doe", "July", 26}, {"Jane Smith", "December", 10}}

on monthNameToNumber(monthName)
    set monthsList to {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
    repeat with i from 1 to count of monthsList
        if item i of monthsList is monthName then
            return i
        end if
    end repeat
    return 0 -- Return 0 if the monthName is not found in the monthsList
end monthNameToNumber

-- Function to check if it's someone's birthday today
on isBirthdayToday(birthdayData)
    set currentDate to current date
    set currentMonth to month of currentDate as string
    set currentDay to day of currentDate
    set {personName, birthMonth, birthDay} to birthdayData
    
    if currentMonth = birthMonth and currentDay = birthDay then
        return true
    else
        return false
    end if
end isBirthdayToday

-- Main script

repeat with birthdayData in birthdayList
    if isBirthdayToday(birthdayData) then
        set {personName, birthMonth, birthDay} to birthdayData
        display notification "It's " & personName & "'s birthday today!" with title "Birthday Reminder"
    end if
end repeat
