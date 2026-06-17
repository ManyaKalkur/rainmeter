function Initialize()
    GenerateCalendar()
end

function Update()
    GenerateCalendar()
    return 0
end

function GenerateCalendar()

    local month = tonumber(os.date("%m"))
    local year = tonumber(os.date("%Y"))
    local today = tonumber(os.date("%d"))

    local firstDay = os.time({
        year = year,
        month = month,
        day = 1
    })

    local startWeekday = tonumber(os.date("%w", firstDay))

    local daysInMonth = tonumber(os.date("%d",
        os.time({
            year = year,
            month = month + 1,
            day = 0
        })
    ))

    local text = ""

    for i = 0, startWeekday - 1 do
        text = text .. "    "
    end

    for day = 1, daysInMonth do

        if day == today then
    		text = text .. "[" .. string.format("%2d", day) .. "] "
        else
            text = text .. string.format("%2d  ", day)
        end

        if ((day + startWeekday) % 7 == 0) then
            text = text .. "\n"
        end

    end

    SKIN:Bang('!SetOption CalendarGrid Text "' .. text .. '"')
    SKIN:Bang('!UpdateMeter CalendarGrid')
end