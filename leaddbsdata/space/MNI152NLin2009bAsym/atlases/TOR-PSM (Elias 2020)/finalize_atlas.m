function finalize_atlas
if ~exist([pwd,filesep,'atlas_index_automatic.mat'],'file')
    copyfile([pwd,filesep,'atlas_index.mat'],[pwd,filesep,'atlas_index_automatic.mat']);
end
load([pwd,filesep,'atlas_index_automatic.mat']);

atlases.citation.name='TOR-PSM (Elias 2020)';
atlases.citation.short='Elias et al. 2020';

atlases.citation.long{1}='Elias, G.J.B., Boutet, A., Joel, S.E., Germann, J., Gwun, D., Neudorfer, C., Gramer, R.M., Algarni, M., Paramanandam, V., Prasad, S., Beyn, M.E., Horn, A., Madhavan, R., Ranjan, M., Lozano, C.S., Kühn, A.A., Ashe, J., Kucharczyk, W., Munhoz, R.P., Giacobbe, P., Kennedy, S.H., Woodside, D.B., Kalia, S.K., Fasano, A., Hodaie, M., Lozano, A.M., 2020. Probabilistic Mapping of Deep Brain Stimulation: Insights from 15 Years of Therapy. Ann Neurol ana.25975–48. doi:10.1002/ana.25975';
atlases.citation.long{2}='STN, GPi, GPe, RN, VIM outlines taken from DISTAL atlas (Ewert 2018), see citations there; e.g. Ewert, S., Plettig, P., Li, N., Chakravarty, M.M., Collins, D.L., Herrington, T.M., Kühn, A.A., Horn, A., 2018. Toward defining deep brain stimulation targets in MNI space: A subcortical atlas based on multimodal MRI, histology and structural connectivity. NeuroImage 170, 271–282. doi:10.1016/j.neuroimage.2017.05.015';
atlases.citation.long{3}='Thalamus outline taken from CoBrALab Merged Atlas (Chakravarty 2013), see citations there; e.g. Chakravarty, M.M., Steadman, P., van Eede, M.C., Calcott, R.D., Gu, V., Shaw, P., Raznahan, A., Collins, D.L., Lerch, J.P., 2012. Performing label-fusion-based segmentation using multiple automatically generated templates. Hum Brain Mapp 34, 2635–2654. doi:10.1002/hbm.22092';

cs=ea_color_wes('all');


atlases.roi{6,1}.threshold=0.7; % dyt neg
atlases.roi{6,1}.color=addred(cs(1,:));
atlases.roi{6,2}.threshold=0.7;
atlases.roi{6,2}.color=addred(cs(1,:));
atlases.colors(6)=6;
atlases.colormap(6,:)=addred(cs(1,:));

atlases.roi{7,1}.threshold=0.3; % dyt pos
atlases.roi{7,1}.color=addgreen(cs(1,:));
atlases.roi{7,2}.threshold=0.3;
atlases.roi{7,2}.color=addgreen(cs(1,:));
atlases.colors(7)=7;
atlases.colormap(7,:)=addgreen(cs(1,:));

atlases.roi{8,1}.threshold=0.17; % pd gpi neg & CHECK
atlases.roi{8,1}.color=addred(cs(2,:));
atlases.roi{8,2}.threshold=0.17;
atlases.roi{8,2}.color=addred(cs(2,:));
atlases.colors(8)=8;
atlases.colormap(8,:)=addred(cs(2,:));

atlases.roi{9,1}.threshold=0.4; % pd gpi pos
atlases.roi{9,1}.color=addgreen(cs(2,:));
atlases.roi{9,2}.threshold=0.4;
atlases.roi{9,2}.color=addgreen(cs(2,:));
atlases.colors(9)=9;
atlases.colormap(9,:)=addgreen(cs(2,:));

atlases.roi{10,1}.threshold=0.5; % pd stn neg
atlases.roi{10,1}.color=addred(cs(3,:));
atlases.roi{10,2}.threshold=0.4;
atlases.roi{10,2}.color=addred(cs(3,:));
atlases.colors(10)=10;
atlases.colormap(10,:)=addred(cs(3,:));

atlases.roi{11,1}.threshold=0.35; % pd stn pos
atlases.roi{11,1}.color=addgreen(cs(3,:));
atlases.roi{11,2}.threshold=0.26;
atlases.roi{11,2}.color=addgreen(cs(3,:));
atlases.colors(11)=11;
atlases.colormap(11,:)=addgreen(cs(3,:));

atlases.roi{12,1}.threshold=0.17; % psych neg
atlases.roi{12,1}.color=addred(cs(4,:));
atlases.roi{12,2}.threshold=0.4;
atlases.roi{12,2}.color=addred(cs(4,:));
atlases.colors(12)=12;
atlases.colormap(12,:)=addred(cs(4,:));

atlases.roi{13,1}.threshold=0.20; % psych pos
atlases.roi{13,1}.color=addgreen(cs(4,:));
atlases.roi{13,2}.threshold=0.20;
atlases.roi{13,2}.color=addgreen(cs(4,:));
atlases.colors(13)=13;
atlases.colormap(13,:)=addgreen(cs(4,:));

atlases.roi{15,1}.threshold=0.5; % thal neg
atlases.roi{15,1}.color=addred(cs(5,:));
atlases.roi{15,2}.threshold=0.5;
atlases.roi{15,2}.color=addred(cs(5,:));
atlases.colors(15)=15;
atlases.colormap(15,:)=addred(cs(5,:));


atlases.roi{16,1}.threshold=0.25; % thal pos
atlases.roi{16,1}.color=addgreen(cs(5,:));
atlases.roi{16,2}.threshold=0.25;
atlases.roi{16,2}.color=addgreen(cs(5,:));
atlases.colors(16)=16;
atlases.colormap(16,:)=addgreen(cs(5,:));

atlases.roi{1,1}.color=cs(6,:); % GPe
atlases.roi{1,2}.color=cs(6,:);
atlases.colors(1)=1;
atlases.colormap(1,:)=cs(6,:);

atlases.roi{2,1}.color=cs(7,:); % GPi
atlases.roi{2,2}.color=cs(7,:);
atlases.colors(2)=2;
atlases.colormap(7,:)=cs(7,:);

atlases.roi{3,1}.color=cs(9,:); % RN
atlases.roi{3,2}.color=cs(9,:);
atlases.colors(3)=3;
atlases.colormap(9,:)=cs(9,:);

atlases.roi{4,1}.color=cs(8,:); % STN
atlases.roi{4,2}.color=cs(8,:);
atlases.colors(4)=4;
atlases.colormap(8,:)=cs(8,:);

atlases.roi{5,1}.color=cs(10,:); % VIM
atlases.roi{5,2}.color=cs(10,:);
atlases.colors(5)=5;
atlases.colormap(10,:)=cs(10,:);

atlases.roi{14,1}.color='none'; % Thalamus
atlases.roi{14,2}.color='none';
atlases.colors(14)=14;
atlases.colormap(14,:)=[1,1,1];

atlases.roi{14,1}.edgecolor=[1,1,1]; % Thalamus
atlases.roi{14,2}.edgecolor=[1,1,1];

save('atlas_index.mat','atlases');

function C=addred(C)
C=mean([C;1,0,0],1);
function C=addgreen(C)
C=mean([C;0,1,0],1);
