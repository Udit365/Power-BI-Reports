let
    #"PNG to PBI Image" =
        (BinaryContent as binary) as text =>
            let
                Base64 =
                    "data:image/png;base64, "
                    & Binary.ToText(
                        BinaryContent,
                        BinaryEncoding.Base64
                    )
            in
                Base64
in
    #"PNG to PBI Image"