unit EBK3HeadStruct;

interface

type
  TEBK3HeadStruct = class
  public
    identifier: TArray<Byte>;
    header_key: UInt32;
    header_length: UInt32;
    decode_key: UInt32;
  end;

implementation

end.

