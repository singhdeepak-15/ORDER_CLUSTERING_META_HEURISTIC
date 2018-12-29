function varargout = front(varargin)
% FRONT MATLAB code for front.fig
%      FRONT, by itself, creates a new FRONT or raises the existing
%      singleton*.
%
%      H = FRONT returns the handle to a new FRONT or the handle to
%      the existing singleton*.
%
%      FRONT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FRONT.M with the given input arguments.
%
%      FRONT('Property','Value',...) creates a new FRONT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before front_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to front_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help front

% Last Modified by GUIDE v2.5 02-Dec-2015 13:25:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @front_OpeningFcn, ...
                   'gui_OutputFcn',  @front_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before front is made visible.
function front_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to front (see VARARGIN)

% Choose default command line output for front
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes front wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = front_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 get(hObject,'String');% returns contents of edit1 as text
 np = str2double(get(hObject,'String'));% returns contents of edit1 as a double
handles.np = np;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

get(hObject,'String');% returns contents of edit1 as text
 nd = str2double(get(hObject,'String'));% returns contents of edit1 as a double
handles.nd = nd;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject,'String');% returns contents of edit1 as text
 nt = str2double(get(hObject,'String'));% returns contents of edit1 as a double
handles.nt = nt;
guidata(hObject,handles);



% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
contents = cellstr(get(hObject,'String')) ;%returns popupmenu1 contents as cell array
val = contents{get(hObject,'Value')}% returns selected item from popupmenu1
if strcmp(val,'WINE ')
    %fid = fopen('minmax.c','r');
    %[forma,myst] = ReadFile('wine.txt');
    load wine.txt
    handles.data = wine;
    set(handles.uitable1,'data',wine);
    'in'
%     handles.inp = myst ;
    handles.pval = 1;
else
    if strcmp(val,'IRIS ')
%         [forma,myst] = ReadFile('BINARY.CPP');
        load iris.txt
        handles.data = iris;
        set(handles.uitable1,'data',iris);
%         handles.inp = myst ;
        handles.pval = 2;
    else
        if strcmp(val,'VOWEL')
%             [forma,myst] = ReadFile('BUBBLE.CPP');
            load vowel.txt
            handles.data = vowel;
            set(handles.uitable1,'data',vowel);
            handles.pval = 3;
        else
            if strcmp(val,'GLASS')
%             [forma,myst] = ReadFile('BUBBLE.CPP');
                load glass.txt
                handles.data = glass;
                set(handles.uitable1,'data',glass);
                handles.pval = 4;
            end
        end
    end
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
contents = cellstr(get(hObject,'String')) ;%returns popupmenu1 contents as cell array
val = contents{get(hObject,'Value')};% returns selected item from popupmenu1
np = handles.np;
nd = handles.nd;
nt = handles.nt;
if strcmp(val,'GENETIC')
    data = handles.data;% = wine;
    [M,S,gb] = GAencode(np,nd,nt,1,size(data,1),-5,5,data);
    M
    S
    handles.gb = gb;
else
    if strcmp(val,'PSO')
        data = handles.data;% = iris;
        [M S gb] = PSO(np,nd,nt,1,size(data,1),-5,5,data,0);
        M
        S
        handles.gb = gb;
    else
        if strcmp(val,'HYBRID')
            data = handles.data;% = vowel;
            [M S gb] = PSO(np,nd,nt,1,size(data,1),-5,5,data,1);
            M
            S
            handles.gb = gb;
        end
    end
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gb = handles.gb;
pos = size(gb,2);
org = handles.data;
for z = 1 : size(gb,1)
    for k = 1 : pos
            di = zeros(1,length(org));
            for i = 1 : length(org)
                s = 0;
                for j = 1 : size(org,2)
                    s = s + euclid(org(gb(z,k),j),org(i,j),0,0);
                end
                di(i) = sqrt(s);
            end
            dis(k,:) = di;
    end    
    for i = 1:length(dis)
        [as,ind] = min(dis(:,i));
        cluster(i) = ind;
    end
    for i = 1 : pos
        ind = find(i == cluster);
        clen(i) = length(ind);
    end
    asc(z,:) = clen;
end
str = sprintf('%s \n%s',num2str(cluster),num2str(clen));
set(handles.edit5,'string',str);

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
