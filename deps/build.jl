# download from https://github.com/JuliaLang/julia/pull/21968
if is_windows()
    const downloadcmd = :powershell
    function download(url::AbstractString, filename::AbstractString)
        ps = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"
        tls12 = "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12"
        client = "New-Object System.Net.Webclient"
        # in the following we escape ' with '' (see https://ss64.com/ps/syntax-esc.html)
        downloadfile = "($client).DownloadFile('$(replace(url, "'", "''"))', '$(replace(filename, "'", "''"))')"
        run(`$ps -NoProfile -Command "$tls12; $downloadfile"`)
        filename
    end
end


cd(dirname(@__FILE__)) do
    download("https://api.plot.ly/v2/plot-schema?sha1", "plotschema.json")
    download("https://cdn.plot.ly/plotly-latest.min.js", "plotly-latest.min.js")
end

include("make_schema_docs.jl")
