function varargout = dsp(varargin)
% DSP MATLAB code for dsp.fig
%      DSP, by itself, creates a new DSP or raises the existing
%      singleton*.
%
%      H = DSP returns the handle to a new DSP or the handle to
%      the existing singleton*.
%
%      DSP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DSP.M with the given input arguments.
%
%      DSP('Property','Value',...) creates a new DSP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dsp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dsp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dsp

% Last Modified by GUIDE v2.5 24-Dec-2022 10:17:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dsp_OpeningFcn, ...
                   'gui_OutputFcn',  @dsp_OutputFcn, ...
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


% --- Executes just before dsp is made visible.
function dsp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dsp (see VARARGIN)

% Choose default command line output for dsp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dsp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dsp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
beep;


% % --- Executes on button press in pushbutton2.
 function pushbutton2_Callback(hObject, eventdata, handles)
 White_Noise();


% --- Executes on button press in readPlay.
function readPlay_Callback(hObject, eventdata, handles)
 x= get(handles.firstline,'String');
 Read_PlayAudio(x);






function fileName_Callback(hObject, eventdata, handles)
% hObject    handle to firstline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of firstline as text
%        str2double(get(hObject,'String')) returns contents of firstline as a double


% --- Executes during object creation, after setting all properties.
function firstline_CreateFcn(hObject, eventdata, handles)
% hObject    handle to firstline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function firstline_Callback(hObject, eventdata, handles)
% hObject    handle to firstline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of firstline as text
%        str2double(get(hObject,'String')) returns contents of firstline as a double


% --- Executes on button press in record.
function record_Callback(hObject, eventdata, handles)
Record_Audio();


% --- Executes on button press in speed.
function speed_Callback(hObject, eventdata, handles)
name= get(handles.secondline,'string');
x = str2num(get(handles.nsv,'string'));
speed(name,x);




function nspeed_Callback(hObject, eventdata, handles)
% hObject    handle to nspeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nspeed as text
%        str2double(get(hObject,'String')) returns contents of nspeed as a double


% --- Executes during object creation, after setting all properties.
function nspeed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nspeed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function secondline_Callback(hObject, eventdata, handles)
% hObject    handle to secondline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of secondline as text
%        str2double(get(hObject,'String')) returns contents of secondline as a double


% --- Executes during object creation, after setting all properties.
function secondline_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secondline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in voulmetext.
function voulmetext_Callback(hObject, eventdata, handles)
name= get(handles.secondline,'string');
x = str2num(get(handles.nsv,'string'));
volume(name,x);



function volumename_Callback(hObject, eventdata, handles)
% hObject    handle to volumename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of volumename as text
%        str2double(get(hObject,'String')) returns contents of volumename as a double


% --- Executes during object creation, after setting all properties.
function volumename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to volumename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nsv_Callback(hObject, eventdata, handles)
% hObject    handle to nsv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nsv as text
%        str2double(get(hObject,'String')) returns contents of nsv as a double


% --- Executes during object creation, after setting all properties.
function nsv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nsv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in echo.
function echo_Callback(hObject, eventdata, handles)
name= get(handles.firstline,'string');
Echo_The_Audio(name);


function echoname_Callback(hObject, eventdata, handles)
% hObject    handle to echoname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of echoname as text
%        str2double(get(hObject,'String')) returns contents of echoname as a double


% --- Executes during object creation, after setting all properties.
function echoname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to echoname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addnoise.
function addnoise_Callback(hObject, eventdata, handles)
name= get(handles.firstline,'string');
Add_Noise(name);



function noisename_Callback(hObject, eventdata, handles)
% hObject    handle to noisename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noisename as text
%        str2double(get(hObject,'String')) returns contents of noisename as a double


% --- Executes during object creation, after setting all properties.
function noisename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noisename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function remov_Callback(hObject, eventdata, handles)
% hObject    handle to remov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of remov as text
%        str2double(get(hObject,'String')) returns contents of remov as a double


% --- Executes during object creation, after setting all properties.
function remov_CreateFcn(hObject, eventdata, handles)
% hObject    handle to remov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in remove.
function remove_Callback(hObject, eventdata, handles)

remove_noise();


% --- Executes on button press in sigad.
function sigad_Callback(hObject, eventdata, handles)
x1 = str2num(get(handles.thirdlinex,'string'));
x2 = str2num(get(handles.thirdlinexx,'string'));
n1 = str2num(get(handles.n,'string'));
n2 = str2num(get(handles.nn,'string'));
[y,n]=sigsub(x1,n1,x2,n2);


function sigsubxx_Callback(hObject, eventdata, handles)
% hObject    handle to sigsubxx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigsubxx as text
%        str2double(get(hObject,'String')) returns contents of sigsubxx as a double


% --- Executes during object creation, after setting all properties.
function sigsubxx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigsubxx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigsubx_Callback(hObject, eventdata, handles)
% hObject    handle to sigsubx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigsubx as text
%        str2double(get(hObject,'String')) returns contents of sigsubx as a double


% --- Executes during object creation, after setting all properties.
function sigsubx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigsubx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigsubnn_Callback(hObject, eventdata, handles)
% hObject    handle to sigsubnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigsubnn as text
%        str2double(get(hObject,'String')) returns contents of sigsubnn as a double


% --- Executes during object creation, after setting all properties.
function sigsubnn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigsubnn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigsubn_Callback(hObject, eventdata, handles)
% hObject    handle to sigsubn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigsubn as text
%        str2double(get(hObject,'String')) returns contents of sigsubn as a double


% --- Executes during object creation, after setting all properties.
function sigsubn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigsubn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in multi.
function multi_Callback(hObject, eventdata, handles)
x1 = str2num(get(handles.thirdlinex,'string'));
x2 = str2num(get(handles.thirdlinexx,'string'));
n1 = str2num(get(handles.n,'string'));
n2 = str2num(get(handles.nn,'string'));
[y,n]=sigmult(x1,n1,x2,n2);


function thirdlinexx_Callback(hObject, eventdata, handles)
% hObject    handle to thirdlinexx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thirdlinexx as text
%        str2double(get(hObject,'String')) returns contents of thirdlinexx as a double


% --- Executes during object creation, after setting all properties.
function thirdlinexx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thirdlinexx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function thirdlinex_Callback(hObject, eventdata, handles)
% hObject    handle to thirdlinex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thirdlinex as text
%        str2double(get(hObject,'String')) returns contents of thirdlinex as a double


% --- Executes during object creation, after setting all properties.
function thirdlinex_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thirdlinex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nn_Callback(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nn as text
%        str2double(get(hObject,'String')) returns contents of nn as a double


% --- Executes during object creation, after setting all properties.
function nn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plotting.
function plotting_Callback(hObject, eventdata, handles)
a=get(handles.firstline,'string');
Plot_signal(a);



function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plot as text
%        str2double(get(hObject,'String')) returns contents of plot as a double


% --- Executes during object creation, after setting all properties.
function plot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ecg.
function ecg_Callback(hObject, eventdata, handles)
a=get(handles.ecgn,'string');
ECGsignal(a);



function ecgn_Callback(hObject, eventdata, handles)
% hObject    handle to ecgn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecgn as text
%        str2double(get(hObject,'String')) returns contents of ecgn as a double


% --- Executes during object creation, after setting all properties.
function ecgn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecgn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function ecg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
