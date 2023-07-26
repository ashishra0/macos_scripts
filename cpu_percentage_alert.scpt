-- Function to get CPU percentage status
on getCPUStatus()
    try
        set cpuUsage to (do shell script "top -l 1 -n 0 | awk '/CPU usage:/ {print $3}'")
        return cpuUsage
    on error errMsg
        return "Error: " & errMsg
    end try
end getCPUStatus

-- Main script
set cpuPercentage to getCPUStatus()

if cpuPercentage > 50 then
    display notification "CPU Usage: " & cpuPercentage with title "High CPU Usage" subtitle "Above 50%" sound name "Sosumi"
end if

