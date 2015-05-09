clc
clear
format long;

%读取裂解炉输入变量1
[~,txt1]=xlsread('裂解炉输入变量1（进料流量DCS）.xls');
dataSize1=6213;
DCS_105=zeros(dataSize1,2);
DCS_106=zeros(dataSize1,2);
DCS_107=zeros(dataSize1,2);
DCS_108=zeros(dataSize1,2);
DCS_109=zeros(dataSize1,2);
DCS_110=zeros(dataSize1,2);
DCS_111=zeros(dataSize1,2);
DCS_112=zeros(dataSize1,2);
DCS_113=zeros(dataSize1,2);
DCS_114=zeros(dataSize1,2);
DCS_115=zeros(dataSize1,2);
DCS_1101=zeros(dataSize1,2);
DCS_1102=zeros(dataSize1,2);
DCS_1103=zeros(dataSize1,2);
DCS_1104=zeros(dataSize1,2);
for i=1:1:dataSize1
    DCS_105(i,1)=str2double(txt1(i+1,2));
    DCS_105(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_106(i,1)=str2double(txt1(i+1,3));
    DCS_106(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_107(i,1)=str2double(txt1(i+1,4));
    DCS_107(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_108(i,1)=str2double(txt1(i+1,5));
    DCS_108(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_109(i,1)=str2double(txt1(i+1,6));
    DCS_109(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_110(i,1)=str2double(txt1(i+1,7));
    DCS_110(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_111(i,1)=str2double(txt1(i+1,8));
    DCS_111(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_112(i,1)=str2double(txt1(i+1,9));
    DCS_112(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_113(i,1)=str2double(txt1(i+1,10));
    DCS_113(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_114(i,1)=str2double(txt1(i+1,11));
    DCS_114(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_115(i,1)=str2double(txt1(i+1,12));
    DCS_115(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_1101(i,1)=str2double(txt1(i+1,13));
    DCS_1101(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_1102(i,1)=str2double(txt1(i+1,14));
    DCS_1102(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_1103(i,1)=str2double(txt1(i+1,15));
    DCS_1103(i,2)=DateStr2Num(txt1(i+1,1),31);
    DCS_1104(i,1)=str2double(txt1(i+1,16));
    DCS_1104(i,2)=DateStr2Num(txt1(i+1,1),31);
end

%读取裂解炉输入变量2
[~,txt2]=xlsread('裂解炉输入变量2（FDS中间值）.xls',1);
[~,temp]=xlsread('裂解炉输入变量2（FDS中间值）.xls',2);
txt2=[txt2; temp(2:1:end,:)];
clear temp;
dataSize2=5925;
FDS_105=zeros(dataSize2,2);FDS_105_index=1;
FDS_106=zeros(dataSize2,2);FDS_106_index=1;
FDS_107=zeros(dataSize2,2);FDS_107_index=1;
FDS_108=zeros(dataSize2,2);FDS_108_index=1;
FDS_109=zeros(dataSize2,2);FDS_109_index=1;
FDS_110=zeros(dataSize2,2);FDS_110_index=1;
FDS_111=zeros(dataSize2,2);FDS_111_index=1;
FDS_112=zeros(dataSize2,2);FDS_112_index=1;
FDS_113=zeros(dataSize2,2);FDS_113_index=1;
FDS_114=zeros(dataSize2,2);FDS_114_index=1;
FDS_115=zeros(dataSize2,2);FDS_115_index=1;
FDS_1101=zeros(dataSize2,2);FDS_1101_index=1;
FDS_1102=zeros(dataSize2,2);FDS_1102_index=1;
FDS_1103=zeros(dataSize2,2);FDS_1103_index=1;
FDS_1104=zeros(dataSize2,2);FDS_1104_index=1;
for i=2:1:94801
    if strcmp(txt2(i,2),'FDS105')
        FDS_105(FDS_105_index,1)=str2double(txt2(i,3));
        FDS_105(FDS_105_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_105_index=FDS_105_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS106')
        FDS_106(FDS_106_index,1)=str2double(txt2(i,3));
        FDS_106(FDS_106_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_106_index=FDS_106_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS107')
        FDS_107(FDS_107_index,1)=str2double(txt2(i,3));
        FDS_107(FDS_107_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_107_index=FDS_107_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS108')
        FDS_108(FDS_108_index,1)=str2double(txt2(i,3));
        FDS_108(FDS_108_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_108_index=FDS_108_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS109')
        FDS_109(FDS_109_index,1)=str2double(txt2(i,3));
        FDS_109(FDS_109_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_109_index=FDS_109_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS110')
        FDS_110(FDS_110_index,1)=str2double(txt2(i,3));
        FDS_110(FDS_110_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_110_index=FDS_110_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS110')
        FDS_110(FDS_110_index,1)=str2double(txt2(i,3));
        FDS_110(FDS_110_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_110_index=FDS_110_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS111')
        FDS_111(FDS_111_index,1)=str2double(txt2(i,3));
        FDS_111(FDS_111_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_111_index=FDS_111_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS112')
        FDS_112(FDS_112_index,1)=str2double(txt2(i,3));
        FDS_112(FDS_112_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_112_index=FDS_112_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS113')
        FDS_113(FDS_113_index,1)=str2double(txt2(i,3));
        FDS_113(FDS_113_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_113_index=FDS_113_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS114')
        FDS_114(FDS_114_index,1)=str2double(txt2(i,3));
        FDS_114(FDS_114_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_114_index=FDS_114_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS115')
        FDS_115(FDS_115_index,1)=str2double(txt2(i,3));
        FDS_115(FDS_115_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_115_index=FDS_115_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS1101')
        FDS_1101(FDS_1101_index,1)=str2double(txt2(i,3));
        FDS_1101(FDS_1101_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_1101_index=FDS_1101_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS1102')
        FDS_1102(FDS_1102_index,1)=str2double(txt2(i,3));
        FDS_1102(FDS_1102_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_1102_index=FDS_1102_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS1103')
        FDS_1103(FDS_1103_index,1)=str2double(txt2(i,3));
        FDS_1103(FDS_1103_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_1103_index=FDS_1103_index+1;
        continue;
    end
    if strcmp(txt2(i,2),'FDS1104')
        FDS_1104(FDS_1104_index,1)=str2double(txt2(i,3));
        FDS_1104(FDS_1104_index,2)=DateStr2Num(txt2(i,1),31);
        FDS_1104_index=FDS_1104_index+1;
        continue;
    end
end

%读取裂解炉输入变量3
[~,txt3,data3]=xlsread('裂解炉输入变量3（COT优化值）.xls',1);
[~,temp3,data33]=xlsread('裂解炉输入变量3（COT优化值）.xls',2);
[~,temp33,data333]=xlsread('裂解炉输入变量3（COT优化值）.xls',3);
txt3=[txt3; temp3(2:1:end,:);temp33(2:1:end,:)];
data3=data3(:,1:1:3);
data3=[data3;data33(2:1:end,:);data333(2:1:end,:)];
clear temp3 temp33 data33 data333;
dataSize3=9483;
COT_105=zeros(dataSize3,2);COT_105_index=1;
COT_106=zeros(dataSize3,2);COT_106_index=1;
COT_107=zeros(dataSize3,2);COT_107_index=1;
COT_108=zeros(dataSize3,2);COT_108_index=1;
COT_109=zeros(dataSize3,2);COT_109_index=1;
COT_110=zeros(dataSize3,2);COT_110_index=1;
COT_111=zeros(dataSize3,2);COT_111_index=1;
COT_112=zeros(dataSize3,2);COT_112_index=1;
COT_113=zeros(dataSize3,2);COT_113_index=1;
COT_114=zeros(dataSize3,2);COT_114_index=1;
COT_115=zeros(dataSize3,2);COT_115_index=1;
COT_1101=zeros(dataSize3,2);COT_1101_index=1;
COT_1102=zeros(dataSize3,2);COT_1102_index=1;
COT_1103=zeros(dataSize3,2);COT_1103_index=1;
COT_1104=zeros(dataSize3,2);COT_1104_index=1;
for i=1:1:142246
    if strcmp(txt3(i,2),'Tcot105_OP')
        COT_105(COT_105_index,1)=str2double(txt3(i,3));
        COT_105(COT_105_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_105(COT_105_index,1))
            COT_105(COT_105_index,1)=cell2mat(data3(i,3));
        end
        COT_105_index=COT_105_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot106_OP')
        COT_106(COT_106_index,1)=str2double(txt3(i,3));
        COT_106(COT_106_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_106(COT_106_index,1))
            COT_106(COT_106_index,1)=cell2mat(data3(i,3));
        end
        COT_106_index=COT_106_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot107_OP')
        COT_107(COT_107_index,1)=str2double(txt3(i,3));
        COT_107(COT_107_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_107(COT_107_index,1))
            COT_107(COT_107_index,1)=cell2mat(data3(i,3));
        end
        COT_107_index=COT_107_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot108_OP')
        COT_108(COT_108_index,1)=str2double(txt3(i,3));
        COT_108(COT_108_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_108(COT_108_index,1))
            COT_108(COT_108_index,1)=cell2mat(data3(i,3));
        end
        COT_108_index=COT_108_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot109_OP')
        COT_109(COT_109_index,1)=str2double(txt3(i,3));
        COT_109(COT_109_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_109(COT_109_index,1))
            COT_109(COT_109_index,1)=cell2mat(data3(i,3));
        end
        COT_109_index=COT_109_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot110_OP')
        COT_110(COT_110_index,1)=str2double(txt3(i,3));
        COT_110(COT_110_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_110(COT_110_index,1))
            COT_110(COT_110_index,1)=cell2mat(data3(i,3));
        end
        COT_110_index=COT_110_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot111_OP')
        COT_111(COT_111_index,1)=str2double(txt3(i,3));
        COT_111(COT_111_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_111(COT_111_index,1))
            COT_111(COT_111_index,1)=cell2mat(data3(i,3));
        end
        COT_111_index=COT_111_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot112_OP')
        COT_112(COT_112_index,1)=str2double(txt3(i,3));
        COT_112(COT_112_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_112(COT_112_index,1))
            COT_112(COT_112_index,1)=cell2mat(data3(i,3));
        end
        COT_112_index=COT_112_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot113_OP')
        COT_113(COT_113_index,1)=str2double(txt3(i,3));
        COT_113(COT_113_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_113(COT_113_index,1))
            COT_113(COT_113_index,1)=cell2mat(data3(i,3));
        end
        COT_113_index=COT_113_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot114_OP')
        COT_114(COT_114_index,1)=str2double(txt3(i,3));
        COT_114(COT_114_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_114(COT_114_index,1))
            COT_114(COT_114_index,1)=cell2mat(data3(i,3));
        end
        COT_114_index=COT_114_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot115_OP')
        COT_115(COT_115_index,1)=str2double(txt3(i,3));
        COT_115(COT_115_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_115(COT_115_index,1))
            COT_115(COT_115_index,1)=cell2mat(data3(i,3));
        end
        COT_115_index=COT_115_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot1101_OP')
        COT_1101(COT_1101_index,1)=str2double(txt3(i,3));
        COT_1101(COT_1101_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_1101(COT_1101_index,1))
            COT_1101(COT_1101_index,1)=cell2mat(data3(i,3));
        end
        COT_1101_index=COT_1101_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot1102_OP')
        COT_1102(COT_1102_index,1)=str2double(txt3(i,3));
        COT_1102(COT_1102_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_1102(COT_1102_index,1))
            COT_1102(COT_1102_index,1)=cell2mat(data3(i,3));
        end
        COT_1102_index=COT_1102_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot1103_OP')
        COT_1103(COT_1103_index,1)=str2double(txt3(i,3));
        COT_1103(COT_1103_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_1103(COT_1103_index,1))
            COT_1103(COT_1103_index,1)=cell2mat(data3(i,3));
        end
        COT_1103_index=COT_1103_index+1;
        continue;
    end
    if strcmp(txt3(i,2),'Tcot1104_OP')
        COT_1104(COT_1104_index,1)=str2double(txt3(i,3));
        COT_1104(COT_1104_index,2)=DateStr2Num(txt3(i,1),31);
        if isnan(COT_1104(COT_1104_index,1))
            COT_1104(COT_1104_index,1)=cell2mat(data3(i,3));
        end
        COT_1104_index=COT_1104_index+1;
        continue;
    end
end

%读取裂解炉输出变量
[~,txt4]=xlsread('裂解炉输出变量（Fuel）.xls',1);
[~,temp]=xlsread('裂解炉输出变量（Fuel）.xls',2);
txt4=[txt4; temp(2:1:end,:)];
clear temp;
dataSize4=5770;
Fuel_105=zeros(dataSize4,2);Fuel_105_index=1;
Fuel_106=zeros(dataSize4,2);Fuel_106_index=1;
Fuel_107=zeros(dataSize4,2);Fuel_107_index=1;
Fuel_108=zeros(dataSize4,2);Fuel_108_index=1;
Fuel_109=zeros(dataSize4,2);Fuel_109_index=1;
Fuel_110=zeros(dataSize4,2);Fuel_110_index=1;
Fuel_111=zeros(dataSize4,2);Fuel_111_index=1;
Fuel_112=zeros(dataSize4,2);Fuel_112_index=1;
Fuel_113=zeros(dataSize4,2);Fuel_113_index=1;
Fuel_114=zeros(dataSize4,2);Fuel_114_index=1;
Fuel_115=zeros(dataSize4,2);Fuel_115_index=1;
Fuel_1101=zeros(dataSize4,2);Fuel_1101_index=1;
Fuel_1102=zeros(dataSize4,2);Fuel_1102_index=1;
Fuel_1103=zeros(dataSize4,2);Fuel_1103_index=1;
Fuel_1104=zeros(dataSize4,2);Fuel_1104_index=1;
for i=2:1:92321
    if strcmp(txt4(i,2),'Fuel105')
        Fuel_105(Fuel_105_index,1)=str2double(txt4(i,3));
        Fuel_105(Fuel_105_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_105_index=Fuel_105_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel106')
        Fuel_106(Fuel_106_index,1)=str2double(txt4(i,3));
        Fuel_106(Fuel_106_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_106_index=Fuel_106_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel107')
        Fuel_107(Fuel_107_index,1)=str2double(txt4(i,3));
        Fuel_107(Fuel_107_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_107_index=Fuel_107_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel108')
        Fuel_108(Fuel_108_index,1)=str2double(txt4(i,3));
        Fuel_108(Fuel_108_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_108_index=Fuel_108_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel109')
        Fuel_109(Fuel_109_index,1)=str2double(txt4(i,3));
        Fuel_109(Fuel_109_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_109_index=Fuel_109_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel110')
        Fuel_110(Fuel_110_index,1)=str2double(txt4(i,3));
        Fuel_110(Fuel_110_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_110_index=Fuel_110_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel111')
        Fuel_111(Fuel_111_index,1)=str2double(txt4(i,3));
        Fuel_111(Fuel_111_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_111_index=Fuel_111_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel112')
        Fuel_112(Fuel_112_index,1)=str2double(txt4(i,3));
        Fuel_112(Fuel_112_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_112_index=Fuel_112_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel113')
        Fuel_113(Fuel_113_index,1)=str2double(txt4(i,3));
        Fuel_113(Fuel_113_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_113_index=Fuel_113_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel114')
        Fuel_114(Fuel_114_index,1)=str2double(txt4(i,3));
        Fuel_114(Fuel_114_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_114_index=Fuel_114_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel115')
        Fuel_115(Fuel_115_index,1)=str2double(txt4(i,3));
        Fuel_115(Fuel_115_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_115_index=Fuel_115_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel1101')
        Fuel_1101(Fuel_1101_index,1)=str2double(txt4(i,3));
        Fuel_1101(Fuel_1101_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_1101_index=Fuel_1101_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel1102')
        Fuel_1102(Fuel_1102_index,1)=str2double(txt4(i,3));
        Fuel_1102(Fuel_1102_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_1102_index=Fuel_1102_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel1103')
        Fuel_1103(Fuel_1103_index,1)=str2double(txt4(i,3));
        Fuel_1103(Fuel_1103_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_1103_index=Fuel_1103_index+1;
        continue;
    end
    if strcmp(txt4(i,2),'Fuel1104')
        Fuel_1104(Fuel_1104_index,1)=str2double(txt4(i,3));
        Fuel_1104(Fuel_1104_index,2)=DateStr2Num(txt4(i,1),31);
        Fuel_1104_index=Fuel_1104_index+1;
        continue;
    end
end
clear FDS_105_index FDS_106_index FDS_107_index FDS_108_index FDS_109_index FDS_110_index FDS_111_index FDS_112_index FDS_113_index FDS_114_index FDS_115_index FDS_1101_index FDS_1102_index FDS_1103_index FDS_1104_index
clear COT_105_index COT_106_index COT_107_index COT_108_index COT_109_index COT_110_index COT_111_index COT_112_index COT_113_index FDS_114_index COT_115_index COT_1101_index COT_1102_index COT_1103_index COT_1104_index
clear Fuel_105_index Fuel_106_index Fuel_107_index Fuel_108_index Fuel_109_index Fuel_110_index Fuel_111_index Fuel_112_index Fuel_113_index Fuel_114_index Fuel_115_index Fuel_1101_index Fuel_1102_index Fuel_1103_index Fuel_1104_index

%提取公共部分，并进行线性插值
t_105_start=max([DCS_105(1,2),FDS_105(1,2),COT_105(1,2),Fuel_105(1,2)]);
t_105_end=min([DCS_105(end,2),FDS_105(end,2),COT_105(end,2),Fuel_105(end,2)]);
t_105=t_105_start:(1/24/12):t_105_end;
DCS_105_=interp1(DCS_105(:,2),DCS_105(:,1),t_105);
FDS_105_=interp1(FDS_105(:,2),FDS_105(:,1),t_105);
Fuel_105_=interp1(Fuel_105(:,2),Fuel_105(:,1),t_105);
COT_105_=interp1(COT_105(:,2),COT_105(:,1),t_105);

t_106_start=max([DCS_106(1,2),FDS_106(1,2),COT_106(1,2),Fuel_106(1,2)]);
t_106_end=min([DCS_106(end,2),FDS_106(end,2),COT_106(end,2),Fuel_106(end,2)]);
t_106=t_106_start:(1/24/12):t_106_end;
DCS_106_=interp1(DCS_106(:,2),DCS_106(:,1),t_106);
FDS_106_=interp1(FDS_106(:,2),FDS_106(:,1),t_106);
Fuel_106_=interp1(Fuel_106(:,2),Fuel_106(:,1),t_106);
COT_106_=interp1(COT_106(:,2),COT_106(:,1),t_106);

t_107_start=max([DCS_107(1,2),FDS_107(1,2),COT_107(1,2),Fuel_107(1,2)]);
t_107_end=min([DCS_107(end,2),FDS_107(end,2),COT_107(end,2),Fuel_107(end,2)]);
t_107=t_107_start:(1/24/12):t_107_end;
DCS_107_=interp1(DCS_107(:,2),DCS_107(:,1),t_107);
FDS_107_=interp1(FDS_107(:,2),FDS_107(:,1),t_107);
Fuel_107_=interp1(Fuel_107(:,2),Fuel_107(:,1),t_107);
COT_107_=interp1(COT_107(:,2),COT_107(:,1),t_107);

t_108_start=max([DCS_108(1,2),FDS_108(1,2),COT_108(1,2),Fuel_108(1,2)]);
t_108_end=min([DCS_108(end,2),FDS_108(end,2),COT_108(end,2),Fuel_108(end,2)]);
t_108=t_108_start:(1/24/12):t_108_end;
DCS_108_=interp1(DCS_108(:,2),DCS_108(:,1),t_108);
FDS_108_=interp1(FDS_108(:,2),FDS_108(:,1),t_108);
Fuel_108_=interp1(Fuel_108(:,2),Fuel_108(:,1),t_108);
COT_108_=interp1(COT_108(:,2),COT_108(:,1),t_108);

t_109_start=max([DCS_109(1,2),FDS_109(1,2),COT_109(1,2),Fuel_109(1,2)]);
t_109_end=min([DCS_109(end,2),FDS_109(end,2),COT_109(end,2),Fuel_109(end,2)]);
t_109=t_109_start:(1/24/12):t_109_end;
DCS_109_=interp1(DCS_109(:,2),DCS_109(:,1),t_109);
FDS_109_=interp1(FDS_109(:,2),FDS_109(:,1),t_109);
Fuel_109_=interp1(Fuel_109(:,2),Fuel_109(:,1),t_109);
COT_109_=interp1(COT_109(:,2),COT_109(:,1),t_109);

t_110_start=max([DCS_110(1,2),FDS_110(1,2),COT_110(1,2),Fuel_110(1,2)]);
t_110_end=min([DCS_110(end,2),FDS_110(end,2),COT_110(end,2),Fuel_110(end,2)]);
t_110=t_110_start:(1/24/12):t_110_end;
DCS_110_=interp1(DCS_110(:,2),DCS_110(:,1),t_110);
FDS_110_=interp1(FDS_110(:,2),FDS_110(:,1),t_110);
Fuel_110_=interp1(Fuel_110(:,2),Fuel_110(:,1),t_110);
COT_110_=interp1(COT_110(:,2),COT_110(:,1),t_110);

t_111_start=max([DCS_111(1,2),FDS_111(1,2),COT_111(1,2),Fuel_111(1,2)]);
t_111_end=min([DCS_111(end,2),FDS_111(end,2),COT_111(end,2),Fuel_111(end,2)]);
t_111=t_111_start:(1/24/12):t_111_end;
DCS_111_=interp1(DCS_111(:,2),DCS_111(:,1),t_111);
FDS_111_=interp1(FDS_111(:,2),FDS_111(:,1),t_111);
Fuel_111_=interp1(Fuel_111(:,2),Fuel_111(:,1),t_111);
COT_111_=interp1(COT_111(:,2),COT_111(:,1),t_111);

t_112_start=max([DCS_112(1,2),FDS_112(1,2),COT_112(1,2),Fuel_112(1,2)]);
t_112_end=min([DCS_112(end,2),FDS_112(end,2),COT_112(end,2),Fuel_112(end,2)]);
t_112=t_112_start:(1/24/12):t_112_end;
DCS_112_=interp1(DCS_112(:,2),DCS_112(:,1),t_112);
FDS_112_=interp1(FDS_112(:,2),FDS_112(:,1),t_112);
Fuel_112_=interp1(Fuel_112(:,2),Fuel_112(:,1),t_112);
COT_112_=interp1(COT_112(:,2),COT_112(:,1),t_112);

t_113_start=max([DCS_113(1,2),FDS_113(1,2),COT_113(1,2),Fuel_113(1,2)]);
t_113_end=min([DCS_113(end,2),FDS_113(end,2),COT_113(end,2),Fuel_113(end,2)]);
t_113=t_113_start:(1/24/12):t_113_end;
DCS_113_=interp1(DCS_113(:,2),DCS_113(:,1),t_113);
FDS_113_=interp1(FDS_113(:,2),FDS_113(:,1),t_113);
Fuel_113_=interp1(Fuel_113(:,2),Fuel_113(:,1),t_113);
COT_113_=interp1(COT_113(:,2),COT_113(:,1),t_113);

t_114_start=max([DCS_114(1,2),FDS_114(1,2),COT_114(1,2),Fuel_114(1,2)]);
t_114_end=min([DCS_114(end,2),FDS_114(end,2),COT_114(end,2),Fuel_114(end,2)]);
t_114=t_114_start:(1/24/12):t_114_end;
DCS_114_=interp1(DCS_114(:,2),DCS_114(:,1),t_114);
FDS_114_=interp1(FDS_114(:,2),FDS_114(:,1),t_114);
Fuel_114_=interp1(Fuel_114(:,2),Fuel_114(:,1),t_114);
COT_114_=interp1(COT_114(:,2),COT_114(:,1),t_114);

t_115_start=max([DCS_115(1,2),FDS_115(1,2),COT_115(1,2),Fuel_115(1,2)]);
t_115_end=min([DCS_115(end,2),FDS_115(end,2),COT_115(end,2),Fuel_115(end,2)]);
t_115=t_115_start:(1/24/12):t_115_end;
DCS_115_=interp1(DCS_115(:,2),DCS_115(:,1),t_115);
FDS_115_=interp1(FDS_115(:,2),FDS_115(:,1),t_115);
Fuel_115_=interp1(Fuel_115(:,2),Fuel_115(:,1),t_115);
COT_115_=interp1(COT_115(:,2),COT_115(:,1),t_115);

t_1101_start=max([DCS_1101(1,2),FDS_1101(1,2),COT_1101(1,2),Fuel_1101(1,2)]);
t_1101_end=min([DCS_1101(end,2),FDS_1101(end,2),COT_1101(end,2),Fuel_1101(end,2)]);
t_1101=t_1101_start:(1/24/12):t_1101_end;
DCS_1101_=interp1(DCS_1101(:,2),DCS_1101(:,1),t_1101);
FDS_1101_=interp1(FDS_1101(:,2),FDS_1101(:,1),t_1101);
Fuel_1101_=interp1(Fuel_1101(:,2),Fuel_1101(:,1),t_1101);
COT_1101_=interp1(COT_1101(:,2),COT_1101(:,1),t_1101);

t_1102_start=max([DCS_1102(1,2),FDS_1102(1,2),COT_1102(1,2),Fuel_1102(1,2)]);
t_1102_end=min([DCS_1102(end,2),FDS_1102(end,2),COT_1102(end,2),Fuel_1102(end,2)]);
t_1102=t_1102_start:(1/24/12):t_1102_end;
DCS_1102_=interp1(DCS_1102(:,2),DCS_1102(:,1),t_1102);
FDS_1102_=interp1(FDS_1102(:,2),FDS_1102(:,1),t_1102);
Fuel_1102_=interp1(Fuel_1102(:,2),Fuel_1102(:,1),t_1102);
COT_1102_=interp1(COT_1102(:,2),COT_1102(:,1),t_1102);

t_1103_start=max([DCS_1103(1,2),FDS_1103(1,2),COT_1103(1,2),Fuel_1103(1,2)]);
t_1103_end=min([DCS_1103(end,2),FDS_1103(end,2),COT_1103(end,2),Fuel_1103(end,2)]);
t_1103=t_1103_start:(1/24/12):t_1103_end;
DCS_1103_=interp1(DCS_1103(:,2),DCS_1103(:,1),t_1103);
FDS_1103_=interp1(FDS_1103(:,2),FDS_1103(:,1),t_1103);
Fuel_1103_=interp1(Fuel_1103(:,2),Fuel_1103(:,1),t_1103);
COT_1103_=interp1(COT_1103(:,2),COT_1103(:,1),t_1103);

t_1104_start=max([DCS_1104(1,2),FDS_1104(1,2),COT_1104(1,2),Fuel_1104(1,2)]);
t_1104_end=min([DCS_1104(end,2),FDS_1104(end,2),COT_1104(end,2),Fuel_1104(end,2)]);
t_1104=t_1104_start:(1/24/12):t_1104_end;
DCS_1104_=interp1(DCS_1104(:,2),DCS_1104(:,1),t_1104);
FDS_1104_=interp1(FDS_1104(:,2),FDS_1104(:,1),t_1104);
Fuel_1104_=interp1(Fuel_1104(:,2),Fuel_1104(:,1),t_1104);
COT_1104_=interp1(COT_1104(:,2),COT_1104(:,1),t_1104);

%处理
%105
%阶段一1:1:2850
%阶段二2850:1:3050
%阶段二3050:1:6210
drop105=[1973 4825 5235];
for i=1:1:length(drop105)
    t_105(drop105(i)-i)=[];
    DCS_105_(drop105(i)-i+1)=[];
    FDS_105_(drop105(i)-i+1)=[];
    COT_105_(drop105(i)-i+1)=[];
    Fuel_105_(drop105(i)-i+1)=[];
end
%105
%阶段一1:1:2850
%阶段二3100:1:end
drop106=[798 799 800 805 806 807 808 809 810 816 817 818 819 825 1046 1047 1048 1049 4089];
for i=1:1:length(drop106)
    t_106(drop106(i)-i)=[];
    DCS_106_(drop106(i)-i+1)=[];
    FDS_106_(drop106(i)-i+1)=[];
    COT_106_(drop106(i)-i+1)=[];
    Fuel_106_(drop106(i)-i+1)=[];
end
%1101
%阶段一1:1:4300
%阶段二4500:1:end
drop1101=[790:1:830,1046:1:1049 4440:1:4467];
for i=1:1:length(drop1101)
    t_1101(drop1101(i)-i)=[];
    DCS_1101_(drop1101(i)-i+1)=[];
    FDS_1101_(drop1101(i)-i+1)=[];
    COT_1101_(drop1101(i)-i+1)=[];
    Fuel_1101_(drop1101(i)-i+1)=[];
end
hold on
plot(DCS_1101_(4500:1:end),'k');
plot(FDS_1101_(4500:1:end),'r');
plot(COT_1101_(4500:1:end),'g');
plot(Fuel_1101_(4500:1:end),'b');
legend('DCS','FDS','COT','Fuel');


[b,bint,r,rstate]=regress(Fuel_1101_(4500:1:end)',[ones(size(DCS_1101_(4500:1:end)'))  FDS_1101_(4500:1:end)' COT_1101_(4500:1:end)'] );
predict=[ones(size(DCS_1101_(4500:1:end)')) FDS_1101_(4500:1:end)' COT_1101_(4500:1:end)']*b;
squa=0;error=0;count=0;
for i=1:1:length(predict)
    squa=squa+(predict(i)-Fuel_1101_(i+4499))^2;
    if abs(Fuel_1101_(i+4499))>200
        error=abs(error+abs(predict(i)-Fuel_1101_(i+4499))/Fuel_1101_(i+4499));
        count=count+1;
    end
end
mse=squa/length(predict);
error=error/count;
plot(predict-Fuel_1101_(4500:1:end)');



p=[DCS_109_' FDS_109_' COT_109_'];
t=Fuel_109_';
net=feedforwardnet(10);
net=train(net,p',t');