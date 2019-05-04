unit m_compressList;

interface

type
  Tm_compressList = class
  public
    _lenth: Integer;
    _offset: Integer;
    constructor Create(offset: Integer; lenth: Integer);
  end;

implementation

constructor Tm_compressList.Create(offset: Integer; lenth: Integer);
begin
  Self._lenth := lenth;
  Self._offset := offset;
end;

end.

