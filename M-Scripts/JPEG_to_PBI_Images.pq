let
    #"JPEG to PBI Image" =
        (BinaryContent as binary) as text =>
            let
                Base64 =
                    "data:image/jpeg;base64, "
                    & Binary.ToText(
                        BinaryContent,
                        BinaryEncoding.Base64
                    )
            in
                Base64
in
    #"JPEG to PBI Image"