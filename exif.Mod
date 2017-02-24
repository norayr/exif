MODULE exif;

 (* inspired by https://github.com/laurentClave/Leila-Picture-Toolbox-source/Exif.pas *)

TYPE 
  
  String = ARRAY 64 OF CHAR;

  TIfdTag*  =  RECORD
    ID     : INTEGER; (* Tag number *)
    Typ    : INTEGER; (* Type tag *)
    Count  : LONGINT; (* Tag length *)
    Offset : LONGINT; (* Offset / Value *)
  END;

  TExif*                  =    RECORD
    FImageDesc           : String;    (* Picture description *)
    FMake                : String;    (* Camera manufacturer *)
    FModel               : String;    (* Camera model *)
    FOrientation         : SHORTINT;  (* Image orientation; 1 - normal *)
    FOrientationDesc     : String;    (* Image orientation description *)
    FCopyright           : String;    (* Copyright *)
    FValid               : BOOLEAN;   (* Has valid Exif header *)
    FDateTime            : String;    (* Date and Time of Change *)
    FDateTimeOriginal    : String;    (* Original Date and Time *)
    FDateTimeDigitized   : String;    (* Camshot Date and Time *)
    FUserComments        : String;    (* User comments *)

    FExposure            : String;    (* Exposure *)
    FFstops              : String;
    FShutterSpeed        : String;
    FAperture            : String;
    FMaxAperture         : String;

    FExposureProgram     : Byte;
    FExposureProgramDesc : String;
    FPixelXDimension     : LONGINT;
    FPixelYDimension     : LONGINT;
    FXResolution         : LONGINT;
    FYResolution         : LONGINT;
    FMeteringMode        : SHORTINT;
    FMeteringMethod      : String;
    FLightSource         : SHORTINT;
    FLightSourceDesc     : String;
    FFlash               : SHORTINT;
    FFlashDesc           : String;
    FISO                 : INTEGER;
    FSoftware            : String;
    FArtist              : String;
    FCompressedBPP       : String;

    f                    : Files.File;
    ifdp                 : LONGINT;
    FSwap                : BOOLEAN;
    END;

    TMarker   = RECORD
      Marker  : INTEGER; (* section marker *)
      Len     : INTEGER; (* length section *)
      Indefin : ARRAY 4 OF CHAR (* Indefiner - "Exif" 00, "JFIF" 00 and ets *)
      Pad     : CHAR;    (* 0x00 *)
    END;

    TIFDHeader  = RECORD
      pad       : SHORTINT; (* 00h *)
      ByteOrder : INTEGER;  (* II (4D4D) or MM *)
      i42       : INTEGER;  (* 2A00 (magic number from the 'Hitchhiker's Guide' *)
      Offset    : LONGINT;  (* 0th offset IFD *)
      Count     : INTEGER;  (* number of IFD entries *)
    END;

    PROCEDURE SwapLong*(Value: LONGINT): LONGINT;
    VAR
      i : INTEGER;
      r : LONGINT;
    BEGIN
      r := 0;
      FOR i := 0 TO SIZE(Value) - 1 DO
        
      END;
    END SwapLong;

    PROCEDURE (exif: TExif) ReadAscii (Offset, Count: LONGINT; VAR res: String);
    BEGIN

    END ReadAscii;

    PROCEDURE (exif: TExif) ReadRatio (Offset: Cardinal): SHORTINT;
    BEGIN

    END ReadRatio;

    PROCEDURE (exif: TExif) ReadRatioStr (Offset: Cardinal; frac: BOOLEAN; VAR res: String);
    BEGIN

    END ReadRatioStr;

    PROCEDURE (exif: TExif) ReadTag (VAR tag: TIfdTag);
    BEGIN

    END ReadTag;

    PROCEDURE (exif: TExif) Init;
    BEGIN

    END Init;

    PROCEDURE (exif: TExif) ReadLongIntValue(OFFSET: LONGINT): LONGINT;
    BEGIN

    END ReadLongIntValue;

    PROCEDURE (exif: TExif) Create*;
    BEGIN

    END Create;

    PROCEDURE (exif: TExif) ReadFromFile*(FileName: String);
    BEGIN

    END ReadFromFile;

    

END exif.
