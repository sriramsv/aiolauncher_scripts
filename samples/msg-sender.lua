function on_resume()
    ui:show_lines{
        "send text",
        "send 123",
        "send table",
    }
end

function on_click(idx)
    if idx == 1 then
        aio:send_message("text", "msg-receiver.lua")
    elseif idx == 2 then
        aio:send_message(1)
    else
        aio:send_message{ "one", "two", "three" }
    end
end
