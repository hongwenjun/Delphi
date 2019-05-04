unit DeCompress;

interface

uses
  System.Classes, ZLibEx;

type
  TDeCompress = class
  public
    class function Compress(inputBytes: TArray<Byte>): TArray<Byte>; static;
    class function Decompress(inputBytes: TArray<Byte>): TArray<Byte>; static;
  end;

implementation

class function TDeCompress.Compress(inputBytes: TArray<Byte>): TArray<Byte>;
var
  buffer: TArray<Byte>;
  stream: TMemoryStream;
  stream2: TZCompressionStream;
begin
  begin
    stream := TMemoryStream.Create;
    try
      begin
        stream2 := TZCompressionStream.Create(stream);
        try
          stream2.Write(inputBytes, 0, Length(inputBytes));
          stream.Seek(0, TSeekOrigin.soBeginning);
          SetLength(buffer, stream.Size);
          stream.ReadBuffer(buffer[0], Length(buffer));
        finally
          stream2.Free;
        end
      end
    finally
      stream.Free;
    end
  end;
  Result := buffer;
end;

class function TDeCompress.Decompress(inputBytes: TArray<Byte>): TArray<Byte>;
var
  buffer: TArray<Byte>;
  Src, Dst: TMemoryStream;
  DecompStream: TZDecompressionStream;
  fs: TFileStream;
  NewSize: Integer;
begin
  fs := TFileStream.Create('\\TT3\D\de.010', fmCreate);
  fs.WriteBuffer(inputBytes[0], Length(inputBytes));
  fs.Free;
  Src := TMemoryStream.Create;
  Dst := TMemoryStream.Create;
  try
    Src.Write(inputBytes[0], Length(inputBytes));
    Src.Position := 0;
    DecompStream := TZDecompressionStream.Create(Src);
    try
      NewSize := Src.Seek(0, soFromEnd);
      Src.Seek(0, soFromBeginning);
      NewSize := Dst.CopyFrom(DecompStream, NewSize);
      Dst.Size := NewSize;
      SetLength(buffer, Dst.Size);
      Dst.ReadBuffer(buffer[0], Length(buffer));
    finally
      DecompStream.Free;
    end;
  finally
    Src.Free;
    Dst.Free;
  end;
  Result := buffer;
end;

end.

