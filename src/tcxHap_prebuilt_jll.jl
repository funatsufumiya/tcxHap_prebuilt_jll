module tcxHap_prebuilt_jll

using Artifacts

function get_artifact_path()
    return artifact"tcxHap_prebuilt_jll"
end

function get_lib_path()
    lib = "libTcxHapJl.so"

    @static if Sys.iswindows()
        lib = "libTcxHapJl.dll"
    elseif Sys.isapple()
        lib = "libTcxHapJl.dylib"
    else
        lib = "libTcxHapJl.so"
    end

    p = joinpath(get_artifact_path(), "lib", lib)
    if isfile(p)
        return p
    else
        return nothing
    end
end

end # module tcxHap_prebuilt_jll
