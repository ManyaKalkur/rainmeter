function Initialize()

    local path = SKIN:GetVariable('@') .. 'Data\\calendar.ics'

    local file = io.open(path, "r")
    if not file then return end

    local today = os.date("%Y%m%d")

    local currentDate = nil
    local events = {}

    for line in file:lines() do

        local dt = line:match("^DTSTART.-:(%d%d%d%d%d%d%d%d)")
        if dt then
            currentDate = dt
        end

        local summary = line:match("^SUMMARY:(.+)")
        if summary and currentDate == today then
            table.insert(events, summary)
        end

    end

    file:close()

    SKIN:Bang('!SetOption', 'Event1', 'Text', events[1] or 'No events today')
    SKIN:Bang('!SetOption', 'Event2', 'Text', events[2] or '')
    SKIN:Bang('!SetOption', 'Event3', 'Text', events[3] or '')

    SKIN:Bang('!UpdateMeter', 'Event1')
    SKIN:Bang('!UpdateMeter', 'Event2')
    SKIN:Bang('!UpdateMeter', 'Event3')

end

function Update()
    Initialize()
    return 0
end