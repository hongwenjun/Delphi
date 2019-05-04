unit BookInfo;

interface

uses
  System.Generics.Collections, BookItems;

type
  TBookInfo = class
  public
    BookName: string;
    Chapterlist: TList<TBookItems>;
    Pic: array of Byte;
    Text: string;
    constructor Create;
  end;

implementation

constructor TBookInfo.Create;
begin
  self.Chapterlist := TList<TBookItems>.Create;
  self.Text := '';
end;

end.

