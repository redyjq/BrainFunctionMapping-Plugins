cortex = mri_to_surface('c1cos002a1001.img',0.5)

fid = fopen('tri.txt','wb');
for i=1:size(cortex.tri,1)
    fprintf(fid,'%d\t%d\t%d',cortex.tri(i,1),cortex.tri(i,2),cortex.tri(i,3));
    fprintf(fid,'\r\n');
end
fclose(fid);

fid = fopen('vert.txt','wb');
for i=1:size(cortex.vert,1)
    fprintf(fid,'%f\t%f\t%f',cortex.vert(i,1),cortex.vert(i,2),cortex.vert(i,3));
    fprintf(fid,'\r\n');
end
fclose(fid);