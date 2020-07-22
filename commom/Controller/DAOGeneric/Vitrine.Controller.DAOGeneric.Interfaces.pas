unit Vitrine.Controller.DAOGeneric.Interfaces;

interface

uses
  Data.DB,
  VCL.Forms;

type
  iControllerDAOGeneric<T : class> = interface
    function Insert   : iControllerDAOGeneric<T>; overload;
    function Insert(aValue : T) : iControllerDAOGeneric<T>; overload;
    function Update   : iControllerDAOGeneric<T>; overload;
    function Update(aValue : T)   : iControllerDAOGeneric<T>; overload;

    function Delete   : iControllerDAOGeneric<T>; overload;
    function Delete(aValue : T)   : iControllerDAOGeneric<T>; overload;

    function Find     : iControllerDAOGeneric<T>; overload;

    function Find(const aID   : Integer)   : iControllerDAOGeneric<T>; overload;
    function Find(const aName : String)    : iControllerDAOGeneric<T>; overload;

    function FindLast : iControllerDAOGeneric<T>;
    function NumberRecords : Integer;

    function DataSource(aDataSource : TDataSource) : iControllerDAOGeneric<T>;
    function BindForm(aForm : TForm)               : iControllerDAOGeneric<T>;

    function OrderBy(const aValue : String) : iControllerDAOGeneric<T>;
    function Where(const aWhere, aValue : String) : iControllerDAOGeneric<T>;
    function Limit(const aFirst, aSkip : Integer) : iControllerDAOGeneric<T>;
  end;

implementation

end.
