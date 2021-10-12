function util.tabletostring(tbl)
    local tablestring = [[]]

    for id, info in pairs(tbl) do 

        tablestring = tablestring.."["..id.."] = {\n"--

        for name, sd in pairs(info) do 
            if isstring(sd) then 
                tablestring = tablestring..name.." = '"..tostring(sd).."',\n"
            else
                tablestring = tablestring..name.." = "..tostring(sd)..",\n"
            end 
        end
            
        tablestring = tablestring.."},\n"

    end
    file.Write( "table.txt", tablestring )
end
