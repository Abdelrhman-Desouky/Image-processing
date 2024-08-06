function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 18-Dec-2022 23:01:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in upload.
function upload_Callback(hObject, eventdata, handles)
% hObject    handle to upload (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a=uigetfile('*');

a=imread(a);
axes(handles.axes1);
imshow(a);


% --- Executes on button press in gray_shade.
function gray_shade_Callback(hObject, eventdata, handles)
% hObject    handle to gray_shade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=rgb2g(a,1);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in g_binary.
function g_binary_Callback(hObject, eventdata, handles)
% hObject    handle to g_binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=img_bin(a);
axes(handles.axes2);
imshow(a_gray)




% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
imshow(a);

% --- Executes on button press in gray.
function gray_Callback(hObject, eventdata, handles)
% hObject    handle to gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gray
global a
a_gray=rgb2g(a,1);
axes(handles.axes2);
imshow(a_gray)



% --- Executes on button press in r_binary.
function r_binary_Callback(hObject, eventdata, handles)
% hObject    handle to r_binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=rgbtobin(a,127);
axes(handles.axes2);
imshow(a_gray)



% --- Executes on button press in log_funt.
function log_funt_Callback(hObject, eventdata, handles)
% hObject    handle to log_funt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=transformation(a,1,1);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in inverse_funt.
function inverse_funt_Callback(hObject, eventdata, handles)
% hObject    handle to inverse_funt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=transformation(a,2);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in power.
function power_Callback(hObject, eventdata, handles)
% hObject    handle to power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=transformation(a,3,1,2);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in root_funt.
function root_funt_Callback(hObject, eventdata, handles)
% hObject    handle to root_funt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=transformation(a,4,1,2);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in neg_funt.
function neg_funt_Callback(hObject, eventdata, handles)
% hObject    handle to neg_funt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=transformation(a,5);
axes(handles.axes2);
imshow(a_gray)



% --- Executes on button press in histogram_gray.
function histogram_gray_Callback(hObject, eventdata, handles)
% hObject    handle to histogram_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a

axes(handles.axes2);
Histogram_gray_rgb(a);


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in add_fun.
function add_fun_Callback(hObject, eventdata, handles)
% hObject    handle to add_fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t=str2num(get(handles.edit_val_bright,'string'));
a_gray=brightness( a,1,t);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in mult_fun.
function mult_fun_Callback(hObject, eventdata, handles)
% hObject    handle to mult_fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a
t=str2num(get(handles.edit_val_bright,'string'));
a_gray=brightness( a,2,t);
axes(handles.axes2);
imshow(a_gray)

% --- Executes on button press in sub_fun.
function sub_fun_Callback(hObject, eventdata, handles)
% hObject    handle to sub_fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t=str2num(get(handles.edit_val_bright,'string'));
a_gray=brightness( a,3,t);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in div_fun.
function div_fun_Callback(hObject, eventdata, handles)
% hObject    handle to div_fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t=str2num(get(handles.edit_val_bright,'string'));
a_gray=brightness( a,4,t);
axes(handles.axes2);
imshow(a_gray)



function edit_val_bright_Callback(hObject, eventdata, handles)
% hObject    handle to edit_val_bright (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_val_bright as text
%        str2double(get(hObject,'String')) returns contents of edit_val_bright as a double


% --- Executes during object creation, after setting all properties.
function edit_val_bright_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_val_bright (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hist_rgb.
function hist_rgb_Callback(hObject, eventdata, handles)
% hObject    handle to hist_rgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in eq_gray.
function eq_gray_Callback(hObject, eventdata, handles)
% hObject    handle to eq_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
histo=a;
axes(handles.axes2)
histo_equaliz(histo)

% --- Executes on button press in Equlization_RGB.
function Equlization_RGB_Callback(hObject, eventdata, handles)
% hObject    handle to Equlization_RGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
histo=a;
axes(handles.axes2)
histo_equaliz_rgb(histo)

% --- Executes on button press in rotate_fun.
function rotate_fun_Callback(hObject, eventdata, handles)
% hObject    handle to rotate_fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
rotate=imrotate(a,45);
axes(handles.axes2);
imshow(rotate);

% --- Executes on button press in fourier.
function fourier_Callback(hObject, eventdata, handles)
% hObject    handle to fourier (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in inverse_four.
function inverse_four_Callback(hObject, eventdata, handles)
% hObject    handle to inverse_four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mean.
function mean_Callback(hObject, eventdata, handles)
% hObject    handle to mean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=mean_fun(a);
axes(handles.axes2);
imshow(a_gray)



% --- Executes on button press in max.
function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=max_fun(a);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in min.
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=min_fun(a);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)
% hObject    handle to median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=median_fun(a);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in midPoint.
function midPoint_Callback(hObject, eventdata, handles)
% hObject    handle to midPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sobel_v.
function sobel_v_Callback(hObject, eventdata, handles)
% hObject    handle to sobel_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
global output
[m n l]=size(a);

axes(handles.axes2);
if l==3
   output=sobel_filt_rgb(a);
else
    output=sobel_filt(a);
end




% --- Executes on button press in sobel_h.
function sobel_h_Callback(hObject, eventdata, handles)
% hObject    handle to sobel_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=sobel_filt_h(a);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in lablacian_fun.
function lablacian_fun_Callback(hObject, eventdata, handles)
% hObject    handle to lablacian_fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in salt_pepper.
function salt_pepper_Callback(hObject, eventdata, handles)
% hObject    handle to salt_pepper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t1=str2num(get(handles.edit4,'string'));
t2=str2num(get(handles.edit5,'string'));
a_gray=salt_pepper( a,t1,t2 );
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in gamma.
function gamma_Callback(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t1=str2num(get(handles.edit4,'string'));
t2=str2num(get(handles.edit5,'string'));
a_gray=noise_gamma( a,t1,t2 );
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in uniform.
function uniform_Callback(hObject, eventdata, handles)
% hObject    handle to uniform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t1=str2num(get(handles.edit4,'string'));
t2=str2num(get(handles.edit5,'string'));
a_gray=noise_uniform( a,t1,t2 );
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in gaussian.
function gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t1=str2num(get(handles.edit4,'string'));
t2=str2num(get(handles.edit5,'string'));
a_gray=noise_gussian( a,t1,t2 );
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in rayleigh.
function rayleigh_Callback(hObject, eventdata, handles)
% hObject    handle to rayleigh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t1=str2num(get(handles.edit4,'string'));
t2=str2num(get(handles.edit5,'string'));
a_gray=noise_rayleigh( a,t1,t2 );
axes(handles.axes2);
imshow(a_gray)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
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


% --- Executes on button press in exponen.
function exponen_Callback(hObject, eventdata, handles)
% hObject    handle to exponen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t1=str2num(get(handles.edit4,'string'));
a_gray=noise_exponential( a,t1 );
axes(handles.axes2);
imshow(a_gray)



% --- Executes on button press in ideal_h.
function ideal_h_Callback(hObject, eventdata, handles)
% hObject    handle to ideal_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
radio1 =(get(handles.radiobutton6,'value'));
radio2 =(get(handles.radiobutton7,'value'));
[h w l]=size(a);
t=str2num(get(handles.edit6,'string'));
axes(handles.axes2);
if radio1==1
    if l==3
        b=ideal_rgb(a,t,0);
    else
        b=ideal(a,t,0);
    end
end
if radio2==1
    if l==3
        b=ideal_rgb(a,t,1);
    else
        b=ideal(a,t,1);
    end
    
end    

imshow(b);



% --- Executes on button press in ideal_l.
function ideal_l_Callback(hObject, eventdata, handles)
% hObject    handle to ideal_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t=str2num(get(handles.edit6,'string'));
a_gray=ideal( a,t,0);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in gaussian_h.
function gaussian_h_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
radio1 =(get(handles.radiobutton6,'value'));
radio2 =(get(handles.radiobutton7,'value'));
[h w l]=size(a);
t=str2num(get(handles.edit6,'string'));
axes(handles.axes2);
if radio1==1
    if l==3
        b=gaussian_rgb(a,t,0);
    else
        b=gaussian(a,t,0);
    end
end
if radio2==1
    if l==3
        b=gaussian_rgb(a,t,1);
    else
        b=gaussian(a,t,1);
    end
    
end    

imshow(b);


% --- Executes on button press in gaussian_l.
function gaussian_l_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t=str2num(get(handles.edit6,'string'));
a_gray=gaussian( a,t,0);
axes(handles.axes2);
imshow(a_gray)


% --- Executes on button press in butter_h.
function butter_h_Callback(hObject, eventdata, handles)
% hObject    handle to butter_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global a
radio1 =(get(handles.radiobutton6,'value'));
radio2 =(get(handles.radiobutton7,'value'));
[h w l]=size(a);
t=str2num(get(handles.edit6,'string'));
axes(handles.axes2);
if radio1==1
    if l==3
        b=butter_worth_rgb(a,t,0);
    else
        b=butter_worth(a,t,0);
    end
end
if radio2==1
    if l==3
        b=butter_worth_rgb(a,t,1);
    else
        b=butter_worth(a,t,1);
    end
    
end    

imshow(b);



% --- Executes on button press in butter_l.
function butter_l_Callback(hObject, eventdata, handles)
% hObject    handle to butter_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t=str2num(get(handles.edit6,'string'));
a_gray=butter_worth( a,t,0);
axes(handles.axes2);
imshow(a_gray)

% --- Executes on button press in weight.
function weight_Callback(hObject, eventdata, handles)
% hObject    handle to weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=weight(a);
axes(handles.axes2);
imshow(a_gray)




function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
t1=str2num(get(handles.edit7,'string'));
t2=str2num(get(handles.edit9,'string'));
a_gray=stretching( a,t1,t2);
axes(handles.axes2);
imshow(a_gray)



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
val =(get(handles.popupmenu6,'value'));
switch val
    case 2
        
        b=mean_filter(a);
    case 3
        
        b= max_filter(a);
    case 4
        
        b=max_filter(a);
    case 5
        
        b=median_filter(a);
    case 6
        b=midpoint_fun(a);
        
end
axes(handles.axes2);
imshow(b);


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
val =(get(handles.popupmenu4,'value'));
switch val
    case 2
        b=average(a);
    case 3
        b= weighted(a);
    case 4
        b=correlation(a);
end
axes(handles.axes2);
imshow(b);

% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
val =(get(handles.popupmenu6,'value'));
switch val
    case 2
        f=[-1 -2 -1;0 0 0;1 2 1];
        b=detection(a,f);
    case 3
        f=[-1 0 1;-2 0 2;-1 0 1];
        b= detection(a,f);
    case 4
        f=[2 1 0;1 0 -1;0 -1 -2];
        b=detection(a,f);
    case 5
        f=[0 1 0;0 0 0;0 -1 0];
        b=detection(a,f);
    case 6
        f=[-1 0 1;-1 0 1;-1 0 1];
        b=detection(a,f);
        
end
axes(handles.axes2);
imshow(b);

% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a_gray=point_sharping(a);
axes(handles.axes2);
imshow(a_gray)
