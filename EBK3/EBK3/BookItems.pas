unit BookItems;

interface

type
  TBookItems = class
  public
    Index: Integer;
    Length: Integer;
    Name: string;
    constructor Create(myname: string; myindex, mylength: Integer);
  end;

implementation

constructor TBookItems.Create(myname: string; myindex: Integer; mylength: Integer);
begin
  self.Index := myindex;
  self.Length := mylength;
  self.Name := myname;
end;

end.

