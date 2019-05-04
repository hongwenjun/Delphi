unit byteinfo;

interface

uses
  m_compressList, System.Generics.Collections;

type
  Tbyteinfo = class
  public
    chaptertxtbyteresult: TArray<Byte>;
    compressblocksizelist: TList<Tm_compressList>;
    compressysdate: TArray<Byte>;
    constructor Create;
  end;

implementation

constructor Tbyteinfo.Create;
begin
  Self.compressblocksizelist := TList<Tm_compressList>.Create;
end;

end.

