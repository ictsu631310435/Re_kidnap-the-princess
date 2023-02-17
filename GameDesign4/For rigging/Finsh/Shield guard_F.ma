//Maya ASCII 2023 scene
//Name: Shield guard_F.ma
//Last modified: Sat, Feb 18, 2023 01:19:48 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 22000)";
fileInfo "UUID" "32462546-427E-B579-E089-E59975A26C48";
createNode transform -s -n "persp";
	rename -uid "49292CB7-4862-EF5C-59F4-4983850CA8B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.2532233252383125 13.01724853530312 31.856458505508961 ;
	setAttr ".r" -type "double3" -1451.1383529351835 -9365.8000000005304 1.9980754057003822e-16 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 3.5527136788005009e-15 0 ;
	setAttr ".rpt" -type "double3" 1.4243370927076868e-14 -8.205789083914934e-17 3.3642594749740718e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F3CB136A-4FB8-0963-8F66-49A83ED01F9F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 31.944897545395072;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7E68AB4B-4C89-9084-9B8A-3EB51B3E1736";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.28496239639873799 1000.1 -7.0223374204724447 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0226DDEF-44EC-4FD8-6719-7CBAB9E0F8F8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.7571375473004629;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "22A06BCB-4E65-F0A1-C4FF-8796147BB12C";
	setAttr ".t" -type "double3" -5.0493731836492612 7.9756839931343553 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "816A4FCB-4F08-C440-9736-F6802560A244";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 7.3615866005429842;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "DD114AE2-41BE-40F4-6FD8-F7A4FAF4427E";
	setAttr ".t" -type "double3" 1000.1 3.6380480693597921 1.2915638893819101 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6BA88DE9-410B-1BD2-E0D1-CB91E7FEBCDA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 35.938354997767028;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "left";
	rename -uid "62176B12-4B3A-64FF-1EB5-9391BD624C8C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "ED3F2BC0-4796-0FE7-973D-F5A7AA64AE77";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane3";
	rename -uid "DEFA3CFF-4D12-50CB-9B00-F9A0DD177D79";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.3180461458382586 11.74561271059242 -24.076219180740384 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode imagePlane -n "imagePlaneShape3" -p "imagePlane3";
	rename -uid "5385A1DA-49F0-E3B2-F5D3-D9B327A8328A";
	setAttr -k off ".v";
	setAttr ".fc" 127;
	setAttr ".imn" -type "string" "D:/Leoput Files/Shield_guard.png";
	setAttr ".cov" -type "short2" 3507 2480 ;
	setAttr ".dlc" no;
	setAttr ".w" 35.07;
	setAttr ".h" 24.8;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "back";
	rename -uid "AA03299F-4240-5C65-9771-3CAA4281FCED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.7574402754483076 17.122925508080606 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "Model_group";
	rename -uid "229FA025-41F1-57B9-8D00-A6B573889C6C";
createNode transform -n "group1" -p "Model_group";
	rename -uid "C057ADD1-4531-19F9-ADB8-4C9E64C46FDF";
createNode transform -n "Bell_F_Veil_F" -p "group1";
	rename -uid "FBC7684F-440B-8AEF-8BB5-DAA0507ACCC2";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0.83398223192647247 0 ;
	setAttr ".sp" -type "double3" 0 0.83398223192647247 0 ;
createNode mesh -n "Bell_F_Veil_FShape" -p "Bell_F_Veil_F";
	rename -uid "6F3E4E77-4C5E-880A-70A4-FFB031DCB461";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5031248927116394 0.50095772743225098 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt";
	setAttr ".pt[1]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[2]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[5]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[7]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[8]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[12]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[13]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[15]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[16]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[17]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[20]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[22]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[23]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[28]" -type "float3" 1.7881393e-07 0 0 ;
	setAttr ".pt[29]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[31]" -type "float3" 1.7881393e-07 0 0 ;
	setAttr ".pt[32]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[33]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[36]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".pt[37]" -type "float3" -2.9802322e-07 0 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "Bell_F_Veil_FShapeOrig" -p "Bell_F_Veil_F";
	rename -uid "34026034-4B08-E57A-25AA-268C7E477B0D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.84080982 0.36017546
		 0.82543492 0.36354557 0.85297883 0.28288317 0.86418808 0.29154378 0.88375145 0.41122147
		 0.87458348 0.42400655 0.97903371 0.35689992 0.95253742 0.28970137 0.96337748 0.28072065
		 0.99449062 0.35956085 0.9387511 0.40793309 0.94891346 0.42022312 0.87043953 0.42394456
		 0.82230711 0.36418664 0.91200984 0.43425873 0.91233194 0.43755478 0.84990454 0.28722048
		 0.95313203 0.42004791 0.86507922 0.26487243 0.86786842 0.26957136 0.99757743 0.36006629
		 0.90787244 0.26307517 0.90774322 0.25766206 0.96663666 0.2848672 0.95034528 0.26396054
		 0.94760025 0.26867771 0.8454634 0.35907641 0.88413411 0.40469456 0.86862814 0.29610687
		 0.91145599 0.4196963 0.91138065 0.41474685 0.87494141 0.28496271 0.87880605 0.29044116
		 0.93800312 0.40135688 0.90764952 0.27626592 0.90785074 0.28033096 0.97435868 0.35603195
		 0.94167221 0.28344262 0.93785644 0.2890763 0.948295 0.29435766 0.86803401 0.17013669
		 0.9070977 0.12921619 0.94653845 0.1697551;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".vt[0:42]"  -0.59230226 4.8319149 -1.16247261 -0.59229892 4.49810362 -1.16247308
		 -1.53733706 4.4935832 -0.082276642 -1.54487944 4.82739449 -0.082276642 -3.1005463e-09 4.82739449 -1.35008168
		 -5.9914703e-07 4.49357986 -1.35008264 -0.9947145 4.82739544 1.31298482 -0.99471259 4.49358177 1.31298494
		 -6.0844866e-07 4.49357748 1.63941967 -1.2402185e-08 4.82739449 1.63942027 0.59230226 4.8319149 -1.11824274
		 1.54487944 4.82739449 -0.082276642 1.53733587 4.4935832 -0.082276642 0.59229773 4.49810362 -1.11824322
		 0.9947145 4.82739544 1.31298482 0.9947114 4.49358177 1.31298494 -1.42475677 4.4935832 -0.062771402
		 -0.59229904 4.49810362 -1.07934618 -1.44121599 4.82739544 -0.062771402 -0.59230173 4.8319149 -1.023496628
		 -5.9914703e-07 4.49357986 -1.2726444 -3.1005463e-09 4.82739449 -1.24744368 -6.0844866e-07 4.49357748 1.48887599
		 -0.99471259 4.49358177 1.22860742 -1.2402185e-08 4.82739449 1.53899312 -0.89470822 4.82739544 1.20725811
		 1.44121599 4.82739544 -0.062771402 0.59230173 4.8319149 -0.9792667 1.42475653 4.4935832 -0.062771402
		 0.59229785 4.49810362 -1.035116196 0.89470822 4.82739544 1.20725811 0.99471235 4.49358177 1.22860742
		 -0.73332614 4.49358082 1.30862236 -0.73332614 4.49358082 1.4103868 -0.73332739 4.82739449 1.4103868
		 -0.65960026 4.82739449 1.30605268 0.73332494 4.49358082 1.30862236 0.73332494 4.49358082 1.4103868
		 0.73332739 4.82739449 1.4103868 0.65960026 4.82739449 1.30605268 -1.2402097e-08 1.85387158 1.48887599
		 -0.73333263 2.65993929 1.30862236 0.73333263 2.65993929 1.30862236;
	setAttr -s 75 ".ed[0:74]"  0 1 1 2 1 0 3 2 0 3 0 0 4 5 0 1 5 0 0 4 0
		 6 7 1 8 33 0 9 8 0 9 34 0 7 2 0 6 3 0 11 10 0 11 12 0 12 13 0 10 13 1 10 4 0 13 5 0
		 9 38 0 8 37 0 14 15 1 14 11 0 15 12 0 2 16 0 1 17 0 16 17 0 3 18 0 0 19 0 18 19 0
		 5 20 0 17 20 0 4 21 0 19 21 0 8 22 0 7 23 0 22 32 0 9 24 0 6 25 0 24 35 0 23 16 0
		 25 18 0 11 26 0 10 27 0 26 27 0 12 28 0 13 29 0 28 29 0 27 21 0 29 20 0 14 30 0 24 39 0
		 15 31 0 22 36 0 30 26 0 31 28 0 32 23 0 33 7 0 34 6 0 35 25 0 32 33 1 33 34 1 34 35 1
		 36 31 0 37 15 0 38 14 0 39 30 0 36 37 1 37 38 1 38 39 1 22 40 0 32 41 0 40 41 0 36 42 0
		 40 42 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 0 -2 -3 3
		mu 0 4 4 5 1 0
		f 4 4 -6 -1 6
		mu 0 4 29 14 5 4
		f 4 7 -58 61 58
		mu 0 4 3 2 19 31
		f 4 2 -12 -8 12
		mu 0 4 0 1 2 3
		f 4 -14 14 15 -17
		mu 0 4 10 6 9 11
		f 4 -18 16 18 -5
		mu 0 4 29 10 11 14
		f 4 68 -20 9 20
		mu 0 4 25 37 34 21
		f 4 -23 21 23 -15
		mu 0 4 6 7 8 9
		f 4 1 25 -27 -25
		mu 0 4 1 5 12 13
		f 4 -4 27 29 -29
		mu 0 4 4 0 26 27
		f 4 5 30 -32 -26
		mu 0 4 5 14 15 12
		f 4 -7 28 33 -33
		mu 0 4 29 4 27 30
		f 4 60 57 35 -57
		mu 0 4 18 19 2 16
		f 4 -59 62 59 -39
		mu 0 4 3 31 32 28
		f 4 11 24 -41 -36
		mu 0 4 2 1 13 16
		f 4 -13 38 41 -28
		mu 0 4 0 3 28 26
		f 4 13 43 -45 -43
		mu 0 4 6 10 33 36
		f 4 -16 45 47 -47
		mu 0 4 11 9 20 17
		f 4 17 32 -49 -44
		mu 0 4 10 29 30 33
		f 4 -19 46 49 -31
		mu 0 4 14 11 17 15
		f 4 19 69 -52 -38
		mu 0 4 34 37 38 35
		f 4 67 -21 34 53
		mu 0 4 24 25 21 22
		f 4 22 42 -55 -51
		mu 0 4 7 6 36 39
		f 4 -24 52 55 -46
		mu 0 4 9 8 23 20
		f 4 8 -61 -37 -35
		mu 0 4 21 19 18 22
		f 4 -62 -9 -10 10
		mu 0 4 31 19 21 34
		f 4 -63 -11 37 39
		mu 0 4 32 31 34 35
		f 4 -65 -68 63 -53
		mu 0 4 8 25 24 23
		f 4 -66 -69 64 -22
		mu 0 4 7 37 25 8
		f 4 -70 65 50 -67
		mu 0 4 38 37 7 39
		f 4 36 71 -73 -71
		mu 0 4 22 18 40 41
		f 4 -54 70 74 -74
		mu 0 4 24 22 41 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 23 
		0 0 
		1 0 
		2 0 
		3 0 
		4 0 
		5 0 
		6 0 
		7 0 
		8 0 
		9 0 
		10 0 
		11 0 
		14 0 
		18 0 
		19 0 
		21 0 
		22 0 
		24 0 
		25 0 
		29 0 
		31 0 
		34 0 
		37 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_Shoulder_pCube_F" -p "group1";
	rename -uid "E51CFDEA-471A-3FF4-D051-BB85528BE40D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.5074718513488037 8.2931278973693736 -0.035823957359092565 ;
	setAttr ".sp" -type "double3" 2.5074718513488037 8.2931278973693736 -0.035823957359092565 ;
createNode mesh -n "L_Shoulder_pCube_FShape" -p "L_Shoulder_pCube_F";
	rename -uid "688EBFFF-4674-60E0-9F34-4D8BC8E05FD4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.084900438785552979 0.29842990636825562 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "L_Shoulder_pCube_FShapeOrig" -p "L_Shoulder_pCube_F";
	rename -uid "CD0FB6BD-45C4-F865-9141-9AA9F5B1E394";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 31 ".uvst[0].uvsp[0:30]" -type "float2" 0.074630916 0.25018492
		 0.076589257 0.25012591 0.074737638 0.27337843 0.072510689 0.27178371 0.077315211
		 0.22692248 0.074966252 0.22847623 0.078555644 0.25002307 0.077070981 0.27499121 0.079761982
		 0.2253806 0.02759552 0.27214468 0.027072012 0.24939218 0.029446483 0.2495136 0.029329836
		 0.27028173 0.02584368 0.27415401 0.024728 0.24927667 0.029293358 0.226345 0.030920386
		 0.22839317 0.027669609 0.22416104 0.051357687 0.22233714 0.051895022 0.21997215 0.052563667
		 0.21759313 0.047573507 0.25063923 0.049650133 0.28120649 0.049428999 0.27895778 0.049983323
		 0.28379437 0.10670632 0.25378686 0.099436417 0.28325966 0.12178935 0.27884457 0.1249085
		 0.25529268 0.10457528 0.22332579 0.12594441 0.23122293;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[2]" -type "float3" 0.15829816 0.011853205 -0.13107172 ;
	setAttr ".pt[3]" -type "float3" -0.10932411 0.090512842 -0.13534383 ;
	setAttr ".pt[4]" -type "float3" 0.15829812 0.011853444 0.1310717 ;
	setAttr ".pt[5]" -type "float3" -0.10932411 0.063773461 0.1267996 ;
	setAttr ".pt[8]" -type "float3" 0.15829812 -0.05184751 -2.1000706e-09 ;
	setAttr ".pt[9]" -type "float3" -0.15829816 0.017907247 -0.0042721224 ;
	setAttr ".pt[15]" -type "float3" 0.027226297 0.039121222 0.16799484 ;
	setAttr ".pt[16]" -type "float3" 0.027226483 -0.09051276 4.189716e-08 ;
	setAttr ".pt[17]" -type "float3" 0.027226297 0.02731844 -0.16799484 ;
	setAttr -s 26 ".vt[0:25]"  1.75043893 8.15081978 0.59100318 3.030294418 7.77464485 0.61143386
		 1.75043893 8.3220644 0.59100318 3.030294895 7.945889 0.61143386 1.75043917 8.32206345 -0.66265106
		 3.030294895 8.073764801 -0.64222038 1.75043917 8.15081978 -0.66265106 3.030294418 7.90252018 -0.64222038
		 1.75043917 8.62670135 -0.03582393 3.26450443 8.2931118 -0.015393278 3.26450491 8.12186718 -0.01539328
		 1.75043917 8.45545769 -0.03582393 2.37726688 8.076859474 0.76758146 2.37726593 8.64036655 -0.035823934
		 2.37726688 8.031564713 -0.83922935 2.37726688 8.19165993 -0.83922935 2.37726593 8.81161118 -0.035824142
		 2.37726688 8.2481041 0.76758146 1.75043917 8.23644161 0.59100318 2.37726593 8.16248226 0.76758146
		 3.030294895 7.86026621 0.61143386 3.26450491 8.20748901 -0.015393277 3.030294418 7.98814297 -0.64222038
		 2.37726688 8.1171875 -0.83922935 1.75043917 8.23644257 -0.66265106 1.75043917 8.54107857 -0.035823926;
	setAttr -s 48 ".ed[0:47]"  0 12 0 2 17 0 4 15 0 6 14 0 0 18 0 1 20 0
		 2 8 0 3 9 0 4 24 0 5 22 0 6 11 0 7 10 0 8 4 0 9 5 0 10 1 0 11 0 0 8 16 1 9 21 1 10 13 1
		 11 25 1 12 1 0 13 11 1 14 7 0 15 5 0 16 9 1 17 3 0 12 13 1 13 14 1 14 23 1 15 16 1
		 16 17 1 17 19 1 18 2 0 19 12 1 20 3 0 21 10 1 22 7 0 23 15 1 24 6 0 25 8 1 18 19 1
		 19 20 1 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 18 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 31 41 34 -26
		mu 0 4 18 19 4 5
		f 4 29 24 13 -24
		mu 0 4 23 21 0 3
		f 4 44 37 23 9
		mu 0 4 2 22 23 3
		f 4 27 22 11 18
		mu 0 4 25 26 7 6
		f 4 17 43 -10 -14
		mu 0 4 0 1 2 3
		f 4 46 39 12 8
		mu 0 4 9 10 11 12
		f 4 30 25 7 -25
		mu 0 4 21 18 5 0
		f 4 42 -18 -8 -35
		mu 0 4 4 1 0 5
		f 4 26 -19 14 -21
		mu 0 4 29 25 6 8
		f 4 -40 47 32 6
		mu 0 4 11 10 15 16
		f 4 -22 -27 -1 -16
		mu 0 4 28 25 29 30
		f 4 3 -28 21 -11
		mu 0 4 27 26 25 28
		f 4 2 -38 45 -9
		mu 0 4 12 23 22 9
		f 4 16 -30 -3 -13
		mu 0 4 11 21 23 12
		f 4 1 -31 -17 -7
		mu 0 4 16 18 21 11
		f 4 40 -32 -2 -33
		mu 0 4 15 19 18 16
		f 4 0 -34 -41 -5
		mu 0 4 17 20 19 15
		f 4 -42 33 20 5
		mu 0 4 4 19 20 8
		f 4 -15 -36 -43 -6
		mu 0 4 8 6 1 4
		f 4 -44 35 -12 -37
		mu 0 4 2 1 6 7
		f 4 28 -45 36 -23
		mu 0 4 24 22 2 7
		f 4 -46 -29 -4 -39
		mu 0 4 9 22 24 13
		f 4 10 19 -47 38
		mu 0 4 13 14 10 9
		f 4 -48 -20 15 4
		mu 0 4 15 10 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 16 
		0 0 
		2 0 
		3 0 
		4 0 
		5 0 
		6 0 
		7 0 
		8 0 
		9 0 
		11 0 
		12 0 
		13 0 
		15 0 
		16 0 
		17 0 
		21 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_knee_F" -p "group1";
	rename -uid "14AAB752-4465-E370-1CCB-C88E3326821A";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.91553997993469238 1.394080638885498 0.96505898237228394 ;
	setAttr ".sp" -type "double3" 0.91553997993469238 1.394080638885498 0.96505898237228394 ;
createNode mesh -n "L_knee_FShape" -p "L_knee_F";
	rename -uid "F55A7745-482B-504D-A8A8-10BCF6A90426";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.16572903096675873 0.42566542327404022 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "L_knee_FShapeOrig" -p "L_knee_F";
	rename -uid "B7F8DA38-4390-7ED6-B683-E1AA8DC28C49";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 11 ".uvst[0].uvsp[0:10]" -type "float2" 0.1447714 0.42559412
		 0.16169861 0.40873253 0.16212627 0.4430165 0.12741652 0.40817174 0.12784421 0.44245571
		 0.20757329 0.44670436 0.16565779 0.44656172 0.16580066 0.40464628 0.20771593 0.40478906
		 0.12374213 0.44654199 0.12388501 0.40462649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0.06005637 0.013452033 
		-0.060056336 1.2621527e-08 0.013452033 0.060056366 1.2621527e-08 0.013452033 0 -0.06005637 
		0.013452033 0 1.3322676e-15 -9.3132257e-10 0 -1.4901161e-08 0 0 -3.7252903e-09 -9.3132257e-10 
		1.4901161e-08 3.5527137e-15 0 0 1.2621527e-08 -0.013452031;
	setAttr -s 9 ".vt[0:8]"  0.91553998 1.053292274 1.0064578056 1.25632834 1.39408064 1.0064578056
		 0.57475162 1.39408064 1.0064578056 0.91553998 1.73486912 1.0064578056 0.57475162 1.39408064 0.92366016
		 0.91553998 1.73486912 0.92366016 0.91553998 1.053292274 0.92366016 1.25632834 1.39408064 0.92366016
		 0.91553998 1.39408064 1.15912426;
	setAttr -s 16 ".ed[0:15]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 3 8 1 8 0 1 2 8 1 8 1 1;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 3 15 5 12
		mu 0 3 0 1 2
		f 4 1 7 -3 -7
		mu 0 4 4 2 6 9
		f 4 2 9 -4 -9
		mu 0 4 5 6 7 8
		f 4 3 11 -1 -11
		mu 0 4 10 7 1 3
		f 4 -12 -10 -8 -6
		mu 0 4 1 7 6 2
		f 4 10 4 6 8
		mu 0 4 10 3 4 9
		f 3 14 -13 -2
		mu 0 3 4 0 2
		f 3 -14 -15 -5
		mu 0 3 3 0 4
		f 3 0 -16 13
		mu 0 3 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 7 
		1 0 
		2 0 
		3 0 
		4 0 
		6 0 
		7 0 
		10 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "head_belt_F" -p "group1";
	rename -uid "3CD314FE-4991-1ACF-4F0E-C9A03C2F313F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 4.6575722262159296 1.6013821507736661 ;
	setAttr ".sp" -type "double3" 0 4.6575722262159296 1.6013821507736661 ;
createNode mesh -n "head_belt_FShape" -p "head_belt_F";
	rename -uid "211E9296-4BEF-930E-146A-AC83DE162542";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89665204286575317 0.34653261303901672 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "head_belt_FShapeOrig" -p "head_belt_F";
	rename -uid "1ECEC3D2-4E0D-50FA-4A79-DA82BC585190";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 11 ".uvst[0].uvsp[0:10]" -type "float2" 0.89663351 0.34848121
		 0.91727364 0.33294344 0.91439521 0.36791629 0.87883437 0.32758206 0.87603045 0.36548316
		 0.9563396 0.3747679 0.91800851 0.3718276 0.92227483 0.32915294 0.96067894 0.33496469
		 0.87103897 0.36965775 0.87521124 0.3232865;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0 0.088840693 0.019899432 
		-0.088840596 0 0.019899432 0.088840589 0 0.019899432 0 -0.088840693 0.019899432 0 
		0 0 0 0 0 0 0 0 -3.7252903e-09 0 0 0 0 -0.019899437;
	setAttr -s 9 ".vt[0:8]"  -2.0861626e-07 4.2060647 1.65623105 0.45150739 4.65757227 1.65623105
		 -0.45150733 4.65757227 1.65623105 2.3841858e-07 5.10907984 1.65623105 -0.45150733 4.65757227 1.54653335
		 2.3841858e-07 5.10907984 1.54653335 -2.0861626e-07 4.2060647 1.54653335 0.45150739 4.65757227 1.54653335
		 3.2417827e-08 4.65757227 1.85849762;
	setAttr -s 16 ".ed[0:15]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 3 8 1 8 0 1 2 8 1 8 1 1;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 3 15 5 12
		mu 0 3 0 1 2
		f 4 1 7 -3 -7
		mu 0 4 4 2 6 9
		f 4 2 9 -4 -9
		mu 0 4 5 6 7 8
		f 4 3 11 -1 -11
		mu 0 4 10 7 1 3
		f 4 -12 -10 -8 -6
		mu 0 4 1 7 6 2
		f 4 10 4 6 8
		mu 0 4 10 3 4 9
		f 3 14 -13 -2
		mu 0 3 4 0 2
		f 3 -14 -15 -5
		mu 0 3 3 0 4
		f 3 0 -16 13
		mu 0 3 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 7 
		1 0 
		2 0 
		3 0 
		4 0 
		6 0 
		7 0 
		10 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_Knee_F" -p "group1";
	rename -uid "E52D66D3-41E8-1187-B7B2-4F8E8267E351";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.91553997993469238 1.394080638885498 0.96505898237228394 ;
	setAttr ".sp" -type "double3" -0.91553997993469238 1.394080638885498 0.96505898237228394 ;
createNode mesh -n "R_Knee_FShape" -p "R_Knee_F";
	rename -uid "21116470-405D-0834-CA0D-5787EC9966F9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.051598936319351196 0.42499381303787231 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "R_Knee_FShapeOrig" -p "R_Knee_F";
	rename -uid "8825B116-44D8-768A-AB99-89988F00EB09";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 11 ".uvst[0].uvsp[0:10]" -type "float2" 0.051860601 0.42476124
		 0.034980536 0.4078525 0.069264054 0.40738738 0.034457207 0.44213513 0.068740666 0.44167003
		 0.072831333 0.4457677 0.072805434 0.40385202 0.11472106 0.40382627 0.11474684 0.4457418
		 0.030889869 0.40375483 0.030915827 0.44567046;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[0]" -type "float3" 1.2621523e-08 0.06005637 0.013452033 ;
	setAttr ".pt[1]" -type "float3" -0.060056366 1.2621527e-08 0.013452033 ;
	setAttr ".pt[2]" -type "float3" 0.060056336 1.2621527e-08 0.013452033 ;
	setAttr ".pt[3]" -type "float3" 0 -0.06005637 0.013452033 ;
	setAttr ".pt[8]" -type "float3" 0 1.2621527e-08 -0.013452031 ;
	setAttr -s 9 ".vt[0:8]"  -0.91554004 1.053292274 1.0064578056 -0.57475162 1.39408064 1.0064578056
		 -1.25632834 1.39408064 1.0064578056 -0.91553998 1.73486912 1.0064578056 -1.25632834 1.39408064 0.92366016
		 -0.91553998 1.73486912 0.92366016 -0.91554004 1.053292274 0.92366016 -0.57475162 1.39408064 0.92366016
		 -0.91553998 1.39408064 1.15912426;
	setAttr -s 16 ".ed[0:15]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 3 8 1 8 0 1 2 8 1 8 1 1;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 3 15 5 12
		mu 0 3 0 1 2
		f 4 1 7 -3 -7
		mu 0 4 4 2 6 5
		f 4 2 9 -4 -9
		mu 0 4 5 6 7 8
		f 4 3 11 -1 -11
		mu 0 4 10 9 1 3
		f 4 -12 -10 -8 -6
		mu 0 4 1 9 6 2
		f 4 10 4 6 8
		mu 0 4 10 3 4 5
		f 3 14 -13 -2
		mu 0 3 4 0 2
		f 3 -14 -15 -5
		mu 0 3 3 0 4
		f 3 0 -16 13
		mu 0 3 3 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 8 
		1 0 
		2 0 
		3 0 
		4 0 
		5 0 
		6 0 
		9 0 
		10 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_Veil_pCube_F" -p "group1";
	rename -uid "0295B9B5-48AC-33D4-2366-78811D3462E6";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 4.0350781715054946 0 ;
	setAttr ".sp" -type "double3" 0 4.0350781715054946 0 ;
createNode mesh -n "L_Veil_pCube_FShape" -p "L_Veil_pCube_F";
	rename -uid "5DFBDC0D-4675-BB8F-B788-DBA15136F247";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.08546912670135498 0.069849804043769836 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "L_Veil_pCube_FShapeOrig" -p "L_Veil_pCube_F";
	rename -uid "F9EC4199-4EA9-8DF1-1B97-3988BA1C4C74";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.03232497 0.059758276
		 0.058563709 0.06416063 0.054245591 0.093838632 0.030948639 0.096445203 0.039729118
		 0.037512779 0.061229408 0.042370792 0.083028018 0.069742948 0.076683164 0.10218683
		 0.082601249 0.047740489 0.10646462 0.10282364 0.11245626 0.070864782 0.13716006 0.077317297
		 0.13146996 0.10873294 0.089005947 0.071795017 0.080648482 0.10536298 0.11473602 0.049501523
		 0.13998961 0.055821396 0.089032412 0.047594111 0.054416239 0.10084775 0.026057929
		 0.10272789 0.063057899 0.036699768 0.035475731 0.032022879 0.025045782 0.059990153;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[1]" -type "float3" -0.05481676 0.24675308 -0.20696409 ;
	setAttr ".pt[3]" -type "float3" 0.071707837 -0.2467531 -0.20696409 ;
	setAttr ".pt[5]" -type "float3" 0.14539336 -0.2467531 0.20696408 ;
	setAttr ".pt[7]" -type "float3" 0.018868636 0.24675308 0.20696408 ;
	setAttr ".pt[9]" -type "float3" -0.018868541 -0.2467531 0.026444376 ;
	setAttr ".pt[10]" -type "float3" -0.14539336 0.24675308 0.026444374 ;
	setAttr ".pt[13]" -type "float3" 0.0021604719 0.047710247 -0.20696409 ;
	setAttr ".pt[14]" -type "float3" -0.088415951 0.047710247 0.026444376 ;
	setAttr ".pt[15]" -type "float3" 0.075845912 0.047710247 0.20696408 ;
	setAttr -s 18 ".vt[0:17]"  1.73149347 2.46215534 1.044743061 1.98151922 2.46215534 1.044743061
		 1.11911893 4.85070896 1.044743061 1.36914432 4.85070896 1.044743061 0.7624836 4.85070896 -0.95865583
		 1.012508988 4.85070896 -0.95865583 1.37485874 2.46215534 -0.95865583 1.62488437 2.46215534 -0.95865583
		 1.55750561 4.85070896 -0.08494629 1.807531 4.85070896 -0.08494629 2.41990685 2.46215534 -0.084946275
		 2.16988087 2.46215534 -0.084946275 1.45572615 3.42551613 1.044743061 1.7057513 3.42551613 1.044743061
		 2.14413834 3.42551613 -0.084946282 1.34911621 3.42551613 -0.95865583 1.099090934 3.42551613 -0.95865583
		 1.89411306 3.42551613 -0.084946282;
	setAttr -s 32 ".ed[0:31]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 8 0
		 3 9 0 4 16 0 5 15 0 6 11 0 7 10 0 8 4 0 9 5 0 10 1 0 11 0 0 8 9 1 9 14 1 10 11 1
		 11 17 1 12 2 0 13 3 0 14 10 1 15 7 0 16 6 0 17 8 1 12 13 1 13 14 1 14 15 1 15 16 1
		 16 17 1 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 26 21 -2 -21
		mu 0 4 22 0 3 19
		f 4 16 13 -3 -13
		mu 0 4 18 2 7 14
		f 4 2 9 29 -9
		mu 0 4 14 7 6 13
		f 4 3 11 18 -11
		mu 0 4 17 8 5 20
		f 4 17 28 -10 -14
		mu 0 4 2 1 6 7
		f 4 30 25 12 8
		mu 0 4 13 10 9 14
		f 4 1 7 -17 -7
		mu 0 4 19 3 2 18
		f 4 27 -18 -8 -22
		mu 0 4 0 1 2 3
		f 4 -19 14 -1 -16
		mu 0 4 20 5 4 21
		f 4 -26 31 20 6
		mu 0 4 9 10 11 12
		f 4 0 5 -27 -5
		mu 0 4 21 4 0 22
		f 4 -15 -23 -28 -6
		mu 0 4 4 5 1 0
		f 4 -29 22 -12 -24
		mu 0 4 6 1 5 8
		f 4 -30 23 -4 -25
		mu 0 4 13 6 8 17
		f 4 10 19 -31 24
		mu 0 4 17 15 10 13
		f 4 -32 -20 15 4
		mu 0 4 11 10 15 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 13 
		0 0 
		2 0 
		3 0 
		4 0 
		5 0 
		6 0 
		7 0 
		8 0 
		13 0 
		14 0 
		17 0 
		19 0 
		21 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "helmet_F" -p "group1";
	rename -uid "8CEDEB9A-43BE-6F55-B7B9-0F8CB5DF5A90";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 11.340796947479248 -0.3203732967376709 ;
	setAttr ".sp" -type "double3" 0 11.340796947479248 -0.3203732967376709 ;
createNode mesh -n "helmet_FShape" -p "helmet_F";
	rename -uid "F2E517AA-4FCF-8731-3E54-86BDC0BEC3D0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67673087120056152 0.83419090509414673 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape25" -p "helmet_F";
	rename -uid "2054B56E-4142-1FB5-5648-4686E926ED85";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 7 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:103]";
	setAttr ".iog[0].og[6].gcl" -type "componentList" 1 "e[80]";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "e[121]";
	setAttr ".iog[0].og[8].gcl" -type "componentList" 1 "e[124]";
	setAttr ".iog[0].og[9].gcl" -type "componentList" 10 "e[17]" "e[19]" "e[53]" "e[56]" "e[75]" "e[108]" "e[111]" "e[118]" "e[193]" "e[210]";
	setAttr ".iog[0].og[10].gcl" -type "componentList" 1 "e[52]";
	setAttr ".iog[0].og[11].gcl" -type "componentList" 9 "e[2]" "e[34:35]" "e[68:69]" "e[80]" "e[107]" "e[109:110]" "e[116:117]" "e[119:120]" "e[126]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.720266193151474 0.24145685136318207 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 222 ".uvst[0].uvsp[0:221]" -type "float2" 0.625 0.125 0.625
		 0 0.625 0.18772724 0.5 0.25 0.5 0.375 0.625 0.375 0.625 0.25 0.5 0.5 0.625 0.5 0.5
		 0.56227279 0.625 0.56227279 0.5 0.625 0.5 0.75 0.625 0.75 0.625 0.625 0.75 0.125
		 0.75 0 0.875 0.125 0.875 0 0.75 0.18772724 0.875 0.18772724 0.625 0.17954925 0.75
		 0.17954925 0.875 0.17954925 0.5 0.57045078 0.625 0.57045078 0.5 0.51858878 0.625
		 0.51858878 0.75 0.23141119 0.875 0.23141119 0.625 0.23141119 0.49998984 0.23141819
		 0.75 0.25 0.875 0.25 0.625 0 0.625 0.125 0.625 0.18772724 0.5 0.25 0.625 0.25 0.625
		 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.625 0.56227279 0.5 0.56227279 0.5 0.625 0.625
		 0.625 0.625 0.75 0.5 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.75 0.18772724 0.875
		 0.18772724 0.625 0.17954925 0.75 0.17954925 0.875 0.17954925 0.5 0.57045078 0.625
		 0.57045078 0.5 0.51858878 0.625 0.51858878 0.875 0.23141119 0.75 0.23141119 0.625
		 0.23141119 0.5 0.23141119 0.875 0.25 0.75 0.25 0.52310151 0.75 0.52310151 0.625 0.52310151
		 0.57045078 0.52310151 0.56227279 0.52310151 0.51858878 0.52310151 0.5 0.52310151
		 0.375 0.52310151 0.25 0.52310151 0.23141119 0.52310151 0.75 0.52310151 0.625 0.52310151
		 0.57045078 0.52310151 0.56227279 0.52310151 0.51858878 0.52310151 0.5 0.52310151
		 0.375 0.52310151 0.25 0.52310151 0.23141119 0.58148217 0.17954925 0.58148217 0.125
		 0.58148217 0 0.58148217 0.17954925 0.58148217 0.125 0.58148217 0 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0.625 0.2466139 0.52310151 0.2469414 0.5 0.24690734 0.4999983 0.24690852
		 0.52310151 0.2469414 0.625 0.2466139 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0.69053257 0.23864374 0.74999994 0.24426997 0.625 0.51032883 0.875 0.23967114
		 0.57095969 0.51858878 0.57509726 0.56227279 0.5746026 0.57045078 0.56577802 0.625
		 0.561037 0 0.58027035 0.75 0.69053245 0.23864374 0.74999994 0.24426997 0.875 0.23967114
		 0.625 0.51032883 0.57095969 0.51858878 0.57509726 0.56227279 0.5746026 0.57045078
		 0.56577802 0.625 0.58027035 0.75 0.438963 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt";
	setAttr ".pt[9]" -type "float3" 0 0 -0.089467593 ;
	setAttr ".pt[18]" -type "float3" 0 2.2351742e-08 0 ;
	setAttr ".pt[21]" -type "float3" 0 0 -0.081148751 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.20525731 ;
	setAttr ".pt[24]" -type "float3" 0 0 -0.72133571 ;
	setAttr ".pt[25]" -type "float3" 0 0 0.14173029 ;
	setAttr ".pt[39]" -type "float3" 0 2.2351742e-08 0 ;
	setAttr ".pt[43]" -type "float3" 0 0 -0.72133571 ;
	setAttr ".pt[44]" -type "float3" 0 0 0.14173029 ;
	setAttr ".pt[46]" -type "float3" 0 0 -0.0727055 ;
	setAttr ".pt[47]" -type "float3" -0.15910962 0 -0.0727055 ;
	setAttr ".pt[48]" -type "float3" -0.25403917 0 -0.072705492 ;
	setAttr ".pt[53]" -type "float3" 0 0 0.15288955 ;
	setAttr ".pt[55]" -type "float3" 0 0 -0.0727055 ;
	setAttr ".pt[56]" -type "float3" 0.15910962 0 -0.0727055 ;
	setAttr ".pt[57]" -type "float3" 0.25403917 0 -0.072705492 ;
	setAttr ".pt[62]" -type "float3" 0 0 0.15288955 ;
	setAttr ".pt[63]" -type "float3" -0.25322729 0.14114743 0 ;
	setAttr ".pt[64]" -type "float3" -0.25322741 0 0 ;
	setAttr ".pt[65]" -type "float3" -0.25322741 0 0 ;
	setAttr ".pt[66]" -type "float3" 0.25322729 0.14114743 0 ;
	setAttr ".pt[67]" -type "float3" 0.25322741 0 0 ;
	setAttr ".pt[68]" -type "float3" 0.25322741 0 0 ;
	setAttr ".pt[73]" -type "float3" 0.1663565 0 0.059133261 ;
	setAttr ".pt[75]" -type "float3" -0.1663565 0 0.059133261 ;
	setAttr ".pt[77]" -type "float3" -0.54528999 -0.27620944 0.62291986 ;
	setAttr ".pt[78]" -type "float3" -0.65100139 -0.19729891 0.76492929 ;
	setAttr ".pt[84]" -type "float3" -0.56202847 -0.99919194 0.74428439 ;
	setAttr ".pt[85]" -type "float3" -0.5986408 -0.40025589 0.87019408 ;
	setAttr ".pt[90]" -type "float3" 0.54528999 -0.27620944 0.62291986 ;
	setAttr ".pt[91]" -type "float3" 0.65100145 -0.19729891 0.76492929 ;
	setAttr ".pt[92]" -type "float3" 0.59864068 -0.40025625 0.87019408 ;
	setAttr ".pt[93]" -type "float3" 0 -0.44950619 1.5976069 ;
	setAttr ".pt[94]" -type "float3" -0.2015142 0.29987493 1.4718866 ;
	setAttr ".pt[95]" -type "float3" 0.10508867 0 1.046946 ;
	setAttr ".pt[96]" -type "float3" 0.10508867 0 1.046946 ;
	setAttr ".pt[97]" -type "float3" 0.56202847 -0.99919194 0.74428439 ;
	setAttr ".pt[98]" -type "float3" 0.20151432 0.29987291 1.4718866 ;
	setAttr ".pt[99]" -type "float3" -0.10508867 0 1.046946 ;
	setAttr ".pt[100]" -type "float3" -0.10508867 0 1.046946 ;
	setAttr ".pt[105]" -type "float3" 0.34919825 0 0 ;
	setAttr ".pt[106]" -type "float3" 0.3468433 0 -0.030448232 ;
	setAttr ".pt[107]" -type "float3" 0.35392687 0 0.013004625 ;
	setAttr ".pt[108]" -type "float3" -0.09721233 0 -0.1121819 ;
	setAttr ".pt[113]" -type "float3" -0.34919825 0 0 ;
	setAttr ".pt[114]" -type "float3" -0.3468433 0 -0.030448232 ;
	setAttr ".pt[115]" -type "float3" -0.35392687 0 0.013004625 ;
	setAttr ".pt[116]" -type "float3" 0.09721233 0 -0.1121819 ;
	setAttr -s 117 ".vt[0:116]"  -1.98895991 9.64981842 2.06848979 -1.76371813 8.85141373 2.1392324
		 -2.41428471 11.05480957 1.90541184 0 14.265728 1.67092383 0 14.26572704 -0.21844423
		 -2.49385452 14.265728 0.33620843 -1.80403161 14.265728 0.95670485 0 14.26572704 -2.034234524
		 -1.80403137 14.265728 -1.6472764 0 11.054808617 -3.44946003 -2.87865353 11.054808617 -2.17248559
		 0 9.64982033 -3.06651926 0 8.85141373 -2.58337831 -2.58836198 8.85141373 -1.62334371
		 -2.7555325 9.64982033 -1.79583251 -2.7555387 9.64981937 0.75107348 -2.66161418 8.85141373 0.75107348
		 -2.90029192 11.054810524 0.75107348 -2.048175812 10.51415825 2.045676708 -2.85134768 10.51416016 0.75107348
		 -2.83252978 10.5141592 -1.99005508 0 10.5141592 -3.32355142 0 13.89627361 -3.85145521
		 -3.01551795 13.89627457 -2.6617198 -3.058835983 13.89628124 1.30086589 -2.034303188 11.50816917 2.053292036
		 0 11.048882484 2.61210394 1.76371813 8.85141373 2.1392324 1.98895991 9.64981842 2.06848979
		 2.41428471 11.05480957 1.90541184 1.80403161 14.265728 0.95670485 2.49385452 14.265728 0.33620843
		 1.80403137 14.265728 -1.6472764 2.87865353 11.054808617 -2.17248559 2.7555325 9.64982033 -1.79583251
		 2.58836198 8.85141373 -1.62334371 2.66161418 8.85141373 0.75107348 2.7555387 9.64981937 0.75107348
		 2.90029192 11.054810524 0.75107348 2.048175812 10.51415825 2.045676708 2.85134768 10.51416016 0.75107348
		 2.83252978 10.5141592 -1.99005508 3.01551795 13.89627457 -2.6617198 3.058835983 13.89628124 1.30086589
		 2.034303188 11.50816917 2.053292036 -0.77916533 8.85141373 -2.55212784 -0.79471177 9.64981937 -2.9430449
		 -0.72437137 10.5141592 -3.16280985 -0.71290845 11.054807663 -3.29348159 -1.43911827 13.89627266 -3.83601713
		 -0.77806377 14.26572704 -1.96272027 -0.79734087 14.26572704 -0.21844423 -0.77806377 14.265728 1.53892756
		 -0.91893256 11.24079704 2.3288641 0.77916533 8.85141373 -2.55212784 0.79471177 9.64981937 -2.9430449
		 0.72437137 10.5141592 -3.16280985 0.71290845 11.054807663 -3.29348159 1.43911827 13.89627266 -3.83601713
		 0.77806377 14.26572704 -1.96272027 0.79734087 14.26572704 -0.21844423 0.77806377 14.265728 1.53892756
		 0.91893256 11.24079704 2.3288641 -0.55414438 9.90779781 2.39128971 -0.51494706 9.64981461 2.40748787
		 -0.46066687 8.85141373 2.24617624 0.55414438 9.90779781 2.39128971 0.51494706 9.64981461 2.40748787
		 0.46066687 8.85141373 2.24617624 -4.9059429e-07 14.26572704 1.70904374 -4.9059429e-07 14.26572704 -0.021560004
		 -4.9059429e-07 14.26572609 -1.67829132 1.92275774 13.89627838 2.20441151 0.69548219 13.89628029 2.47273636
		 0 13.89628029 2.68220472 -0.69548219 13.89628029 2.47273636 -1.92275774 13.89627838 2.20441151
		 -1.3440485 11.0018692017 0.71738261 -1.29901302 11.10806751 0.25136423 0 9.58836174 -0.93342966
		 -0.34646672 9.46822548 -0.94874567 -0.98366147 8.85141659 0.28306386 -0.92155802 8.85141563 0.72730803
		 -1.27779722 8.85141754 -0.81683236 -0.26259395 11.28411579 0.61080194 -1.12969494 10.86969757 0.69784951
		 0.34646669 9.46822453 -0.94874561 0.98366153 8.85141659 0.28306386 0.92155802 8.85141563 0.72730798
		 1.2777971 8.85141754 -0.8168323 1.34404838 11.0018692017 0.71738219 1.2990129 11.10806751 0.25136417
		 1.12969506 10.86969852 0.69784904 0 11.093556404 0.85392857 -0.14499958 9.87017059 0.59460747
		 -0.24519281 8.85141659 0.43604904 -0.16831033 9.79734325 0.61535996 0.26259395 11.28411579 0.61080194
		 0.1449995 9.8701725 0.59460747 0.24519289 8.85141659 0.43604904 0.16831034 9.79734421 0.61535996
		 2.51835823 13.89628029 1.73071861 2.66801047 14.15184498 0.63356507 2.47719264 14.060441971 -2.21095085
		 2.1794982 13.89627361 -3.28449082 1.8180232 11.054807663 -2.72147083 1.78986835 10.5141592 -2.57008076
		 1.61593091 9.64982033 -2.46257639 1.7941916 8.85141373 -2.031045437 -2.51835823 13.89628029 1.73071873
		 -2.66801047 14.15184498 0.63356507 -2.47719264 14.060441971 -2.21095085 -2.1794982 13.89627361 -3.28449082
		 -1.8180232 11.054807663 -2.72147083 -1.78986835 10.5141592 -2.57008076 -1.61593091 9.64982033 -2.46257639
		 -1.7941916 8.85141373 -2.031045437;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 64 1 1 0 1 2 25 0 3 4 0 5 51 1 6 5 1 3 52 1 7 4 0
		 7 50 1 5 8 1 10 113 1 12 11 0 12 45 0 14 13 1 14 115 1 15 0 1 16 15 1 16 1 0 14 15 1
		 13 16 0 17 10 1 2 17 1 0 18 1 18 19 1 19 15 1 19 20 1 20 14 1 21 11 0 20 114 1 22 9 0
		 23 10 1 22 49 1 24 17 1 23 24 1 25 53 0 18 2 0 17 19 1 10 20 1 9 21 0 7 22 0 8 111 1
		 5 110 1 25 76 1 3 74 0 27 28 1 28 67 1 3 61 1 30 31 1 31 32 1 7 59 1 42 33 1 34 35 1
		 12 54 0 36 27 0 36 37 1 37 28 1 35 36 0 34 37 1 38 33 1 29 38 1 28 39 1 40 37 1 39 40 1
		 41 34 1 40 41 1 22 58 1 42 43 1 43 38 1 29 44 0 39 29 0 38 40 1 33 41 1 32 103 1
		 31 102 1 44 72 1 45 116 0 46 11 1 47 21 1 48 9 1 51 4 1 53 26 0 45 46 1 46 47 1 47 48 1
		 48 49 1 49 50 1 50 51 1 51 52 1 52 75 1 55 11 1 56 21 1 57 9 1 58 104 1 59 32 1 60 4 1
		 61 30 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 73 1 49 112 1
		 50 8 1 52 6 1 63 18 0 65 1 0 63 64 0 64 65 0 54 108 0 34 107 1 41 106 1 33 105 1
		 31 60 1 44 62 0 66 39 0 68 27 0 66 67 0 67 68 0 3 69 0 4 70 0 69 70 0 7 71 0 71 70 0
		 62 26 0 72 30 1 73 62 1 74 26 0 75 53 1 76 6 1 43 101 1 72 73 1 73 74 1 74 75 1 75 76 1
		 76 109 1 2 77 0 25 78 0 77 78 0 12 79 1 45 80 1 79 80 0 16 81 1 1 82 1 81 82 0 13 83 1
		 83 81 0 53 84 1 78 84 0 18 85 1 85 77 0 54 86 1 79 86 0 36 87 1 27 88 1 87 88 0 35 89 1
		 89 87 0 29 90 0 44 91 0 90 91 0 39 92 1 92 90 0 80 83 0;
	setAttr ".ed[166:219]" 26 93 0 84 93 0 63 94 0 94 85 0 65 95 0 95 82 0 64 96 1
		 94 96 0 96 95 0 86 89 0 62 97 1 91 97 0 66 98 0 98 92 0 68 99 0 99 88 0 67 100 1
		 98 100 0 100 99 0 97 93 0 101 72 1 102 43 1 103 42 1 104 42 1 105 57 1 106 56 1 107 55 1
		 108 35 0 29 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 107 108 1
		 108 86 1 109 24 1 110 24 1 111 23 1 112 23 1 113 48 1 114 47 1 115 46 1 116 13 0
		 2 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1 115 116 1 116 80 1;
	setAttr -s 104 -ch 414 ".fc[0:103]" -type "polyFaces" 
		f 4 3 -80 87 -7
		mu 0 4 3 4 74 75
		f 4 -8 8 86 79
		mu 0 4 4 7 73 74
		f 4 -12 12 81 76
		mu 0 4 11 12 68 69
		f 4 1 -16 -17 17
		mu 0 4 1 0 15 16
		f 4 16 -19 13 19
		mu 0 4 16 15 17 18
		f 4 22 23 24 15
		mu 0 4 0 21 22 15
		f 4 -25 25 26 18
		mu 0 4 15 22 23 17
		f 4 27 -77 82 77
		mu 0 4 24 11 69 70
		f 4 -32 29 -79 84
		mu 0 4 72 26 9 71
		f 4 -33 -34 30 -21
		mu 0 4 19 28 29 20
		f 4 35 21 36 -24
		mu 0 4 21 2 19 22
		f 4 -37 20 37 -26
		mu 0 4 22 19 20 23
		f 4 38 -78 83 78
		mu 0 4 9 24 70 71
		f 4 39 31 85 -9
		mu 0 4 7 26 72 73
		f 4 -205 213 205 33
		mu 0 4 28 213 214 29
		f 4 211 203 32 -22
		mu 0 4 2 212 28 19
		f 4 -130 135 130 80
		mu 0 4 31 103 104 76
		f 4 120 118 44 45
		mu 0 4 90 91 34 35
		f 4 47 115 102 95
		mu 0 4 38 39 83 84
		f 4 48 -94 101 -116
		mu 0 4 39 41 82 83
		f 4 198 190 99 92
		mu 0 4 206 207 80 81
		f 4 201 -112 96 -193
		mu 0 4 209 211 77 78
		f 4 -54 54 55 -45
		mu 0 4 34 49 50 35
		f 4 -57 -52 57 -55
		mu 0 4 49 51 52 50
		f 4 58 -51 66 67
		mu 0 4 53 54 62 63
		f 4 -69 194 186 -75
		mu 0 4 64 36 202 100
		f 4 119 -46 60 -118
		mu 0 4 89 90 35 55
		f 4 -56 -62 -63 -61
		mu 0 4 35 50 56 55
		f 4 -58 -64 -65 61
		mu 0 4 50 52 57 56
		f 4 200 192 97 -192
		mu 0 4 208 209 78 79
		f 4 62 -71 -60 -70
		mu 0 4 55 56 53 36
		f 4 64 -72 -59 70
		mu 0 4 56 57 54 53
		f 4 199 191 98 -191
		mu 0 4 207 208 79 80
		f 5 72 197 -93 100 93
		mu 0 5 41 204 206 81 82
		f 4 196 -73 -49 73
		mu 0 4 203 205 66 67
		f 4 74 133 128 -117
		mu 0 4 64 100 101 85
		f 4 218 210 -14 14
		mu 0 4 219 220 13 14
		f 4 217 -15 -27 28
		mu 0 4 218 219 14 25
		f 4 216 -29 -38 10
		mu 0 4 217 218 25 10
		f 4 -31 -207 215 -11
		mu 0 4 10 27 216 217
		f 3 214 206 -206
		mu 0 3 215 216 27
		f 4 -87 105 -10 4
		mu 0 4 74 73 8 5
		f 4 -88 -5 -6 -107
		mu 0 4 75 74 5 6
		f 4 -131 136 -43 34
		mu 0 4 76 104 105 30
		f 4 -90 -97 -53 11
		mu 0 4 45 78 77 48
		f 4 -91 -98 89 -28
		mu 0 4 58 79 78 45
		f 4 -92 -99 90 -39
		mu 0 4 44 80 79 58
		f 4 91 -30 65 -100
		mu 0 4 80 44 60 81
		f 4 49 -101 -66 -40
		mu 0 4 42 82 81 60
		f 4 -95 -102 -50 7
		mu 0 4 40 83 82 42
		f 4 46 -103 94 -4
		mu 0 4 37 84 83 40
		f 4 -127 -129 134 129
		mu 0 4 65 85 101 102
		f 4 -110 107 -23 0
		mu 0 4 87 86 21 0
		f 4 -111 -1 -2 -109
		mu 0 4 88 87 0 1
		f 4 3 122 -124 -122
		mu 0 4 92 93 94 95
		f 4 -8 124 125 -123
		mu 0 4 96 97 98 99
		f 5 -187 195 -74 -48 -128
		mu 0 5 100 202 203 67 38
		f 4 -134 127 -96 103
		mu 0 4 101 100 38 84
		f 4 -135 -104 -47 43
		mu 0 4 102 101 84 37
		f 4 -136 -44 6 88
		mu 0 4 104 103 3 75
		f 4 -137 -89 106 -132
		mu 0 4 105 104 75 6
		f 3 -204 212 204
		mu 0 3 28 212 213
		f 4 -3 138 140 -140
		mu 0 4 106 107 108 109
		f 4 -13 141 143 -143
		mu 0 4 110 111 112 113
		f 4 -18 144 146 -146
		mu 0 4 114 115 116 117
		f 4 -20 147 148 -145
		mu 0 4 118 119 120 121
		f 4 -35 139 150 -150
		mu 0 4 122 123 124 125
		f 4 -36 151 152 -139
		mu 0 4 126 127 128 129
		f 4 52 153 -155 -142
		mu 0 4 130 131 132 133
		f 4 53 156 -158 -156
		mu 0 4 134 135 136 137
		f 4 56 155 -160 -159
		mu 0 4 138 139 140 141
		f 4 68 161 -163 -161
		mu 0 4 142 143 144 145
		f 4 69 160 -165 -164
		mu 0 4 146 147 148 149
		f 4 -211 219 165 -148
		mu 0 4 150 221 152 153
		f 4 -81 149 167 -167
		mu 0 4 154 155 156 157
		f 4 -108 168 169 -152
		mu 0 4 158 159 160 161
		f 4 108 145 -172 -171
		mu 0 4 162 163 164 165
		f 4 109 172 -174 -169
		mu 0 4 166 167 168 169
		f 4 110 170 -175 -173
		mu 0 4 170 171 172 173
		f 3 111 202 -154
		mu 0 3 174 210 177
		f 4 116 176 -178 -162
		mu 0 4 178 179 180 181
		f 4 117 163 -180 -179
		mu 0 4 182 183 184 185
		f 4 -119 180 181 -157
		mu 0 4 186 187 188 189
		f 4 -120 178 183 -183
		mu 0 4 190 191 192 193
		f 4 -121 182 184 -181
		mu 0 4 194 195 196 197
		f 4 126 166 -186 -177
		mu 0 4 198 199 200 201
		f 4 -195 59 -68 132
		mu 0 4 202 36 53 63
		f 3 -196 -133 -188
		mu 0 3 203 202 63
		f 4 -67 -189 -197 187
		mu 0 4 63 62 205 203
		f 3 -198 188 -190
		mu 0 3 206 204 61
		f 4 50 114 -199 189
		mu 0 4 61 43 207 206
		f 4 71 113 -200 -115
		mu 0 4 43 59 208 207
		f 4 63 112 -201 -114
		mu 0 4 59 46 209 208
		f 4 51 -194 -202 -113
		mu 0 4 46 47 211 209
		f 4 -203 193 158 -176
		mu 0 4 177 210 175 176
		f 4 42 137 -212 2
		mu 0 4 30 105 212 2
		f 5 -213 -138 131 5 41
		mu 0 5 213 212 105 6 32
		f 4 -214 -42 9 40
		mu 0 4 214 213 32 33
		f 5 -86 104 -215 -41 -106
		mu 0 5 73 72 216 215 8
		f 4 -216 -105 -85 -208
		mu 0 4 217 216 72 71
		f 4 -84 -209 -217 207
		mu 0 4 71 70 218 217
		f 4 -83 -210 -218 208
		mu 0 4 70 69 219 218
		f 4 -82 75 -219 209
		mu 0 4 69 68 220 219
		f 3 -220 -76 142
		mu 0 3 152 221 151;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "helmet_FShapeOrig" -p "helmet_F";
	rename -uid "39273DDA-41EC-4AEE-80E0-A9BAF8903D6C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 125 ".uvst[0].uvsp[0:124]" -type "float2" 0.52597755 0.74955153
		 0.54197127 0.76329499 0.49101079 0.79831219 0.48366362 0.77987933 0.54355615 0.72232461
		 0.56182015 0.73373663 0.55815214 0.77817965 0.49736151 0.81859821 0.46642506 0.80399293
		 0.46080017 0.78071392 0.58446056 0.74321043 0.56649399 0.78847218 0.50014991 0.83227706
		 0.47420734 0.82545811 0.59587526 0.76173472 0.59694237 0.86035293 0.59248978 0.95161754
		 0.47724801 0.83922774 0.61867386 0.83678263 0.60767543 0.87606984 0.6023339 0.92456746
		 0.49234259 0.91279483 0.61420602 0.76998937 0.63372165 0.8295517 0.46837068 0.9199903
		 0.4420917 0.84716338 0.82773864 0.75023645 0.86991906 0.78073841 0.86249334 0.79913867
		 0.81168449 0.76390898 0.89277852 0.78166717 0.88705516 0.80492091 0.85605592 0.81939507
		 0.79543716 0.77872038 0.81028789 0.72293556 0.79197347 0.73426569 0.87918222 0.82635128
		 0.85320985 0.83306038 0.78704965 0.78897405 0.76929247 0.74363822 0.87608349 0.84010684
		 0.83336836 0.90450042 0.75628889 0.86070192 0.75779092 0.76211017 0.86068195 0.91360581
		 0.75069851 0.92485005 0.74559426 0.87634844 0.73465049 0.83704233 0.91120791 0.84818792
		 0.88462549 0.9209016 0.73942184 0.77027965 0.71963292 0.82974547 0.60130459 0.73633909
		 0.60965818 0.73487288 0.59475863 0.73046362 0.74414772 0.73518741 0.75249016 0.73669159
		 0.75905871 0.73084378 0.67640263 0.96925813 0.67635685 0.99392402 0.6357584 0.98716825
		 0.63562775 0.96296138 0.71720082 0.96312356 0.71698129 0.98732716 0.61499906 0.97101796
		 0.61099458 0.94301713 0.64397496 0.89163482 0.67654377 0.8937903 0.70912176 0.89177448
		 0.74190718 0.94327569 0.73780262 0.97125655 0.61236638 0.87154919 0.65803951 0.84935516
		 0.67663932 0.84684432 0.69522876 0.84943807 0.74081075 0.87183076 0.76038933 0.95193779
		 0.63209313 0.86016804 0.65702987 0.82380629 0.6766929 0.8215785 0.6963473 0.82389539
		 0.72113162 0.86036468 0.43568036 0.78368402 0.93790972 0.7817173 0.92255992 0.73206198
		 0.43999463 0.73516011 0.41358256 0.80828273 0.43400669 0.80859649 0.91788477 0.78473985
		 0.91377348 0.73620105 0.91945398 0.80965716 0.47070485 0.7432164 0.88303405 0.74413276
		 0.493729 0.71734077 0.86012918 0.71816581 0.52601558 0.68528819 0.54399186 0.7007885
		 0.82799405 0.68597579 0.80995041 0.70139682 0.64899439 0.76112533 0.64506876 0.72349358
		 0.67684913 0.75631392 0.67687947 0.74536395 0.70467836 0.76125628 0.70880622 0.72363919
		 0.57118714 0.70371556 0.57426018 0.68765247 0.78274596 0.704202 0.77974594 0.68812406
		 0.93876493 0.83625364 0.93987918 0.80942613 0.43811125 0.83258331 0.91524929 0.8336255
		 0.93682849 0.85202289 0.42993531 0.92725396 0.79133058 0.70237464 0.79672843 0.67500639
		 0.56260973 0.70184952 0.55733466 0.67445779 0.51969117 0.90380555 0.41566774 0.78058016
		 0.43122509 0.73098552 0.41645592 0.85089314 0.41458505 0.83511573 0.92303157 0.92832422;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 112 ".vt[0:111]"  -1.98895991 9.64981842 2.06848979 -1.76371813 8.85141373 2.1392324
		 -2.41428471 11.05480957 1.90541184 -2.49385452 14.12578392 0.33620843 -1.80403161 14.12578392 0.95670485
		 -2.41248417 14.12578297 -2.29238987 0 11.054808617 -3.53892756 -2.87865353 11.054808617 -2.17248559
		 0 9.64982033 -3.06651926 0 8.85141373 -2.58337831 -2.58836198 8.85141373 -1.62334371
		 -2.7555325 9.64982033 -1.79583251 -2.7555387 9.64981937 0.75107348 -2.66161418 8.85141373 0.75107348
		 -2.90029192 11.054810524 0.75107348 -2.048175812 10.51415825 2.045676708 -2.85134768 10.51416016 0.75107348
		 -2.83252978 10.5141592 -1.99005508 0 10.5141592 -3.40470028 0 13.89627361 -4.056712627
		 -3.01551795 13.89627457 -2.6617198 -3.058835983 13.89628124 0.57953018 -2.034303188 11.50816917 2.19502234
		 0 11.048882484 2.61210394 1.76371813 8.85141373 2.1392324 1.98895991 9.64981842 2.06848979
		 2.41428471 11.05480957 1.90541184 1.80403161 14.12578392 0.95670485 2.49385452 14.12578392 0.33620843
		 2.41248417 14.12578297 -2.29238987 2.87865353 11.054808617 -2.17248559 2.7555325 9.64982033 -1.79583251
		 2.58836198 8.85141373 -1.62334371 2.66161418 8.85141373 0.75107348 2.7555387 9.64981937 0.75107348
		 2.90029192 11.054810524 0.75107348 2.048175812 10.51415825 2.045676708 2.85134768 10.51416016 0.75107348
		 2.83252978 10.5141592 -1.99005508 3.01551795 13.89627457 -2.6617198 3.058835983 13.89628124 0.57953018
		 2.034303188 11.50816917 2.19502234 -0.77916533 8.85141373 -2.55212784 -0.79471177 9.64981937 -3.015750408
		 -0.88348103 10.5141592 -3.23551536 -0.96694762 11.054807663 -3.3661871 -1.43911827 13.89627266 -3.83601713
		 -1.47423816 14.12578297 -2.95112014 -1.24706364 14.12578297 -0.21844423 -0.77806377 14.12578392 1.53892756
		 -0.91893256 11.24079704 2.48175359 0.77916533 8.85141373 -2.55212784 0.79471177 9.64981937 -3.015750408
		 0.88348103 10.5141592 -3.23551536 0.96694762 11.054807663 -3.3661871 1.43911827 13.89627266 -3.83601713
		 1.47423816 14.12578297 -2.95112014 1.24706364 14.12578297 -0.21844423 0.77806377 14.12578392 1.53892756
		 0.91893256 11.24079704 2.48175359 -0.80737168 10.048945427 2.39128971 -0.76817447 9.64981461 2.40748787
		 -0.71389425 8.85141373 2.24617624 0.80737168 10.048945427 2.39128971 0.76817447 9.64981461 2.40748787
		 0.71389425 8.85141373 2.24617624 1.92275774 13.89627838 2.20441151 0.8618387 13.89628029 2.53186965
		 0 13.89628029 2.68220472 -0.8618387 13.89628029 2.53186965 -1.92275774 13.89627838 2.20441151
		 -1.88933849 10.72565937 1.34030247 -1.95001435 10.91076851 1.016293526 0 9.58836174 -0.93342966
		 -0.34646672 9.46822548 -0.94874567 -0.98366147 8.85141659 0.28306386 -1.27779722 8.85141754 -0.81683236
		 -0.82462239 10.28492355 1.35508633 -1.72833574 10.46944141 1.56804359 0.34646669 9.46822453 -0.94874561
		 0.98366153 8.85141659 0.28306386 1.2777971 8.85141754 -0.8168323 1.88933837 10.72565937 1.34030199
		 1.95001435 10.91076851 1.016293526 1.72833574 10.46944237 1.56804311 0 10.6440506 2.45153546
		 -0.34651378 10.17004585 2.066493988 -0.14010414 8.85141659 1.48299503 -0.063221656 9.79734325 1.66230607
		 0.82462239 10.28492355 1.35508633 0.34651381 10.17004585 2.066493988 0.1401042 8.85141659 1.48299503
		 0.063221671 9.79734421 1.66230607 2.51835823 13.89628029 1.73071861 2.1794982 13.89627361 -3.28449082
		 2.16722155 11.054807663 -2.72147083 2.1367116 10.5141592 -2.60052896 1.96985781 9.64982033 -2.44957185
		 1.69697928 8.85141373 -2.14322734 -2.51835823 13.89628029 1.73071873 -2.1794982 13.89627361 -3.28449082
		 -2.16722155 11.054807663 -2.72147083 -2.1367116 10.5141592 -2.60052896 -1.96985781 9.64982033 -2.44957185
		 -1.69697928 8.85141373 -2.14322734 0 14.12578392 1.67092383 0 14.12578297 -3.14539385
		 0 14.12578297 -0.21844423 -2.66860533 14.12578011 0.13171835 2.67299843 14.12578106 0.13155235
		 -2.78618908 14.12578201 -1.66892397 2.78870511 14.12578201 -1.668764;
	setAttr -s 211 ".ed";
	setAttr ".ed[0:165]"  0 61 1 1 0 1 2 22 0 3 48 1 4 3 1 106 47 0 3 5 1 7 101 1
		 9 8 0 9 42 0 11 10 1 11 103 1 12 0 1 13 12 1 13 1 0 11 12 1 10 13 0 14 7 1 2 14 1
		 0 15 1 15 16 1 16 12 1 16 17 1 17 11 1 18 8 0 17 102 1 19 6 0 20 7 1 19 46 1 21 14 1
		 20 21 1 22 50 0 15 2 0 14 16 1 7 17 1 6 18 0 106 19 0 22 70 1 24 25 1 25 64 1 27 28 1
		 28 29 1 39 30 1 31 32 1 9 51 0 33 24 0 33 34 1 34 25 1 32 33 0 31 34 1 35 30 1 26 35 1
		 25 36 1 37 34 1 36 37 1 38 31 1 37 38 1 19 55 1 39 40 1 40 35 1 26 41 0 36 26 0 35 37 1
		 30 38 1 41 66 1 42 104 0 43 8 1 44 18 1 45 6 1 50 23 0 42 43 1 43 44 1 44 45 1 45 46 1
		 46 47 1 47 48 1 48 49 1 49 69 1 52 8 1 53 18 1 54 6 1 55 94 1 56 29 1 58 27 1 51 52 1
		 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 67 1 46 100 1 47 5 1 49 4 1 60 15 0
		 62 1 0 60 61 0 61 62 0 51 98 0 31 97 1 38 96 1 30 95 1 28 57 1 41 59 0 63 36 0 65 24 0
		 63 64 0 64 65 0 59 23 0 66 27 1 67 59 1 68 23 0 69 50 1 70 4 1 40 93 1 66 67 1 67 68 1
		 68 69 1 69 70 1 70 99 1 2 71 0 22 72 0 71 72 0 9 73 1 42 74 1 73 74 0 13 75 1 10 76 1
		 76 75 0 50 77 1 72 77 0 15 78 1 78 71 0 51 79 1 73 79 0 33 80 1 80 91 0 32 81 1 81 80 0
		 26 82 0 41 83 0 82 83 0 36 84 1 84 82 0 74 76 0 23 85 0 77 85 0 60 86 0 86 78 0 62 87 0
		 87 75 0 61 88 1 86 88 0 88 87 0 79 81 0 59 89 1 83 89 0 63 90 0 90 84 0 65 91 0 64 92 1
		 90 92 0 92 91 0 89 85 0 93 66 1;
	setAttr ".ed[166:210]" 94 39 1 95 54 1 96 53 1 97 52 1 98 32 0 26 93 1 94 95 1
		 95 96 1 96 97 1 97 98 1 98 79 1 99 21 1 100 20 1 101 45 1 102 44 1 103 43 1 104 10 0
		 2 99 1 100 101 1 101 102 1 102 103 1 103 104 1 104 74 1 105 58 0 105 68 0 105 49 0
		 106 56 0 57 107 0 107 48 0 105 107 1 107 106 1 5 100 1 29 94 1 93 28 1 99 3 1 21 108 1
		 108 3 1 28 109 1 109 40 1 5 110 1 110 20 1 39 111 1 111 29 1 110 108 1 111 109 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 -9 9 70 66
		mu 0 4 86 120 82 87
		f 4 1 -13 -14 14
		mu 0 4 4 5 1 0
		f 4 13 -16 10 16
		mu 0 4 0 1 2 3
		f 4 19 20 21 12
		mu 0 4 5 10 6 1
		f 4 -22 22 23 15
		mu 0 4 1 6 7 2
		f 4 24 -67 71 67
		mu 0 4 123 86 87 111
		f 4 -29 26 -69 73
		mu 0 4 24 114 122 25
		f 4 -30 -31 27 -18
		mu 0 4 11 15 119 12
		f 4 32 18 33 -21
		mu 0 4 10 14 11 6
		f 4 -34 17 34 -23
		mu 0 4 6 11 12 7
		f 4 35 -68 72 68
		mu 0 4 122 123 111 25
		f 4 36 28 74 -6
		mu 0 4 58 59 60 61
		f 4 205 209 202 6
		mu 0 4 65 20 19 71
		f 4 183 177 29 -19
		mu 0 4 14 18 15 11
		f 4 -113 118 113 69
		mu 0 4 101 79 78 99
		f 4 108 106 38 39
		mu 0 4 115 98 34 35
		f 4 40 103 90 83
		mu 0 4 81 75 68 74
		f 4 41 -83 89 -104
		mu 0 4 75 69 62 68
		f 4 172 167 87 81
		mu 0 4 44 40 48 49
		f 4 175 -100 84 -170
		mu 0 4 31 30 88 90
		f 4 -46 46 47 -39
		mu 0 4 34 26 29 35
		f 4 -49 -44 49 -47
		mu 0 4 26 27 28 29
		f 4 50 -43 58 59
		mu 0 4 38 37 41 42
		f 4 -61 171 165 -65
		mu 0 4 50 43 47 51
		f 4 107 -40 52 -106
		mu 0 4 107 115 35 39
		f 4 -48 -54 -55 -53
		mu 0 4 35 29 33 39
		f 4 -50 -56 -57 53
		mu 0 4 29 28 32 33
		f 4 174 169 85 -169
		mu 0 4 36 31 90 112
		f 4 54 -63 -52 -62
		mu 0 4 39 33 38 43
		f 4 56 -64 -51 62
		mu 0 4 33 32 37 38
		f 4 173 168 86 -168
		mu 0 4 40 36 112 48
		f 4 198 -82 88 82
		mu 0 4 69 70 63 62
		f 4 207 210 204 -59
		mu 0 4 76 45 46 42
		f 4 64 116 111 -105
		mu 0 4 50 51 80 103
		f 4 187 182 -11 11
		mu 0 4 8 9 3 2
		f 4 186 -12 -24 25
		mu 0 4 13 8 2 7
		f 4 185 -26 -35 7
		mu 0 4 17 13 7 12
		f 4 -28 -179 184 -8
		mu 0 4 12 119 21 17
		f 4 -76 93 -7 3
		mu 0 4 66 61 65 71
		f 4 -77 -4 -5 -95
		mu 0 4 72 66 71 77
		f 4 -114 119 -38 31
		mu 0 4 99 78 23 22
		f 4 -79 -85 -45 8
		mu 0 4 110 90 88 83
		f 4 -80 -86 78 -25
		mu 0 4 109 112 90 110
		f 4 -81 -87 79 -36
		mu 0 4 113 48 112 109
		f 4 80 -27 57 -88
		mu 0 4 48 113 124 49
		f 4 192 -89 -58 -37
		mu 0 4 58 62 63 59
		f 4 -110 -112 117 112
		mu 0 4 101 103 80 79
		f 4 -98 95 -20 0
		mu 0 4 117 105 10 5
		f 4 -99 -1 -2 -97
		mu 0 4 96 117 5 4
		f 4 -41 -111 -166 199
		mu 0 4 75 81 51 47
		f 4 -117 110 -84 91
		mu 0 4 80 51 81 74
		f 4 -118 -92 -190 190
		mu 0 4 79 80 74 73
		f 4 -119 -191 191 77
		mu 0 4 78 79 73 72
		f 4 -120 -78 94 -115
		mu 0 4 23 78 72 77
		f 4 -178 200 -203 -202
		mu 0 4 15 18 71 19
		f 4 -3 121 123 -123
		mu 0 4 22 14 52 53
		f 4 -10 124 126 -126
		mu 0 4 82 120 121 85
		f 4 -17 128 129 -128
		mu 0 4 0 3 91 93
		f 4 -32 122 131 -131
		mu 0 4 99 22 53 100
		f 4 -33 132 133 -122
		mu 0 4 14 10 54 52
		f 4 44 134 -136 -125
		mu 0 4 83 88 89 84
		f 5 -138 -137 45 -107 160
		mu 0 5 97 94 26 34 98
		f 4 48 136 -140 -139
		mu 0 4 27 26 94 92
		f 4 60 141 -143 -141
		mu 0 4 43 50 55 56
		f 4 61 140 -145 -144
		mu 0 4 39 43 56 57
		f 4 -183 188 145 -129
		mu 0 4 3 9 85 91
		f 4 -70 130 147 -147
		mu 0 4 101 99 100 102
		f 4 -96 148 149 -133
		mu 0 4 10 105 106 54
		f 5 -152 -151 96 -15 127
		mu 0 5 93 95 96 4 0
		f 4 97 152 -154 -149
		mu 0 4 105 117 118 106
		f 4 98 150 -155 -153
		mu 0 4 117 96 95 118
		f 3 99 176 -135
		mu 0 3 88 30 89
		f 4 104 156 -158 -142
		mu 0 4 50 103 104 55
		f 4 105 143 -160 -159
		mu 0 4 107 39 57 108
		f 4 -108 158 162 -162
		mu 0 4 115 107 108 116
		f 4 -109 161 163 -161
		mu 0 4 98 115 116 97
		f 4 109 146 -165 -157
		mu 0 4 103 101 102 104
		f 4 -172 51 -60 115
		mu 0 4 47 43 38 42
		f 4 42 102 -173 166
		mu 0 4 41 37 40 44
		f 4 63 101 -174 -103
		mu 0 4 37 32 36 40
		f 4 55 100 -175 -102
		mu 0 4 32 28 31 36
		f 4 43 -171 -176 -101
		mu 0 4 28 27 30 31
		f 4 -177 170 138 -156
		mu 0 4 89 30 27 92
		f 4 37 120 -184 2
		mu 0 4 22 23 18 14
		f 4 -185 -93 -74 -180
		mu 0 4 17 21 24 25
		f 4 -73 -181 -186 179
		mu 0 4 25 111 13 17
		f 4 -72 -182 -187 180
		mu 0 4 111 87 8 13
		f 4 -71 65 -188 181
		mu 0 4 87 82 9 8
		f 3 -189 -66 125
		mu 0 3 85 9 82
		f 4 76 -192 195 194
		mu 0 4 66 72 73 67
		f 4 75 -195 196 5
		mu 0 4 61 66 67 58
		f 4 -196 189 -91 193
		mu 0 4 67 73 74 68
		f 4 -197 -194 -90 -193
		mu 0 4 58 67 68 62
		f 4 -75 92 -198 -94
		mu 0 4 61 60 64 65
		f 4 -167 -199 -209 -208
		mu 0 4 76 70 69 45
		f 4 -201 -121 114 4
		mu 0 4 71 18 23 77
		f 4 -205 -204 -200 -116
		mu 0 4 42 46 75 47
		f 4 -207 -206 197 178
		mu 0 4 16 20 65 64
		f 4 -210 206 30 201
		mu 0 4 19 20 16 15
		f 4 -211 208 -42 203
		mu 0 4 46 45 69 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 69 
		0 0 
		3 0 
		4 0 
		5 0 
		8 0 
		9 0 
		10 0 
		13 0 
		14 0 
		15 0 
		16 0 
		17 0 
		18 0 
		19 0 
		20 0 
		22 0 
		23 0 
		24 0 
		25 0 
		26 0 
		27 0 
		30 0 
		31 0 
		34 0 
		35 0 
		36 0 
		39 0 
		40 0 
		42 0 
		43 0 
		45 0 
		46 0 
		47 0 
		48 0 
		49 0 
		50 0 
		51 0 
		53 0 
		54 0 
		55 0 
		57 0 
		76 0 
		78 0 
		79 0 
		80 0 
		82 0 
		83 0 
		86 0 
		87 0 
		88 0 
		90 0 
		95 0 
		96 0 
		97 0 
		98 0 
		99 0 
		100 0 
		101 0 
		102 0 
		103 0 
		104 0 
		105 0 
		106 0 
		107 0 
		108 0 
		110 0 
		115 0 
		117 0 
		120 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cape_F" -p "group1";
	rename -uid "91CFC701-4B1A-94D4-781E-5EB5AFAB87B2";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 8.4207527596859322 -4.1223828411075418 ;
	setAttr ".sp" -type "double3" 0 8.4207527596859322 -4.1223828411075418 ;
createNode mesh -n "cape_FShape" -p "cape_F";
	rename -uid "870EEF5F-47EE-9E91-B818-95AE46826938";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47278496913109352 0.39912288528841888 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "cape_FShapeOrig" -p "cape_F";
	rename -uid "AD6B7ED0-40A8-3876-6EAC-088EA76899EC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.47390807 0.34151363
		 0.46978396 0.34254301 0.4674634 0.32056323 0.46971264 0.31712633 0.46974495 0.36540765
		 0.4742642 0.36522564 0.47385231 0.39928496 0.46927041 0.39932263 0.46917602 0.43269059
		 0.47347832 0.43266702 0.47360432 0.44748658 0.46911889 0.44732246 0.46900153 0.46157598
		 0.47322497 0.4629398 0.4715296 0.47542065 0.4697361 0.47150534 0.35547355 0.32961941
		 0.35839209 0.3326807 0.36103407 0.35613826 0.35649362 0.35625324 0.36704746 0.38001227
		 0.36267045 0.38093114 0.37795237 0.41272169 0.37331566 0.41401857 0.38981906 0.44472563
		 0.38495782 0.44646299 0.39655593 0.45739079 0.39162743 0.45977017 0.40364286 0.46935546
		 0.39934605 0.47294241 0.40881619 0.47577843 0.40828672 0.48111939 0.4157857 0.35064927
		 0.41289675 0.3274911 0.4188599 0.37371889 0.42341679 0.40204096 0.42830074 0.43083403
		 0.43053403 0.44136295 0.43300384 0.45187759 0.4348855 0.45900664 0.59009641 0.3339206
		 0.58282071 0.35696644 0.52793086 0.34842303 0.53055686 0.32438487 0.5753293 0.38049057
		 0.52462602 0.37231269 0.56422901 0.41341224 0.51958096 0.40115556 0.55141038 0.44597882
		 0.51418358 0.42981541 0.54374582 0.45866799 0.51167774 0.44016844 0.53597629 0.47104812
		 0.50891984 0.45044696 0.53079808 0.47915387 0.5069046 0.45730472 0.43578309 0.46369475
		 0.41222301 0.32304114;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  1.69569063 8.19911289 -0.15102792 -1.61704421 7.99706984 0.34076035
		 1.69569063 8.55298424 -0.15102792 -1.61704421 8.26153278 0.34076035 3.5468719 8.19654942 -9.046891212
		 -3.5468719 8.55298424 -9.046891212 3.5468719 7.93208551 -9.046891212 -3.5468719 8.28852081 -9.046891212
		 0 8.28852081 -1.10859609 0 8.28852081 -9.046891212 0 8.55298424 -9.046891212 0 8.55298424 -1.10859609
		 3.05185318 8.19654942 -6.22361088 0 8.55298424 -6.22361088 -3.051852703 8.55298424 -6.22361088
		 -3.051852703 8.28852081 -6.22361088 0 8.28852081 -6.22361088 3.05185318 7.93208551 -6.22361088
		 2.38888478 8.37079525 -2.30695677 2.38888502 8.062623978 -2.30695677 0 8.28852081 -2.77506971
		 -2.35043812 8.28852081 -2.066543102 -2.35043788 8.55298424 -2.066542864 0 8.55298424 -2.77506948
		 1.87037706 8.50707245 -0.69432634 1.87037706 8.16471767 -0.69432634 0 8.28852081 -1.52855074
		 -1.80186105 8.28852081 -0.26588482 -1.80186081 8.55298424 -0.26588482 0 8.55298424 -1.52855074
		 -2.70114541 8.28852081 -4.14507675 -2.70114517 8.55298424 -4.14507675 0 8.55298424 -4.49934006
		 2.72036886 8.28367233 -4.26528358 2.7203691 7.99735451 -4.26528358 0 8.28852081 -4.49934006
		 3.29936266 7.93208551 -7.63525105 0 8.28852081 -7.63525105 -3.29936218 8.28852081 -7.63525105
		 -3.29936218 8.55298424 -7.63525105 0 8.55298424 -7.63525105 3.29936266 8.19654942 -7.63525105
		 2.12963104 8.11367035 -1.50064158 0 8.28852081 -2.15181017 -2.076149464 8.28852081 -1.16621399
		 -2.076149464 8.55298424 -1.16621387 0 8.55298424 -2.15181017 2.12963104 8.43893433 -1.50064158;
	setAttr -s 91 ".ed[0:90]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 24 0
		 3 28 0 4 6 0 5 7 0 6 36 0 7 38 0 8 1 0 9 7 0 10 5 0 11 3 0 11 29 1 10 9 1 9 37 1
		 12 41 0 13 40 1 14 39 0 15 30 0 16 35 1 17 34 0 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1
		 17 12 1 18 33 0 19 42 0 20 43 1 21 44 0 22 31 0 23 32 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 47 0 25 0 0 26 8 1 27 1 0 28 45 0 29 46 1 24 25 1 25 26 1 26 27 1
		 27 28 1 28 29 1 29 24 1 30 21 0 31 14 0 32 13 1 33 12 0 34 19 0 35 20 1 30 31 1 31 32 1
		 32 33 1 33 34 1 34 35 1 35 30 1 36 17 0 37 16 1 38 15 0 39 5 0 40 10 1 41 4 0 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 25 0 43 26 1 44 27 0 45 22 0 46 23 1 47 18 0
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1;
	setAttr -s 45 -ch 182 ".fc[0:44]" -type "polyFaces" 
		f 6 4 1 15 -6 -13 -1
		mu 0 6 31 30 39 15 14 56
		f 4 77 72 2 -72
		mu 0 4 32 18 17 33
		f 4 8 3 -18 -3
		mu 0 4 17 16 57 33
		f 4 10 73 -19 -4
		mu 0 4 40 41 42 43
		f 4 75 70 9 11
		mu 0 4 0 1 2 3
		f 4 -9 -73 78 -11
		mu 0 4 16 17 18 19
		f 4 14 -71 76 71
		mu 0 4 33 2 1 32
		f 4 13 -10 -15 17
		mu 0 4 57 3 2 33
		f 4 74 -12 -14 18
		mu 0 4 42 0 3 43
		f 4 6 -55 -17 -2
		mu 0 4 30 28 38 39
		f 4 -8 -16 16 -54
		mu 0 4 12 15 39 38
		f 4 5 7 -53 46
		mu 0 4 14 15 12 13
		f 4 12 -47 -52 45
		mu 0 4 55 14 13 53
		f 4 44 0 -46 -51
		mu 0 4 52 54 55 53
		f 4 -7 -5 -45 -50
		mu 0 4 28 30 31 29
		f 4 -59 64 -25 30
		mu 0 4 20 22 23 21
		f 4 24 65 -24 29
		mu 0 4 44 46 47 45
		f 4 66 -23 28 23
		mu 0 4 47 6 5 45
		f 4 61 56 27 22
		mu 0 4 6 7 4 5
		f 4 -57 62 57 26
		mu 0 4 4 7 35 34
		f 4 63 58 25 -58
		mu 0 4 35 22 20 34
		f 4 -85 90 -33 -38
		mu 0 4 24 26 27 25
		f 4 32 85 -34 -39
		mu 0 4 48 50 51 49
		f 4 86 -35 -40 33
		mu 0 4 51 10 9 49
		f 4 87 82 -41 34
		mu 0 4 10 11 8 9
		f 4 -83 88 83 -42
		mu 0 4 8 11 37 36
		f 4 89 84 -43 -84
		mu 0 4 37 26 24 36
		f 4 35 -62 55 40
		mu 0 4 8 7 6 9
		f 4 -63 -36 41 36
		mu 0 4 35 7 8 36
		f 4 31 -64 -37 42
		mu 0 4 24 22 35 36
		f 4 -65 -32 37 -60
		mu 0 4 23 22 24 25
		f 4 -66 59 38 -61
		mu 0 4 47 46 48 49
		f 4 -56 -67 60 39
		mu 0 4 9 6 47 49
		f 4 -74 67 -30 -69
		mu 0 4 42 41 44 45
		f 4 -70 -75 68 -29
		mu 0 4 5 0 42 45
		f 4 21 -76 69 -28
		mu 0 4 4 1 0 5
		f 4 -77 -22 -27 20
		mu 0 4 32 1 4 34
		f 4 19 -78 -21 -26
		mu 0 4 20 18 32 34
		f 4 -79 -20 -31 -68
		mu 0 4 19 18 20 21
		f 4 -86 79 50 -81
		mu 0 4 51 50 52 53
		f 4 -82 -87 80 51
		mu 0 4 13 10 51 53
		f 4 47 -88 81 52
		mu 0 4 12 11 10 13
		f 4 -89 -48 53 48
		mu 0 4 37 11 12 38
		f 4 43 -90 -49 54
		mu 0 4 28 26 37 38
		f 4 -91 -44 49 -80
		mu 0 4 27 26 28 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 28 
		0 0 
		1 0 
		2 0 
		3 0 
		4 0 
		5 0 
		6 0 
		7 0 
		8 0 
		9 0 
		10 0 
		11 0 
		12 0 
		13 0 
		14 0 
		15 0 
		16 0 
		17 0 
		18 0 
		20 0 
		22 0 
		24 0 
		26 0 
		28 0 
		30 0 
		31 0 
		33 0 
		39 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_shoulder_F" -p "group1";
	rename -uid "FCB4249F-43D2-6760-E4FC-2EAF1F4ECA2B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -8.8817841970012523e-16 8.217954659151582 0 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-15 8.217954659151582 0 ;
createNode mesh -n "R_shoulder_FShape" -p "R_shoulder_F";
	rename -uid "0E51A86C-42F4-8B91-862B-E89F97D1BA71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10957193374633789 0.33930796384811401 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "R_shoulder_FShapeOrig" -p "R_shoulder_F";
	rename -uid "3813DED6-403E-480A-3976-C8BC24C242F6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 31 ".uvst[0].uvsp[0:30]" -type "float2" 0.033795714 0.34794003
		 0.040447235 0.37015486 0.038700163 0.37224263 0.031470597 0.34803283 0.036926746
		 0.37439585 0.029104352 0.34809935 0.030683815 0.32121253 0.032921195 0.32295555 0.028381288
		 0.31940603 0.084491849 0.36557847 0.082545221 0.36383748 0.080524027 0.3427549 0.082946002
		 0.34245777 0.07755214 0.32176864 0.079066038 0.31956941 0.086918533 0.36743847 0.084878147
		 0.34221464 0.081017077 0.31717634 0.063733757 0.37427014 0.056783974 0.34570277 0.057041943
		 0.31743991 0.056350887 0.31497514 0.05555743 0.31252486 0.06375879 0.37659425 0.063716114
		 0.37926668 0.10957193 0.33930796 0.14507288 0.33430845 0.13862896 0.36056089 0.11335689
		 0.37154156 0.10578722 0.30707437 0.13272291 0.31026292;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[2]" -type "float3" -0.15829816 0.011853205 -0.13107172 ;
	setAttr ".pt[3]" -type "float3" 0.10932409 0.090512842 -0.13534383 ;
	setAttr ".pt[4]" -type "float3" -0.15829812 0.011853444 0.13107169 ;
	setAttr ".pt[5]" -type "float3" 0.10932409 0.063773461 0.12679957 ;
	setAttr ".pt[8]" -type "float3" -0.15829816 -0.05184751 -2.1000706e-09 ;
	setAttr ".pt[9]" -type "float3" 0.15829816 0.017907247 -0.0042721224 ;
	setAttr ".pt[13]" -type "float3" 0 -0.092465259 0 ;
	setAttr ".pt[15]" -type "float3" -0.027226297 0.039121222 0.16799484 ;
	setAttr ".pt[16]" -type "float3" 0.0090098437 -0.067189455 4.189716e-08 ;
	setAttr ".pt[17]" -type "float3" -0.027226295 0.02731844 -0.16799484 ;
	setAttr -s 26 ".vt[0:25]"  -1.75043881 8.15081978 0.59100318 -3.030294418 7.77464485 0.6114338
		 -1.75043893 8.3220644 0.59100318 -3.030294657 7.945889 0.6114338 -1.75043917 8.32206345 -0.662651
		 -3.030294657 8.073764801 -0.64222032 -1.75043917 8.15081978 -0.662651 -3.030294418 7.90252018 -0.64222032
		 -1.75043893 8.62670135 -0.03582393 -3.26450443 8.2931118 -0.015393278 -3.26450491 8.12186718 -0.01539328
		 -1.75043917 8.45545769 -0.03582393 -2.37726665 8.076859474 0.76758146 -2.37726617 8.64036655 -0.035823934
		 -2.37726665 8.031564713 -0.83922935 -2.37726688 8.19165993 -0.83922935 -2.55055976 8.70007133 -0.035824142
		 -2.37726665 8.2481041 0.76758146 -1.75043917 8.23644161 0.59100318 -2.37726641 8.16248226 0.76758146
		 -3.030294895 7.86026621 0.6114338 -3.26450491 8.20748901 -0.015393277 -3.03029418 7.98814297 -0.64222038
		 -2.37726665 8.1171875 -0.83922935 -1.75043917 8.23644257 -0.662651 -1.75043893 8.54107857 -0.035823926;
	setAttr -s 48 ".ed[0:47]"  0 12 0 2 17 0 4 15 0 6 14 0 0 18 0 1 20 0
		 2 8 0 3 9 0 4 24 0 5 22 0 6 11 0 7 10 0 8 4 0 9 5 0 10 1 0 11 0 0 8 16 1 9 21 1 10 13 1
		 11 25 1 12 1 0 13 11 1 14 7 0 15 5 0 16 9 1 17 3 0 12 13 1 13 14 1 14 23 1 15 16 1
		 16 17 1 17 19 1 18 2 0 19 12 1 20 3 0 21 10 1 22 7 0 23 15 1 24 6 0 25 8 1 18 19 1
		 19 20 1 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 18 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 25 -35 -42 -32
		mu 0 4 20 7 6 21
		f 4 23 -14 -25 -30
		mu 0 4 18 1 0 19
		f 4 -10 -24 -38 -45
		mu 0 4 2 1 18 23
		f 4 -19 -12 -23 -28
		mu 0 4 25 26 27 28
		f 4 13 9 -44 -18
		mu 0 4 0 1 2 3
		f 4 -9 -13 -40 -47
		mu 0 4 9 10 11 12
		f 4 24 -8 -26 -31
		mu 0 4 19 0 7 20
		f 4 34 7 17 -43
		mu 0 4 6 7 0 3
		f 4 20 -15 18 -27
		mu 0 4 29 30 26 25
		f 4 -7 -33 -48 39
		mu 0 4 11 13 14 12
		f 4 15 0 26 21
		mu 0 4 16 17 29 25
		f 4 10 -22 27 -4
		mu 0 4 15 16 25 28
		f 4 8 -46 37 -3
		mu 0 4 10 9 23 18
		f 4 12 2 29 -17
		mu 0 4 11 10 18 19
		f 4 6 16 30 -2
		mu 0 4 13 11 19 20
		f 4 32 1 31 -41
		mu 0 4 14 13 20 21
		f 4 4 40 33 -1
		mu 0 4 17 14 21 22
		f 4 -6 -21 -34 41
		mu 0 4 6 8 22 21
		f 4 5 42 35 14
		mu 0 4 8 6 3 5
		f 4 36 11 -36 43
		mu 0 4 2 4 5 3
		f 4 22 -37 44 -29
		mu 0 4 24 4 2 23
		f 4 38 3 28 45
		mu 0 4 9 15 24 23
		f 4 -39 46 -20 -11
		mu 0 4 15 9 12 16
		f 4 -5 -16 19 47
		mu 0 4 14 17 16 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 17 
		0 0 
		1 0 
		2 0 
		4 0 
		6 0 
		7 0 
		8 0 
		9 0 
		10 0 
		11 0 
		13 0 
		14 0 
		15 0 
		16 0 
		17 0 
		18 0 
		20 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_hip_F" -p "group1";
	rename -uid "44EE77F6-4C79-1FA8-DA82-CE9C928907C5";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 4.0350781715054955 0 ;
	setAttr ".sp" -type "double3" 0 4.0350781715054955 0 ;
createNode mesh -n "R_hip_FShape" -p "R_hip_F";
	rename -uid "EE04F8F9-4111-CA9B-2F57-BCA35E05D69A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.055232822895050049 0.11156615614891052 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "R_hip_FShapeOrig" -p "R_hip_F";
	rename -uid "F66585A2-49F7-2CF8-AF78-6A817465383A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.084305525 0.15484947
		 0.076675296 0.18561953 0.050483406 0.17864084 0.055937111 0.14815004 0.025140166
		 0.17954949 0.027714252 0.14420953 0.08532548 0.13446251 0.062152565 0.12644687 0.038033545
		 0.12297744 0.10978508 0.19295721 0.080139041 0.19023749 0.089566588 0.15705465 0.11651516
		 0.15805651 0.090455413 0.13280368 0.11873233 0.13446672 0.14228702 0.16696206 0.13596082
		 0.20134401 0.14515448 0.14322087 0.048757613 0.18363887 0.020117104 0.18284264 0.033646852
		 0.11937867 0.062052906 0.12163901 0.021832585 0.14427638;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[1]" -type "float3" 0.054816704 0.24675308 -0.20696408 ;
	setAttr ".pt[3]" -type "float3" -0.071707815 -0.24675302 -0.20696408 ;
	setAttr ".pt[5]" -type "float3" -0.1453934 -0.24675302 0.20696408 ;
	setAttr ".pt[7]" -type "float3" -0.018868636 0.24675308 0.20696408 ;
	setAttr ".pt[9]" -type "float3" 0.018868541 -0.24675302 0.026444376 ;
	setAttr ".pt[10]" -type "float3" 0.1453934 0.24675308 0.026444372 ;
	setAttr ".pt[13]" -type "float3" -0.0021604425 0.047710247 -0.20696408 ;
	setAttr ".pt[14]" -type "float3" 0.088415951 0.047710247 0.026444374 ;
	setAttr ".pt[15]" -type "float3" -0.07584592 0.047710247 0.20696408 ;
	setAttr -s 18 ".vt[0:17]"  -1.73149359 2.46215534 1.044743061 -1.98151898 2.46215534 1.044743061
		 -1.11911881 4.85070848 1.044743061 -1.36914444 4.85070848 1.044743061 -0.7624836 4.85070848 -0.95865583
		 -1.012508869 4.85070848 -0.95865583 -1.37485874 2.46215534 -0.95865583 -1.62488437 2.46215534 -0.95865583
		 -1.55750561 4.85070848 -0.084946275 -1.807531 4.85070848 -0.084946275 -2.41990685 2.46215534 -0.08494626
		 -2.16988087 2.46215534 -0.08494626 -1.45572615 3.42551613 1.044743061 -1.70575142 3.42551613 1.044743061
		 -2.14413834 3.42551613 -0.084946267 -1.34911621 3.42551613 -0.95865583 -1.099090815 3.42551613 -0.95865583
		 -1.89411306 3.42551613 -0.084946267;
	setAttr -s 32 ".ed[0:31]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 8 0
		 3 9 0 4 16 0 5 15 0 6 11 0 7 10 0 8 4 0 9 5 0 10 1 0 11 0 0 8 9 1 9 14 1 10 11 1
		 11 17 1 12 2 0 13 3 0 14 10 1 15 7 0 16 6 0 17 8 1 12 13 1 13 14 1 14 15 1 15 16 1
		 16 17 1 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 20 1 -22 -27
		mu 0 4 11 10 1 0
		f 4 12 2 -14 -17
		mu 0 4 18 19 4 2
		f 4 8 -30 -10 -3
		mu 0 4 19 22 5 4
		f 4 10 -19 -12 -4
		mu 0 4 20 21 7 8
		f 4 13 9 -29 -18
		mu 0 4 2 4 5 3
		f 4 -9 -13 -26 -31
		mu 0 4 15 16 9 12
		f 4 6 16 -8 -2
		mu 0 4 10 18 2 1
		f 4 21 7 17 -28
		mu 0 4 0 1 2 3
		f 4 15 0 -15 18
		mu 0 4 21 13 6 7
		f 4 -7 -21 -32 25
		mu 0 4 9 10 11 12
		f 4 4 26 -6 -1
		mu 0 4 13 11 0 6
		f 4 5 27 22 14
		mu 0 4 6 0 3 7
		f 4 23 11 -23 28
		mu 0 4 5 8 7 3
		f 4 24 3 -24 29
		mu 0 4 22 20 8 5
		f 4 -25 30 -20 -11
		mu 0 4 17 15 12 14
		f 4 -5 -16 19 31
		mu 0 4 11 13 14 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 13 
		0 0 
		1 0 
		2 0 
		4 0 
		5 0 
		6 0 
		7 0 
		8 0 
		10 0 
		11 0 
		13 0 
		19 0 
		20 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Body_polySurface_F" -p "Model_group";
	rename -uid "938AB04A-4535-F67B-C512-2F802B1DAA81";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 6.9607820734381676 -0.3203732967376709 ;
	setAttr ".sp" -type "double3" 0 6.9607820734381676 -0.3203732967376709 ;
createNode mesh -n "Body_polySurface_FShape" -p "Body_polySurface_F";
	rename -uid "FE9A890F-4EE9-D4C5-4186-FAA2C90B02C6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.71379613876342773 0.1074693351984024 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Body_polySurface_FShapeOrig" -p "Body_polySurface_F";
	rename -uid "D68EB0CF-4F42-EE71-501B-3F8EEF58F2B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 744 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.29871351 0.16822107 0.26129073
		 0.18691437 0.25784281 0.17886753 0.29768789 0.16070516 0.27409363 0.23743144 0.32510927
		 0.21671912 0.2292968 0.2087554 0.23441377 0.1889797 0.24340183 0.13137613 0.27169394
		 0.11504482 0.22735062 0.25728044 0.28175938 0.26882854 0.3244268 0.26538482 0.22097749
		 0.14093024 0.24099565 0.12661812 0.2688666 0.10997348 0.20527989 0.22289371 0.2147989
		 0.21026665 0.25138482 0.28255966 0.21931934 0.13600332 0.23854923 0.12185847 0.26593655
		 0.1049244 0.19899437 0.2194131 0.20345509 0.20975946 0.21761981 0.13104515 0.2359598
		 0.11737495 0.26345539 0.099211931 0.19027478 0.1922424 0.21097159 0.19768964 0.21354625
		 0.12567267 0.23388419 0.11228366 0.26022446 0.094688021 0.21099615 0.1214435 0.22070256
		 0.088720731 0.2405352 0.0760056 0.20021808 0.097274482 0.21834213 0.085096225 0.23720914
		 0.072973154 0.19827878 0.093413092 0.21543625 0.080968998 0.23310292 0.069554381
		 0.19592008 0.088840537 0.20440838 0.066353083 0.21549374 0.055395771 0.18666786 0.071774356
		 0.22833005 0.035010464 0.23745999 0.045038149 0.14649278 0.56888318 0.15389216 0.624349
		 0.066913962 0.62706733 0.055069864 0.57741237 0.21007296 0.56289864 0.21111587 0.60829091
		 0.15952021 0.64749813 0.075192511 0.65585583 0.14592165 0.55620337 0.060454965 0.56312573
		 0.21524054 0.62958741 0.21075854 0.55030972 0.16978991 0.68500376 0.10446674 0.68665648
		 0.14583188 0.5359872 0.066942751 0.5390985 0.21721953 0.67218399 0.21614921 0.52363789
		 0.14841634 0.49370483 0.083531618 0.50140351 0.23526943 0.48855817 0.24698499 0.39970031
		 0.70544165 0.58392245 0.25847417 0.41769764 0.25239924 0.42198518 0.2670297 0.38364375
		 0.27163327 0.38934353 0.27933434 0.43029687 0.27904597 0.43783113 0.28207299 0.37269413
		 0.2815761 0.37931168 0.69067049 0.59278661 0.70591247 0.5857237 0.62785769 0.20014282
		 0.60726869 0.19197464 0.6164034 0.18967488 0.62548065 0.19005953 0.64276367 0.18315661
		 0.63361436 0.18534949 0.52247488 0.56316668 0.54390764 0.48130637 0.5991165 0.51220387
		 0.60340548 0.55532068 0.6366514 0.3943482 0.62425667 0.49147981 0.64712477 0.61234576
		 0.63223737 0.57259005 0.67492539 0.47519964 0.64650691 0.50875801 0.61254036 0.54716367
		 0.62798995 0.55991441 0.65753496 0.53142101 0.68226391 0.52888244 0.64079297 0.55613619
		 0.6505022 0.56577057 0.64779449 0.5286873 0.63941008 0.51445383 0.64910418 0.54538721
		 0.66146219 0.55561 0.30867112 0.093911394 0.3041707 0.088798665 0.16814506 0.1500724
		 0.16901425 0.15465716 0.29998088 0.083718292 0.16692451 0.14542861 0.18746623 0.1469927
		 0.18934929 0.15220997 0.34274572 0.12715381 0.35345814 0.082285218 0.29514378 0.078884169
		 0.16543666 0.14047256 0.18548843 0.14191553 0.29180431 0.07421758 0.16343248 0.13515957
		 0.18471828 0.13591775 0.28063446 0.049013022 0.15763238 0.10873648 0.18341851 0.1311373
		 0.27889389 0.04475126 0.15667436 0.10455733 0.17405832 0.10577153 0.27717677 0.039542146
		 0.29141399 0.029656772 0.17255157 0.10154666 0.27073562 0.018668946 0.15015042 0.081026629
		 0.17070225 0.09648636 0.25503588 0.033249129 0.24971583 0.021048922 0.16445562 0.077564694
		 0.58651638 0.15046449 0.57536471 0.15705994 0.56797928 0.15582336 0.57481819 0.145907
		 0.57457429 0.15854549 0.56714809 0.15781502 0.59076321 0.13816637 0.57719934 0.13577633
		 0.5821588 0.16017492 0.58096159 0.16138741 0.57068771 0.16782564 0.56689137 0.17117214
		 0.60185772 0.13740671 0.59186703 0.1535127 0.57514018 0.16842641 0.5862202 0.17619495
		 0.58452708 0.17614762 0.58501691 0.16767821 0.58660227 0.16698737 0.58365339 0.1834958
		 0.58181286 0.18294542 0.57470942 0.17500941 0.57689804 0.17152297 0.58988172 0.17229711
		 0.59724325 0.16428176 0.57091022 0.17708099 0.59436369 0.17325372 0.60396439 0.16364893
		 0.41631165 0.16745056 0.41723821 0.15992211 0.45732027 0.1775583 0.45397934 0.18564934
		 0.44263157 0.11392625 0.47113433 0.12988451 0.48088196 0.1873596 0.48626128 0.20706412
		 0.44184843 0.23632859 0.3905603 0.21628943 0.44539258 0.10881852 0.47347793 0.12509553
		 0.49368203 0.1391422 0.48885414 0.25555584 0.43460256 0.26782402 0.39189127 0.26494101
		 0.44825661 0.10373162 0.47586176 0.12030445 0.4952746 0.13419421 0.46515903 0.28115189
		 0.51046515 0.22088088 0.5007785 0.20838274 0.45066318 0.097987406 0.4783923 0.11578764
		 0.4969092 0.12921469 0.51670402 0.21731718 0.5121147 0.20772482 0.45383498 0.09342175
		 0.48040128 0.1106699 0.50091213 0.1237897 0.52506155 0.19003701 0.50443816 0.19575754
		 0.47327942 0.07448402 0.49327466 0.086937897 0.50340664 0.11952776 0.47656578 0.071408555
		 0.49558771 0.083283052 0.51386815 0.095221601 0.48062718 0.067936562 0.49843964 0.079118453
		 0.51575679 0.091335513 0.49805102 0.053550083 0.50927663 0.064360969 0.51805574 0.086732969
		 0.47595385 0.043480478 0.48495302 0.033334784 0.52708519 0.069549382 0.40688947 0.57220829
		 0.49808645 0.58286476 0.48507372 0.63220274 0.39817303 0.62742341 0.40776309 0.55955827
		 0.49303916 0.56846297 0.47612047 0.66077489 0.39200014 0.6504119 0.34346732 0.56473422
		 0.34132981 0.60999238 0.40833527 0.53936905 0.48712021 0.54430234 0.34309176 0.55217057
		 0.44613013 0.69086277 0.38085556 0.68764341 0.33669767 0.63114846 0.40675521 0.49706915
		 0.47142583 0.50624615 0.33836383 0.5254764 0.3337225 0.67362976 0.32012868 0.49018732
		 0.31336007 0.40268341 0.30655184 0.42418662 0.30069748 0.4197332 0.30627581 0.40424272
		 0.29533967 0.38550732 0.71483946 0.58945221 0.71759725 0.58604723 0.71606314 0.58774096
		 0.80285239 0.19695783 0.80496436 0.1868155 0.81402105 0.18618357 0.8232035 0.18823822
		 0.78752255 0.1804049 0.79671526 0.1823345 0.90194404 0.57311875 0.8214469 0.56102449
		 0.82830918 0.51816946;
	setAttr ".uvst[0].uvsp[250:499]" 0.88503134 0.49029404 0.77487481 0.61573631
		 0.79175121 0.57683998 0.80440235 0.49583882 0.79672682 0.39802724 0.79668093 0.56438261
		 0.81272316 0.5524109 0.78144705 0.51217324 0.75465804 0.47723621 0.78386325 0.55997294
		 0.77378726 0.56907398 0.76930296 0.53423148 0.74468273 0.53050286 0.77662826 0.54864019
		 0.76371461 0.55817276 0.78819811 0.51821429 0.7794193 0.53208143 0.40981796 0.088106714
		 0.54663074 0.14758347 0.39211956 0.064960949 0.41394153 0.082971953 0.40538421 0.093277887
		 0.54582256 0.1521783 0.52727038 0.14476092 0.52918106 0.13965902 0.54921204 0.13795118
		 0.41871539 0.078075096 0.3717449 0.12696409 0.54599369 0.18412468 0.52545655 0.1500017
		 0.52987218 0.13365245 0.39788797 0.055468161 0.42199424 0.073365234 0.53110886 0.12885587
		 0.41683206 0.036028892 0.43283752 0.048016313 0.54013592 0.1033728 0.41923067 0.032737475
		 0.43452296 0.043732215 0.54158729 0.099129021 0.55867946 0.097030938 0.43617275 0.038501084
		 0.54337037 0.094045386 0.42900398 0.0099007525 0.44234481 0.017546363 0.54936892
		 0.075044647 0.46339184 0.019653697 0.45822909 0.031921439 0.84281194 0.14612681 0.85436267
		 0.14120863 0.8614893 0.15092348 0.85414952 0.15239477 0.83819669 0.13394278 0.85167867
		 0.13113038 0.86238241 0.15288867 0.8549841 0.15385711 0.82708681 0.13350886 0.83755642
		 0.1493327 0.86304551 0.16624321 0.85914576 0.16302319 0.84745473 0.15572074 0.84868693
		 0.1568992 0.8547129 0.16376691 0.8438518 0.17186452 0.84321207 0.16266803 0.8448171
		 0.16331497 0.84554768 0.17177209 0.84007055 0.16807011 0.83249128 0.16025861 0.85304916
		 0.1669192 0.85534286 0.17033651 0.84664184 0.17908695 0.84846693 0.17848398 0.83560514
		 0.16915622 0.82575762 0.15981208 0.85920906 0.17228454 0.69832408 0.55679709 0.70034105
		 0.57807356 0.69320887 0.54721862 0.7181825 0.58427364 0.72698259 0.55759364 0.73266321
		 0.5482803 0.723647 0.57872051 0.27563587 0.65826219 0.27494049 0.71903509 0.21660307
		 0.7164796 0.33332506 0.71784824 0.27417418 0.78673321 0.2206018 0.78016478 0.27596232
		 0.62990141 0.3278814 0.78138775 0.2736803 0.83054501 0.20887825 0.82131153 0.33867368
		 0.82278067 0.27209395 0.97111207 0.23216471 0.34904051 0.33435908 0.35529965 0.21238524
		 0.41213331 0.27259007 0.92727393 0.19832861 0.938618 0.34657657 0.94029325 0.34692451
		 0.41755 0.27767697 0.49152952 0.66426325 0.55931157 0.71418494 0.50171191 0.71354598
		 0.52720147 0.67835593 0.58814675 0.71490097 0.47177607 0.76069635 0.56172758 0.7102015
		 0.64341652 0.76283044 0.66281688 0.74487752 0.58990437 0.71068227 0.62474358 0.71147907
		 0.59451395 0.71035033 0.59666854 0.67876399 0.15740399 0.68199795 0.16909903 0.66276002
		 0.16121738 0.66482466 0.15218049 0.68995517 0.15515447 0.68770671 0.16888861 0.6751864
		 0.1796388 0.65996146 0.17618023 0.64530915 0.15872543 0.65017825 0.15080659 0.6838305
		 0.13964227 0.66857785 0.13452806 0.69095045 0.14898793 0.69714552 0.16143322 0.69203639
		 0.16611221 0.67477715 0.18225548 0.65951103 0.17887039 0.64422119 0.17316636 0.65117925
		 0.13330628 0.68726283 0.13430944 0.66965562 0.12950808 0.70045328 0.15515968 0.67382509
		 0.189132 0.65645641 0.19502255 0.64393491 0.17592679 0.6509167 0.12818804 0.68755102
		 0.12719056 0.67040831 0.1237365 0.70215702 0.1560276 0.69880563 0.16235484 0.6515156
		 0.12246031 0.69263613 0.097513922 0.67358315 0.095622331 0.71091568 0.16412579 0.70828712
		 0.16906823 0.65299857 0.094181396 0.6944589 0.090461127 0.67395401 0.089244969 0.65289968
		 0.087820031 0.69204623 0.083930232 0.67390203 0.083427697 0.6535815 0.080740325 0.67381412
		 0.076586649 0.69187337 0.07708557 0.65365815 0.075851396 0.69449961 0.025736665 0.6758467
		 0.02501641 0.65553045 0.024252037 0.69467139 0.018032936 0.67614812 0.017339878 0.65588349
		 0.016559508 0.61245221 0.087844245 0.61244982 0.09455768 0.60053408 0.094736218 0.6005277
		 0.087931134 0.62573314 0.087715797 0.62542868 0.094285458 0.61281633 0.12397794 0.60118628
		 0.12472147 0.58966643 0.094786346 0.58999807 0.087896824 0.61276954 0.081624679 0.60086584
		 0.081516601 0.63789284 0.087675989 0.63781947 0.09426517 0.62548441 0.12315386 0.62573075
		 0.08180514 0.61310238 0.13041607 0.60134155 0.13150252 0.59080321 0.12499809 0.60120702
		 0.074547559 0.61306411 0.074748076 0.63721472 0.12237132 0.63823581 0.079903618 0.62598068
		 0.12932809 0.62609315 0.074970201 0.61377096 0.13597994 0.59094751 0.13191494 0.61488187
		 0.022855975 0.60289592 0.022528565 0.59060228 0.074290209 0.59010154 0.081330441
		 0.63734931 0.12860338 0.63845962 0.07514713 0.62634712 0.13471968 0.62801212 0.02324198
		 0.61835974 0.15785968 0.59213489 0.022239793 0.6151917 0.015161372 0.60319024 0.014828272
		 0.63774925 0.13412738 0.64038724 0.023652306 0.63011211 0.1564732 0.62833101 0.015564077
		 0.6212346 0.17157429 0.61071479 0.17557354 0.5924136 0.014530839 0.64072424 0.015954049
		 0.63284159 0.1708878 0.62168914 0.17387052 0.61158735 0.1784016 0.63318408 0.17361674
		 0.60317546 0.18540217 0.54941124 0.18804914 0.3572351 0.12548579 0.35730425 0.13610004
		 0.34277216 0.14016427 0.18299901 0.19472079 0.37188831 0.13997383 0.75082064 0.15576938
		 0.76459521 0.15012437 0.76692414 0.15908878 0.74793452 0.16754894 0.74522954 0.1381921
		 0.76030999 0.13260575 0.7791878 0.1483096 0.78428829 0.15607528 0.77015293 0.17395179
		 0.75504375 0.17786485 0.74222583 0.16751546 0.73956788 0.15386476 0.7416361 0.13298185
		 0.75907743 0.12762281 0.77765834 0.13085505 0.7383877 0.14773582 0.78578812 0.17046922
		 0.77068031 0.17662627 0.75552744 0.18046589 0.73781657 0.16487534 0.73257029 0.16035734
		 0.74112803 0.1258837 0.75814468 0.12188092 0.77776271 0.12573256 0.72907364 0.15418828
		 0.78615141 0.17321819;
	setAttr ".uvst[0].uvsp[500:743]" 0.77419966 0.1926807 0.75667685 0.18730794
		 0.73510957 0.096409827 0.75407809 0.093876883 0.77698559 0.12002849 0.73093915 0.16132927
		 0.72739702 0.15510742 0.73305744 0.089420825 0.7534945 0.087508664 0.77461123 0.091809958
		 0.72166646 0.16832818 0.71888876 0.16346806 0.73525208 0.082801431 0.75334758 0.081691675
		 0.7745114 0.085450239 0.73518068 0.075885572 0.75324821 0.074870288 0.7736119 0.078400582
		 0.73111367 0.024590367 0.74973804 0.023347445 0.77338767 0.073519126 0.7307272 0.016893649
		 0.74922103 0.015681321 0.77001703 0.021992303 0.76944667 0.014312921 0.81494677 0.084271289
		 0.82687384 0.084014475 0.82707751 0.090811685 0.81516075 0.090982929 0.81443894 0.078062631
		 0.82633454 0.077617839 0.8373937 0.083650775 0.83793998 0.090527274 0.827362 0.12080219
		 0.81571543 0.12040225 0.80167013 0.084543787 0.8021791 0.091099165 0.81394851 0.071202889
		 0.82579404 0.070645928 0.80148876 0.078637004 0.83774769 0.12076968 0.82741898 0.12758881
		 0.81562996 0.1268467 0.8030265 0.11995011 0.78951484 0.084860615 0.78979045 0.091443747
		 0.81060994 0.019401532 0.82258201 0.018722508 0.83638573 0.070084974 0.8370865 0.077091262
		 0.80092847 0.071809344 0.78893405 0.077103093 0.83781904 0.12769328 0.81513304 0.1324276
		 0.80272233 0.12613475 0.79127663 0.11951207 0.81007993 0.011719296 0.82206726 0.011034277
		 0.83333182 0.0181193 0.79749542 0.020174114 0.78856534 0.072359055 0.81119978 0.15443012
		 0.80252182 0.1315338 0.79133594 0.12574391 0.8328321 0.010422125 0.79695737 0.012508449
		 0.78513801 0.020948051 0.81933224 0.17192626 0.80871165 0.16821982 0.79941195 0.15338056
		 0.79110712 0.13127571 0.78458089 0.013262876 0.81853372 0.17477809 0.8083204 0.1705278
		 0.79709435 0.1678618 0.79682791 0.17059831 0.82711852 0.18155585 0.65227687 0.38130015
		 0.71683478 0.39162964 0.71662736 0.4006353 0.78166485 0.38419062 0.63699973 0.31583661
		 0.62139583 0.31073207 0.79951978 0.31907731 0.81529737 0.31451088 0.66559172 0.27160436
		 0.65627384 0.25993305 0.77250278 0.2736761 0.78220433 0.26233667 0.71913648 0.26873583
		 0.71941471 0.25224549 0.60990155 0.51966649 0.6258167 0.50711423 0.81711435 0.52499992
		 0.80210364 0.51125115 0.20597303 0.041630648 0.19214696 0.055933539 0.17512143 0.038781978
		 0.18765578 0.027629297 0.17764238 0.066803887 0.16997954 0.052910313 0.2079176 0.011820376
		 0.22106621 0.020914335 0.25923201 0.059393097 0.24725375 0.04196047 0.50739253 0.039662618
		 0.52552664 0.025424669 0.53820401 0.036412999 0.52140188 0.053783286 0.49203309 0.019144636
		 0.50506252 0.0098806508 0.54352832 0.050472744 0.53604579 0.064463496 0.45437035
		 0.058117289 0.46612209 0.040530715 0.27729356 0.52015495 0.27695921 0.54669756 0.27679053
		 0.56066978 0.27623206 0.60686356 0.27342469 0.85324889 0.2729117 0.8987633 0.19507107
		 0.89882368 0.19570288 0.84785336 0.35124815 0.84961075 0.35073107 0.9005816 0.27278185
		 0.91028827 0.19350311 0.91419011 0.3519524 0.91598004 0.20452598 0.14771438 0.20278054
		 0.14266685 0.2010414 0.13763055 0.19797546 0.13148786 0.19668004 0.12667631 0.18922633
		 0.10101484 0.18788311 0.096881367 0.18627217 0.091981396 0.1785177 0.073827371 0.65665317
		 0.66000015 0.89650893 0.64387023 0.21559078 0.29844394 0.51595062 0.24460821 0.52102506
		 0.22626643 0.52339429 0.21827556 0.52580684 0.20702536 0.53237003 0.19241837 0.35768005
		 0.19320431 0.35819784 0.2710624 0.33257577 0.16771664 0.35750493 0.16668986 0.32864079
		 0.14688136 0.34567174 0.1496139 0.35741159 0.15249063 0.38244548 0.16739012 0.31889412
		 0.14051329 0.36911264 0.1494606 0.38610628 0.14650546 0.29032183 0.10609054 0.39576867
		 0.14001048 0.28692913 0.10092338 0.42388943 0.10521656 0.28347254 0.095789 0.42721462
		 0.10000553 0.28029144 0.090328589 0.4306041 0.094826423 0.27674836 0.084820144 0.43371394
		 0.089324974 0.26335412 0.065439887 0.43718529 0.083770767 0.26071319 0.061584923
		 0.45032695 0.064217411 0.45291767 0.060328323 0.57531565 0.094638385 0.57447171 0.087409958
		 0.57755905 0.12448955 0.57645124 0.080898046 0.57657325 0.13060039 0.57696199 0.073867396
		 0.57808441 0.02182061 0.57845086 0.014096051 0.60189003 0.1828056 0.51022148 0.14570792
		 0.51190025 0.14063837 0.51357281 0.13558038 0.51655781 0.12939861 0.5177899 0.12457095
		 0.52490723 0.098816767 0.52619642 0.094666436 0.5277434 0.089746259 0.5352602 0.071493737
		 0.85289466 0.082697742 0.85227662 0.089940585 0.85072201 0.07625863 0.85096729 0.11984499
		 0.85000724 0.069260791 0.85214442 0.12593019 0.84736431 0.017293179 0.8467772 0.0095838057
		 0.82833689 0.17892404 0.70507789 0.5846985 0.71321404 0.53862411 0.71849573 0.58507043
		 0.23684627 0.026158746 0.47632489 0.024595896 0.70769018 0.58828217 0.7069155 0.58725339
		 0.71649832 0.58751875 0.71565944 0.58850235 0.28519198 0.32875761 0.33058918 0.97636718
		 0.21349472 0.97504324 0.19231749 0.22046104 0.18975547 0.20924218 0.19479305 0.22842035
		 0.20011127 0.24669439 0.50116277 0.29655766 0.16590166 0.19057788 0.29008448 0.39098606
		 0.2536121 0.4021031 0.52421451 0.63409871 0.38957378 0.069538072 0.54778975 0.14292514
		 0.32417491 0.069969736 0.32157055 0.065426692 0.39388189 0.059315223 0.55114609 0.13261344
		 0.55659938 0.10612105 0.55750257 0.10193028 0.42181045 0.028800102 0.56371802 0.078318082
		 0.31973556 0.059804846 0.31568024 0.056010325 0.29648533 0.036820095 0.29404449 0.033560213
		 0.15543348 0.099673137 0.28397769 0.010852136 0.38720056 0.073937699 0.36045459 0.082240328
		 0.35696736 0.083952084 0.32660452 0.074337386 0.16926646 0.18660812 0.71245366 0.5966962
		 0.73231405 0.59387285 0.70844805 0.58927602 0.70733583 0.58750015;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 588 ".vt";
	setAttr ".vt[0:165]"  -0.9744733 8.90679932 1.82085013 -1.35231984 13.42650795 1.06578958
		 -1.35231984 13.38300514 -1.55668294 -1.26115263 9.20161343 -1.52213085 -1.78046572 9.85853386 -2.072849512
		 0 9.072768211 -2.21771288 -1.65994084 8.96491051 0 0 8.79661942 2.10916591 -1.54011977 9.71964741 1.75445247
		 0 13.41575432 1.75892448 -1.45021987 13.57233238 0 0 13.6115551 -1.93221748 0 9.60826778 2.6683774
		 0 13.97094727 0 0 9.96315575 -3.067878962 -2.35147762 9.85853386 -2.2351742e-08 0 10.39578629 2.66479945
		 -1.74005008 10.39578915 1.69321239 -2.38193011 10.39579105 0 -1.94592428 10.3957901 -2.30353522
		 0 10.3957901 -3.30912399 0 12.033377647 -3.059367895 -1.95114338 11.95929623 -2.28519177
		 -2.36216331 12.21062374 0 -1.79579651 11.95929623 1.61043847 0 12.033377647 2.35822988
		 0 10.7313242 2.42566109 -1.79204416 10.73132992 1.69403362 -2.37637568 10.73133087 0
		 -1.94739103 10.73132992 -2.47476077 0 10.73132992 -3.2669065 0 12.65474606 -2.80033159
		 -1.61258054 12.58639717 -2.15431571 -2.18873 12.81237125 0 -1.73234963 12.53920746 1.62270093
		 0 12.65983963 2.19775367 -0.80962861 8.71064663 -0.36428171 0 8.71064758 0.51820123
		 0 8.71064758 -1.10008013 -0.63441938 8.71064663 0.14439327 -0.26457024 8.71064663 -0.71541989
		 -0.80962873 8.48303127 -0.36428231 -0.63441938 8.48303127 0.14439288 0 8.48303223 0.51820099
		 -0.26457024 8.48303127 -0.71542048 0 8.48303318 -1.10008025 -1.48398435 8.12960625 -0.042234227
		 -0.80853462 8.25409508 -0.61043763 0 8.2541008 -1.4087373 -1.50997829 3.4455843 -0.042234223
		 0 2.78583097 -0.042234879 -1.32483351 3.30196857 0.88428611 0 2.81350565 1.10472929
		 -0.83883864 3.64815474 -0.62613338 0 3.27842903 -0.75176114 -1.43442965 5.55433655 -0.042234223
		 -1.018874168 5.55433655 -0.90639699 0 5.66518402 -1.022193551 0 5.99723816 1.53488541
		 -1.0028986931 5.75971699 1.20206785 -1.42536676 4.77171469 -0.042234223 -0.55369222 4.76676559 -0.97950196
		 0 4.25213289 -1.1430378 0 4.063379288 1.46928358 -0.84386581 4.57801437 1.23001373
		 -1.537449 8.084179878 -0.040028624 -1.53744733 7.68166447 0.49306774 -1.53745008 6.92882442 -0.040028621
		 -1.53744709 7.68166447 -0.67679983 -1.53744781 7.95709515 0.3072367 -1.53744876 7.25288677 0.43376657
		 -1.53744876 7.2223444 -0.59402132 -1.53744757 7.97018337 -0.42822379 -5.14920568 7.66303539 0.43086001
		 -5.14920568 7.27986908 0.37786567 -5.14920759 6.99027634 -0.045542143 -5.14920568 7.25257587 -0.54061687
		 -5.14920568 7.66303539 -0.61459076 -5.14920568 8.022734642 -0.045542099 -5.14920568 7.9091692 0.2647967
		 -5.14920568 7.92086411 -0.39245683 -3.73743272 7.71851969 0.61614037 -3.73743391 7.19953203 0.54436195
		 -3.73743701 6.80728865 -0.029122449 -3.73743391 7.16256475 -0.69967711 -3.73743272 7.71851969 -0.79987133
		 -3.73743343 8.067738533 -0.4989987 -3.73743463 8.20571899 -0.029122401 -3.73743343 8.051896095 0.39121294
		 -3.92656875 7.69046497 0.52245939 -3.92657185 7.97973347 0.32729411 -3.92657232 8.11320114 -0.037424352
		 -3.92657185 7.99347687 -0.44512853 -3.92656875 7.69046497 -0.70619029 -3.92657232 7.20807457 -0.61925334
		 -3.92657328 6.89980793 -0.037424419 -3.92657232 7.2401495 0.46017855 -3.59617567 7.67610455 0.47450244
		 -3.59617662 7.26094151 0.41708362 -3.59617805 6.9471674 -0.041674234 -3.53576493 7.23136997 -0.57808304
		 -3.53576398 7.67610455 -0.65823364 -3.59617615 7.95546436 -0.41755053 -3.5961771 8.065839767 -0.041674223
		 -3.59617615 7.94279003 0.29457211 -1.77643943 7.68349838 0.49919182 -1.77644134 7.25023174 0.43926981
		 -1.77644241 6.92277813 -0.039485987 -1.77644062 7.21937084 -0.59927887 -1.77643943 7.68349838 -0.68292379
		 -1.77643991 7.97503757 -0.43174583 -1.77644134 8.090227127 -0.039485987 -1.77644014 7.96181107 0.31141579
		 -0.60320574 2.98216152 1.10721552 0 3.43844318 1.37766385 -0.55859613 3.5121603 -0.80139303
		 0 3.72613287 -1.099433541 -0.26380357 3.7003665 -0.98787856 -0.55341876 3.46213102 1.14238489
		 -0.11775923 2.82059574 -0.078180179 -0.77475244 2.79299879 1.02224803 -1.54568923 3.21982145 -0.07817965
		 -0.51799643 3.21875525 -0.62515932 -0.24713799 2.68523598 0.96678263 -1.32656515 3.11182785 0.9021585
		 -1.063764811 3.22813177 -0.4326621 -0.1275094 2.87281132 -0.6329304 -0.93187463 1.52594614 0.89581919
		 -1.37412202 1.52594817 0.6992082 -1.57240093 1.63855886 -0.048439566 -1.21117699 1.63855886 -0.4400073
		 -0.80846775 1.63855684 -0.5136587 -0.44086021 1.63855588 -0.48308727 -0.32243598 1.63855588 -0.048439395
		 -0.4578906 1.52594519 0.69921166 -0.4790892 1.809165 0.68746102 -0.33926067 1.91747189 -0.03162241
		 -0.44480941 1.91747284 -0.50389618 -0.81220514 1.91747284 -0.59646845 -1.20920038 1.91747284 -0.47344357
		 -1.55559671 1.91747284 -0.031622581 -1.36386859 1.809165 0.68745768 -0.93718308 1.809165 0.89053488
		 0 2.84699535 -0.50580162 0 2.65074205 0.92992485 -0.28711274 2.89378262 1.10591257
		 0 3.12452364 1.27634859 -0.23625796 3.093070984 1.1522994 0 3.53907871 -0.96431684
		 -0.3251209 3.36294508 -0.89717931 -0.16136143 3.52850294 -1.036600113 -5.92591238 7.41052055 -0.045541894
		 -5.98625326 7.53247452 0.57312787 -5.68931341 7.40390396 0.37786889 -5.68931437 7.22946024 -0.045541927
		 -5.68931341 7.37661076 -0.46482736 -5.92591095 7.53247547 -0.53880137 -5.84230709 8.022736549 -0.045541871
		 -5.9026494 7.9091711 0.40706459 -5.84230661 7.92086601 -0.37244651 -7.050072193 8.013431549 -0.042609032
		 -6.94393921 7.6657238 -0.042609062 -6.82066011 7.90671492 0.29968354 -6.64934826 7.668787 0.46021125
		 -6.64934826 7.66265965 -0.56172186 -6.82066011 7.91189337 -0.4009122;
	setAttr ".vt[166:331]" -6.40493774 8.017385483 -0.043855254 -6.40493774 7.90775871 0.28486082
		 -6.44046307 7.61086464 0.44774067 -6.44046402 7.60910416 -0.04385528 -6.44046307 7.60734177 -0.55198252
		 -6.40493774 7.91570568 -0.38881654 -6.31517649 8.018239021 -0.044124331 -6.31517601 7.90798378 0.28166032
		 -6.35837173 7.59835815 0.44504812 -6.35837221 7.59687901 -0.044124361 -6.35837173 7.59539795 -0.54987955
		 -6.31517601 7.91652918 -0.38620493 -5.0079946518 7.69523954 0.53840542 -5.0079960823 7.2332406 0.47450802
		 -5.0079984665 6.8840661 -0.036011569 -5.0079960823 7.20033169 -0.63294291 -5.0079946518 7.69523954 -0.72213614
		 -5.0079956055 8.0061149597 -0.45430025 -5.0079965591 8.12894344 -0.036011506 -5.0079956055 7.99201393 0.33817607
		 -4.82689238 7.67026615 0.45500752 -4.82689333 7.26939774 0.39956513 -4.82689476 6.96642685 -0.043402139
		 -4.82689333 7.24084377 -0.56134707 -4.82689238 7.67026615 -0.63873833 -4.82689285 7.94000626 -0.40634221
		 -4.82689333 8.046583176 -0.043402079 -4.82689285 7.92777157 0.28127232 -5.37464142 7.66303539 0.72610235
		 -5.37464142 7.27986908 0.67310798 -5.56804371 7.28672934 0.67311132 -5.9358139 7.49963045 0.74511445
		 -5.50558281 7.76506281 0.64609611 -5.84230661 7.76506472 0.56004238 -6.025570393 7.53405285 1.19977546
		 -5.87381506 7.55821323 1.28116179 -5.7794981 7.42116165 1.33174384 -5.83693695 7.25995064 1.30093944
		 -5.98869276 7.23579025 1.21955299 -6.083009243 7.37284184 1.16897094 -5.79512358 7.57380772 0.85476148
		 -5.86922359 7.36583328 0.81502151 -5.7475481 7.18902779 0.88027596 -5.55177259 7.22019577 0.98527032
		 -5.47767258 7.4281702 1.025010228 -5.59934807 7.6049757 0.95975578 -5.82307482 7.57380772 0.90688038
		 -5.89717484 7.36583328 0.86714047 -5.77549982 7.18902779 0.93239492 -5.57972431 7.22019577 1.037389278
		 -5.50562382 7.4281702 1.077129126 -5.62729931 7.6049757 1.011874676 0.9744733 8.90679932 1.82085013
		 1.35231984 13.42650795 1.06578958 1.35231984 13.38300514 -1.55668294 1.26115263 9.20161343 -1.52213085
		 1.78046572 9.85853386 -2.072849512 1.65994084 8.96491051 0 1.54011977 9.71964741 1.75445247
		 1.45021987 13.57233238 0 2.35147762 9.85853386 -2.2351742e-08 1.74005008 10.39578915 1.69321239
		 2.38193011 10.39579105 0 1.94592428 10.3957901 -2.30353522 1.95114338 11.95929623 -2.28519177
		 2.36216331 12.21062374 0 1.79579651 11.95929623 1.61043847 1.79204416 10.73132992 1.69403362
		 2.37637568 10.73133087 0 1.94739103 10.73132992 -2.47476077 1.61258054 12.58639717 -2.15431571
		 2.18873 12.81237125 0 1.73234963 12.53920746 1.62270093 0.80962861 8.71064663 -0.36428171
		 0.63441938 8.71064663 0.14439327 0.26457024 8.71064663 -0.71541989 0.80962873 8.48303127 -0.36428231
		 0.63441938 8.48303127 0.14439288 0.26457024 8.48303127 -0.71542048 1.48398435 8.12960625 -0.042234227
		 0.80853462 8.25409508 -0.61043763 1.50997829 3.4455843 -0.042234223 1.32483351 3.30196857 0.88428611
		 0.83883864 3.64815474 -0.62613338 1.43442965 5.55433655 -0.042234223 1.018874168 5.55433655 -0.90639699
		 1.0028986931 5.75971699 1.20206785 1.42536676 4.77171469 -0.042234223 0.55369222 4.76676559 -0.97950196
		 0.84386581 4.57801437 1.23001373 1.537449 8.084179878 -0.040028624 1.53744733 7.68166447 0.49306774
		 1.53745008 6.92882442 -0.040028621 1.53744709 7.68166447 -0.67679983 1.53744781 7.95709515 0.3072367
		 1.53744876 7.25288677 0.43376657 1.53744876 7.2223444 -0.59402132 1.53744757 7.97018337 -0.42822379
		 5.14920568 7.66303539 0.43086001 5.14920568 7.27986908 0.37786567 5.14920759 6.99027634 -0.045542143
		 5.14920568 7.25257587 -0.54061687 5.14920568 7.66303539 -0.61459076 5.14920568 8.022734642 -0.045542099
		 5.14920568 7.9091692 0.2647967 5.14920568 7.92086411 -0.39245683 3.73743272 7.71851969 0.61614037
		 3.73743391 7.19953203 0.54436195 3.73743701 6.80728865 -0.029122449 3.73743391 7.16256475 -0.69967711
		 3.73743272 7.71851969 -0.79987133 3.73743343 8.067738533 -0.4989987 3.73743463 8.20571899 -0.029122401
		 3.73743343 8.051896095 0.39121294 3.92656875 7.69046497 0.52245939 3.92657185 7.97973347 0.32729411
		 3.92657232 8.11320114 -0.037424352 3.92657185 7.99347687 -0.44512853 3.92656875 7.69046497 -0.70619029
		 3.92657232 7.20807457 -0.61925334 3.92657328 6.89980793 -0.037424419 3.92657232 7.2401495 0.46017855
		 3.59617567 7.67610455 0.47450244 3.59617662 7.26094151 0.41708362 3.59617805 6.9471674 -0.041674234
		 3.53576493 7.23136997 -0.57808304 3.53576398 7.67610455 -0.65823364 3.59617615 7.95546436 -0.41755053
		 3.5961771 8.065839767 -0.041674223 3.59617615 7.94279003 0.29457211 1.77643943 7.68349838 0.49919182
		 1.77644134 7.25023174 0.43926981 1.77644241 6.92277813 -0.039485987 1.77644062 7.21937084 -0.59927887
		 1.77643943 7.68349838 -0.68292379 1.77643991 7.97503757 -0.43174583 1.77644134 8.090227127 -0.039485987
		 1.77644014 7.96181107 0.31141579 0.60320574 2.98216152 1.10721552 0.55859613 3.5121603 -0.80139303
		 0.26380357 3.7003665 -0.98787856 0.55341876 3.46213102 1.14238489 0.11775923 2.82059574 -0.078180179
		 0.77475244 2.79299879 1.02224803 1.54568923 3.21982145 -0.07817965 0.51799643 3.21875525 -0.62515932
		 0.24713799 2.68523598 0.96678263 1.32656515 3.11182785 0.9021585 1.063764811 3.22813177 -0.4326621
		 0.1275094 2.87281132 -0.6329304 0.93187457 1.52594614 0.89581919 1.37412202 1.52594817 0.6992082
		 1.57240105 1.63855886 -0.048439566 1.21117699 1.63855886 -0.4400073 0.80846775 1.63855684 -0.5136587
		 0.44086024 1.63855588 -0.48308727 0.322436 1.63855588 -0.048439395 0.4578906 1.52594519 0.69921166
		 0.4790892 1.809165 0.68746102 0.33926067 1.91747189 -0.03162241 0.44480941 1.91747284 -0.50389618
		 0.81220514 1.91747284 -0.59646845 1.20920038 1.91747284 -0.47344357 1.55559671 1.91747284 -0.031622581
		 1.36386859 1.809165 0.68745768 0.93718308 1.809165 0.89053488;
	setAttr ".vt[332:497]" 0.28711274 2.89378262 1.10591257 0.23625796 3.093070984 1.1522994
		 0.3251209 3.36294508 -0.89717931 0.16136143 3.52850294 -1.036600113 5.92591238 7.41052055 -0.045541894
		 5.98625326 7.53247452 0.57312787 5.68931341 7.40390396 0.37786889 5.68931437 7.22946024 -0.045541927
		 5.68931341 7.37661076 -0.46482736 5.92591095 7.53247547 -0.53880137 5.84230709 8.022736549 -0.045541871
		 5.9026494 7.9091711 0.40706459 5.84230661 7.92086601 -0.37244651 7.050072193 8.013431549 -0.042609032
		 6.94393921 7.6657238 -0.042609062 6.82066011 7.90671492 0.29968354 6.64934826 7.668787 0.46021125
		 6.64934826 7.66265965 -0.56172186 6.82066011 7.91189337 -0.4009122 6.40493774 8.017385483 -0.043855254
		 6.40493774 7.90775871 0.28486082 6.44046307 7.61086464 0.44774067 6.44046402 7.60910416 -0.04385528
		 6.44046307 7.60734177 -0.55198252 6.40493774 7.91570568 -0.38881654 6.31517649 8.018239021 -0.044124331
		 6.31517601 7.90798378 0.28166032 6.35837173 7.59835815 0.44504812 6.35837221 7.59687901 -0.044124361
		 6.35837173 7.59539795 -0.54987955 6.31517601 7.91652918 -0.38620493 5.0079946518 7.69523954 0.53840542
		 5.0079960823 7.2332406 0.47450802 5.0079984665 6.8840661 -0.036011569 5.0079960823 7.20033169 -0.63294291
		 5.0079946518 7.69523954 -0.72213614 5.0079956055 8.0061149597 -0.45430025 5.0079965591 8.12894344 -0.036011506
		 5.0079956055 7.99201393 0.33817607 4.82689238 7.67026615 0.45500752 4.82689333 7.26939774 0.39956513
		 4.82689476 6.96642685 -0.043402139 4.82689333 7.24084377 -0.56134707 4.82689238 7.67026615 -0.63873833
		 4.82689285 7.94000626 -0.40634221 4.82689333 8.046583176 -0.043402079 4.82689285 7.92777157 0.28127232
		 5.37464142 7.66303539 0.72610235 5.37464142 7.27986908 0.67310798 5.56804371 7.28672934 0.67311132
		 5.9358139 7.49963045 0.74511445 5.50558281 7.76506281 0.64609611 5.84230661 7.76506472 0.56004238
		 6.025570393 7.53405285 1.19977546 5.87381506 7.55821323 1.28116179 5.7794981 7.42116165 1.33174384
		 5.83693695 7.25995064 1.30093944 5.98869276 7.23579025 1.21955299 6.083009243 7.37284184 1.16897094
		 5.79512358 7.57380772 0.85476148 5.86922359 7.36583328 0.81502151 5.7475481 7.18902779 0.88027596
		 5.55177259 7.22019577 0.98527032 5.47767258 7.4281702 1.025010228 5.59934807 7.6049757 0.95975578
		 5.82307482 7.57380772 0.90688038 5.89717484 7.36583328 0.86714047 5.77549982 7.18902779 0.93239492
		 5.57972431 7.22019577 1.037389278 5.50562382 7.4281702 1.077129126 5.62729931 7.6049757 1.011874676
		 -3.38307047 7.67674589 0.47664526 -3.38307142 7.26001215 0.41900918 -3.38307285 6.94505072 -0.041484315
		 -3.38307142 7.23032856 -0.57992268 -3.38307047 7.67674589 -0.66037655 -3.38307095 7.95716286 -0.41878256
		 -3.3830719 8.067955971 -0.041484304 -3.38307095 7.94444084 0.29603401 3.38307047 7.67674589 0.47664526
		 3.38307142 7.26001215 0.41900918 3.38307285 6.94505072 -0.041484315 3.38307142 7.23032856 -0.57992268
		 3.38307047 7.67674589 -0.66037655 3.38307095 7.95716286 -0.41878256 3.3830719 8.067955971 -0.041484304
		 3.38307095 7.94444084 0.29603401 -0.94788063 8.77301502 -0.28408802 -1.62410545 8.4160471 -0.050725229
		 -0.9193027 8.53033352 0.62420058 -0.74785501 8.77436161 0.2479758 5.2382698e-09 8.53618336 1.28827763
		 3.7252903e-09 8.77570915 0.64517248 -1.030315161 7.928689 1.66962802 -1.19770825 5.71683311 1.40820765
		 -7.4505806e-09 5.98099232 1.85602951 -1.8795527e-09 7.87210608 1.83113635 -3.949292e-09 7.79202318 -1.8426553
		 0 5.60087395 -1.33486819 -1.21380043 5.47965193 -1.11577046 -0.97254384 7.87732172 -1.44360089
		 -1.4901161e-08 8.4169178 -1.64674294 -0.96089202 8.47695255 -0.77802867 -1.6805892 8.36333084 -0.031678796
		 -1.7004087 8.21299744 0.43621662 -1.76389599 7.79640245 0.65998089 -1.82840097 7.21466351 0.57420564
		 -1.74070346 5.47704601 -0.049702533 -1.84372389 6.85153389 -0.047496922 -1.78429246 7.16734219 -0.7814393
		 -1.7091769 7.77733564 -0.91099161 -1.68428314 8.21977615 -0.57662183 0.94788063 8.77301502 -0.28408808
		 0.74785501 8.77436161 0.24797577 0.9193027 8.53033352 0.62420058 1.62410545 8.4160471 -0.050725278
		 1.030315161 7.928689 1.6696279 1.19770825 5.71683311 1.40820765 0.97254384 7.87732172 -1.44360089
		 1.21380043 5.47965193 -1.11577046 0.96089202 8.47695255 -0.77802867 1.7004087 8.21299744 0.43621671
		 1.6805892 8.36333084 -0.031678729 1.82840097 7.21466351 0.57420564 1.76389599 7.79640245 0.65998089
		 1.78429258 7.16734219 -0.7814393 1.84372389 6.85153389 -0.047496922 1.74070346 5.47704601 -0.049702518
		 1.68428314 8.21977615 -0.57662183 1.7091769 7.77733564 -0.91099161 -0.99776173 -0.049381107 0.5341745
		 -0.43689746 -0.049381107 0.45168945 -0.40964538 -0.049381107 0.023038346 -1.016538739 -0.04937999 -0.0086271539
		 -1.44054246 -0.049374834 -0.022824451 -1.39736581 -0.04937999 0.45168939 -0.91521651 -0.049372733 -0.46993795
		 -1.15587497 -0.049372733 -0.43758744 -0.55257827 -0.049376905 -0.32678711 -0.90497547 1.27510095 0.87166649
		 -1.38850439 1.27509999 0.72496408 -1.59560525 1.3934176 -0.060580261 -1.21484518 1.3934176 -0.58036023
		 -0.80330694 1.3934176 -0.64104074 -0.42178935 1.39341855 -0.58199179 -0.29920679 1.39341855 -0.060580011
		 -0.43299949 1.27510095 0.7249673 -1.39630103 0.57479322 0.48444289 -0.90497518 0.64825296 0.76811975
		 -0.90497512 0.60050696 0.72767127 -1.39736283 0.45523581 0.45169082 -1.45912457 0.58897763 -0.02734611
		 -1.44054008 0.45524001 -0.022820566 -1.16294003 0.58897972 -0.4546932 -1.15587199 0.45524207 -0.43758106
		 -0.9018023 0.58897972 -0.49043918 -0.9152146 0.45524207 -0.46993148 -0.53690213 0.58897763 -0.35736775
		 -0.55257732 0.45523894 -0.32678053 -0.39640841 0.58897346 0.013019718 -0.40964451 0.4552348 0.023041883
		 -0.43642971 0.57479221 0.48444253 -0.43689674 0.4552348 0.45169008 -0.90497506 0.43620014 1.2043879
		 -0.5010283 0.29092801 1.10970569 -0.50102878 -0.049383119 1.10970521;
	setAttr ".vt[498:587]" -0.88451153 -0.04938215 1.20438683 -1.25633633 0.29093006 1.13410079
		 -1.2563374 -0.049381107 1.13409901 -0.90497518 0.74926382 0.8022936 -0.43603504 0.67580307 0.51211429
		 -0.38522574 0.70196533 0.0045523066 -0.52365881 0.70196843 -0.38321006 -0.89047068 0.70197052 -0.50776541
		 -1.16891146 0.70197052 -0.46915081 -1.47482634 0.70196843 -0.031169599 -1.39540434 0.67580307 0.51211417
		 -0.91553998 1.39408064 0.96505898 -0.38942623 1.39408004 0.77344626 -0.2396642 1.52243018 -0.078705572
		 -0.37364051 1.52243018 -0.60921586 -0.79006779 1.52243018 -0.65866584 -1.24278212 1.52243114 -0.58378023
		 -1.65516031 1.52243114 -0.078705803 -1.42983365 1.39408123 0.77344263 0.99776173 -0.049381107 0.5341745
		 0.43689746 -0.049381107 0.45168945 0.40964538 -0.049381107 0.023038346 1.016538739 -0.04937999 -0.0086271539
		 1.44054246 -0.049374834 -0.022824451 1.39736581 -0.04937999 0.45168939 0.91521651 -0.049372733 -0.46993795
		 1.15587497 -0.049372733 -0.43758744 0.55257827 -0.049376905 -0.32678711 0.90497547 1.27510095 0.87166649
		 1.38850439 1.27509999 0.72496408 1.59560525 1.3934176 -0.060580261 1.21484518 1.3934176 -0.58036023
		 0.80330694 1.3934176 -0.64104074 0.42178935 1.39341855 -0.58199179 0.29920679 1.39341855 -0.060580011
		 0.43299949 1.27510095 0.7249673 1.39630103 0.57479322 0.48444289 0.90497518 0.64825296 0.76811975
		 0.90497512 0.60050696 0.72767127 1.39736283 0.45523581 0.45169082 1.45912457 0.58897763 -0.02734611
		 1.44054008 0.45524001 -0.022820566 1.16294003 0.58897972 -0.4546932 1.15587199 0.45524207 -0.43758106
		 0.9018023 0.58897972 -0.49043918 0.9152146 0.45524207 -0.46993148 0.53690213 0.58897763 -0.35736775
		 0.55257732 0.45523894 -0.32678053 0.39640841 0.58897346 0.013019718 0.40964451 0.4552348 0.023041883
		 0.43642971 0.57479221 0.48444253 0.43689674 0.4552348 0.45169008 0.90497506 0.43620014 1.2043879
		 0.5010283 0.29092801 1.10970569 0.50102878 -0.049383119 1.10970521 0.88451153 -0.04938215 1.20438683
		 1.25633621 0.29093006 1.13410079 1.25633752 -0.049381107 1.13409901 0.90497518 0.74926382 0.8022936
		 0.43603504 0.67580307 0.51211429 0.38522574 0.70196533 0.0045523066 0.52365881 0.70196843 -0.38321006
		 0.89047068 0.70197052 -0.50776541 1.16891146 0.70197052 -0.46915081 1.47482634 0.70196843 -0.031169599
		 1.39540434 0.67580307 0.51211417 0.91553998 1.39408064 0.96505898 0.3894262 1.39408004 0.77344626
		 0.2396642 1.52243018 -0.078705572 0.37364054 1.52243018 -0.60921586 0.79006773 1.52243018 -0.65866584
		 1.242782 1.52243114 -0.58378023 1.65516031 1.52243114 -0.078705803 1.42983365 1.39408123 0.77344263
		 -0.46848989 1.66755509 0.69333637 -0.33084834 1.77801394 -0.040030904 -0.44283479 1.77801442 -0.49349171
		 -0.81033647 1.7780149 -0.55506361 -1.21018863 1.77801585 -0.45672542 -1.56399882 1.77801585 -0.040031075
		 -1.36899531 1.66755652 0.69333291 -0.93452883 1.66755557 0.89317703 0.46848989 1.66755509 0.69333637
		 0.33084834 1.77801394 -0.040030904 0.44283482 1.77801442 -0.49349171 0.81033647 1.7780149 -0.55506361
		 1.21018863 1.77801585 -0.45672542 1.56399894 1.77801585 -0.040031075 1.36899531 1.66755652 0.69333291
		 0.93452883 1.66755557 0.89317703;
	setAttr -s 1172 ".ed";
	setAttr ".ed[0:165]"  7 0 1 9 1 1 11 2 1 5 3 1 0 8 1 8 17 1 1 10 1 10 2 1
		 2 32 1 4 3 1 3 6 1 6 0 1 7 12 1 8 12 1 9 35 1 9 13 1 10 13 1 11 13 1 11 31 1 4 14 1
		 5 14 1 5 38 1 6 36 1 7 37 1 6 15 1 15 8 1 4 15 1 10 33 1 16 12 1 17 27 1 18 15 1
		 19 4 1 20 14 1 16 17 1 17 18 1 18 19 1 19 20 1 21 30 1 22 29 1 23 28 1 24 34 1 25 26 1
		 21 22 1 22 23 1 23 24 1 24 25 1 26 16 1 27 24 1 28 18 1 29 19 1 30 20 1 26 27 1 27 28 1
		 28 29 1 29 30 1 31 21 1 32 22 1 33 23 1 34 1 1 35 25 1 31 32 1 32 33 1 33 34 1 34 35 1
		 36 39 1 36 40 1 39 37 1 0 39 1 40 38 1 3 40 1 36 41 1 39 42 1 41 42 1 37 43 1 42 43 1
		 40 44 1 38 45 1 44 45 1 41 44 1 41 46 1 44 47 1 45 48 1 47 48 1 46 47 1 49 121 1
		 49 51 1 51 113 1 52 144 1 53 115 1 49 53 1 54 143 1 55 60 1 56 61 1 57 62 1 58 63 1
		 59 64 1 55 56 1 56 57 1 58 59 1 59 55 1 60 49 1 61 53 1 62 116 1 63 114 1 64 51 1
		 60 61 1 61 62 1 63 64 1 64 60 1 65 69 1 66 70 1 67 71 1 68 72 1 69 66 1 70 67 1 71 68 1
		 72 65 1 66 105 1 70 106 1 73 74 1 67 107 1 74 75 1 71 108 1 75 76 1 68 109 1 76 77 1
		 65 111 1 69 112 1 78 79 1 79 73 1 72 110 1 77 80 1 80 78 1 81 89 1 82 96 1 83 95 1
		 84 94 1 85 93 1 86 92 1 87 91 1 88 90 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 81 1 89 186 1 90 193 1 91 192 1 92 191 1 93 190 1 94 189 1 95 188 1 96 187 1
		 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 89 1 97 81 1;
	setAttr ".ed[166:331]" 98 82 1 99 83 1 100 84 1 101 85 1 102 86 1 103 87 1
		 104 88 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 97 1
		 105 403 1 106 404 1 107 405 1 108 406 1 109 407 1 110 408 1 111 409 1 112 410 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 105 1 113 145 1 114 146 1
		 113 118 1 115 149 1 116 148 1 113 120 1 115 117 1 117 116 1 61 117 1 118 114 1 64 118 1
		 119 50 1 122 115 1 119 123 1 120 124 1 121 125 1 122 126 1 123 120 1 124 121 1 51 124 1
		 125 122 1 53 125 1 126 119 1 123 135 1 120 142 1 119 136 1 124 141 1 121 140 1 122 138 1
		 125 139 1 126 137 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 127 1 135 572 1 136 573 1 137 574 1 138 575 1 139 576 1 140 577 1 141 578 1 142 579 1
		 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 135 1 143 50 1
		 126 143 1 144 50 1 123 144 1 145 52 1 146 52 1 123 145 1 145 147 1 147 146 1 118 147 1
		 148 54 1 149 54 1 148 150 1 149 126 1 150 149 1 117 150 1 74 153 1 152 153 1 75 154 1
		 151 154 1 76 155 1 77 156 1 155 156 1 78 157 1 79 158 1 158 152 1 80 159 1 156 159 1
		 157 158 1 151 152 1 153 154 1 159 157 1 156 151 1 154 155 1 157 172 1 151 175 1 160 161 1
		 158 173 1 160 162 1 152 174 1 162 163 1 161 163 1 156 176 1 159 177 1 164 165 1 165 160 1
		 164 161 1 166 160 1 167 162 1 168 163 1 169 161 1 170 164 1 171 165 1 166 167 1 167 168 1
		 168 169 1 169 170 1 170 171 1 171 166 1 172 166 1 173 167 1 174 168 1 175 169 1 176 170 1
		 177 171 1 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 172 1 178 73 1 179 74 1
		 180 75 1 181 76 1 182 77 1 183 80 1 184 78 1 185 79 1 178 179 1;
	setAttr ".ed[332:497]" 179 180 1 180 181 1 181 182 1 182 183 1 183 184 1 184 185 1
		 185 178 1 186 178 1 187 179 1 188 180 1 189 181 1 190 182 1 191 183 1 192 184 1 193 185 1
		 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1 192 193 1 193 186 1 73 194 1
		 74 195 1 194 195 1 153 196 1 195 196 1 152 197 1 197 196 1 79 198 1 198 194 1 158 199 1
		 199 197 1 198 199 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 200 1 199 206 1
		 198 211 1 194 210 1 195 209 1 196 208 1 197 207 1 205 202 1 206 212 1 207 213 1 208 214 1
		 209 215 1 210 216 1 211 217 1 206 207 1 207 208 1 208 209 1 209 210 1 210 211 1 211 206 1
		 212 200 1 213 205 1 214 204 1 215 203 1 216 202 1 217 201 1 212 213 1 213 214 1 214 215 1
		 215 216 1 216 217 1 217 212 1 7 218 1 9 219 1 11 220 1 5 221 1 218 224 1 224 227 1
		 219 225 1 225 220 1 220 236 1 222 221 1 221 223 1 223 218 1 224 12 1 225 13 1 222 14 1
		 223 239 1 223 226 1 226 224 1 222 226 1 225 237 1 227 233 1 228 226 1 229 222 1 16 227 1
		 227 228 1 228 229 1 229 20 1 230 235 1 231 234 1 232 238 1 21 230 1 230 231 1 231 232 1
		 232 25 1 233 232 1 234 228 1 235 229 1 26 233 1 233 234 1 234 235 1 235 30 1 236 230 1
		 237 231 1 238 219 1 31 236 1 236 237 1 237 238 1 238 35 1 239 240 1 239 241 1 240 37 1
		 218 240 1 241 38 1 221 241 1 239 242 1 240 243 1 242 243 1 243 43 1 241 244 1 244 45 1
		 242 244 1 242 245 1 244 246 1 246 48 1 245 246 1 247 310 1 247 248 1 248 304 1 249 305 1
		 247 249 1 250 253 1 251 254 1 252 255 1 250 251 1 251 57 1 58 252 1 252 250 1 253 247 1
		 254 249 1 255 248 1 253 254 1 254 62 1 63 255 1 255 253 1 256 260 1 257 261 1 258 262 1
		 259 263 1 260 257 1 261 258 1 262 259 1 263 256 1 257 296 1 261 297 1;
	setAttr ".ed[498:663]" 264 265 1 258 298 1 265 266 1 262 299 1 266 267 1 259 300 1
		 267 268 1 256 302 1 260 303 1 269 270 1 270 264 1 263 301 1 268 271 1 271 269 1 272 280 1
		 273 287 1 274 286 1 275 285 1 276 284 1 277 283 1 278 282 1 279 281 1 272 273 1 273 274 1
		 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 272 1 280 371 1 281 378 1 282 377 1
		 283 376 1 284 375 1 285 374 1 286 373 1 287 372 1 280 281 1 281 282 1 282 283 1 283 284 1
		 284 285 1 285 286 1 286 287 1 287 280 1 288 272 1 289 273 1 290 274 1 291 275 1 292 276 1
		 293 277 1 294 278 1 295 279 1 288 289 1 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1
		 294 295 1 295 288 1 296 411 1 297 412 1 298 413 1 299 414 1 300 415 1 301 416 1 302 417 1
		 303 418 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1 301 302 1 302 303 1 303 296 1
		 304 332 1 304 307 1 305 334 1 304 309 1 305 306 1 306 116 1 254 306 1 307 114 1 255 307 1
		 308 50 1 311 305 1 308 312 1 309 313 1 310 314 1 311 315 1 312 309 1 313 310 1 248 313 1
		 314 311 1 249 314 1 315 308 1 312 324 1 309 331 1 308 325 1 313 330 1 310 329 1 311 327 1
		 314 328 1 315 326 1 316 317 1 317 318 1 318 319 1 319 320 1 320 321 1 321 322 1 322 323 1
		 323 316 1 324 580 1 325 581 1 326 582 1 327 583 1 328 584 1 329 585 1 330 586 1 331 587 1
		 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 324 1 315 143 1
		 312 144 1 332 52 1 312 332 1 332 333 1 333 146 1 307 333 1 334 54 1 148 335 1 334 315 1
		 335 334 1 306 335 1 265 338 1 337 338 1 266 339 1 336 339 1 267 340 1 268 341 1 340 341 1
		 269 342 1 270 343 1 343 337 1 271 344 1 341 344 1 342 343 1 336 337 1 338 339 1 344 342 1
		 341 336 1 339 340 1 342 357 1 336 360 1 345 346 1 343 358 1 345 347 1;
	setAttr ".ed[664:829]" 337 359 1 347 348 1 346 348 1 341 361 1 344 362 1 349 350 1
		 350 345 1 349 346 1 351 345 1 352 347 1 353 348 1 354 346 1 355 349 1 356 350 1 351 352 1
		 352 353 1 353 354 1 354 355 1 355 356 1 356 351 1 357 351 1 358 352 1 359 353 1 360 354 1
		 361 355 1 362 356 1 357 358 1 358 359 1 359 360 1 360 361 1 361 362 1 362 357 1 363 264 1
		 364 265 1 365 266 1 366 267 1 367 268 1 368 271 1 369 269 1 370 270 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 363 1 371 363 1 372 364 1 373 365 1
		 374 366 1 375 367 1 376 368 1 377 369 1 378 370 1 371 372 1 372 373 1 373 374 1 374 375 1
		 375 376 1 376 377 1 377 378 1 378 371 1 264 379 1 265 380 1 379 380 1 338 381 1 380 381 1
		 337 382 1 382 381 1 270 383 1 383 379 1 343 384 1 384 382 1 383 384 1 385 386 1 386 387 1
		 387 388 1 388 389 1 389 390 1 390 385 1 384 391 1 383 396 1 379 395 1 380 394 1 381 393 1
		 382 392 1 390 387 1 391 397 1 392 398 1 393 399 1 394 400 1 395 401 1 396 402 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 391 1 397 385 1 398 390 1 399 389 1 400 388 1
		 401 387 1 402 386 1 397 398 1 398 399 1 399 400 1 400 401 1 401 402 1 402 397 1 403 97 1
		 404 98 1 405 99 1 406 100 1 407 101 1 408 102 1 409 103 1 410 104 1 403 404 1 404 405 1
		 405 406 1 406 407 1 407 408 1 408 409 1 409 410 1 410 403 1 411 288 1 412 289 1 413 290 1
		 414 291 1 415 292 1 416 293 1 417 294 1 418 295 1 411 412 1 412 413 1 413 414 1 414 415 1
		 415 416 1 416 417 1 417 418 1 418 411 1 41 419 1 46 420 1 419 420 1 420 421 1 42 422 1
		 422 421 1 419 422 1 421 423 1 43 424 1 424 423 1 422 424 1 59 426 1 425 426 1 58 427 1
		 427 426 1 428 427 1 425 428 1 57 430 1 429 430 1 56 431 1 431 430 1;
	setAttr ".ed[830:995]" 432 431 1 429 432 1 421 425 1 423 428 1 48 433 1 433 429 1
		 47 434 1 434 432 1 434 433 1 65 435 1 420 435 1 69 436 1 435 436 1 421 436 1 66 437 1
		 437 425 1 70 438 1 437 438 1 426 438 1 55 439 1 439 431 1 67 440 1 440 439 1 71 441 1
		 440 441 1 431 441 1 68 442 1 432 442 1 72 443 1 442 443 1 434 443 1 436 437 1 426 439 1
		 438 440 1 441 442 1 443 435 1 420 434 1 242 444 1 243 445 1 444 445 1 445 446 1 245 447 1
		 447 446 1 444 447 1 445 424 1 446 423 1 448 428 1 252 449 1 427 449 1 448 449 1 429 450 1
		 251 451 1 450 451 1 451 430 1 446 448 1 246 452 1 452 433 1 452 450 1 260 453 1 446 453 1
		 256 454 1 454 453 1 447 454 1 261 455 1 449 455 1 257 456 1 456 455 1 456 448 1 262 457 1
		 451 457 1 258 458 1 458 457 1 250 459 1 458 459 1 459 451 1 263 460 1 452 460 1 259 461 1
		 461 460 1 450 461 1 453 456 1 455 458 1 449 459 1 457 461 1 447 452 1 460 454 1 463 462 1
		 464 463 1 465 464 1 462 465 1 467 466 1 462 467 1 466 465 1 465 468 1 469 468 1 466 469 1
		 470 464 1 468 470 1 127 509 1 471 472 1 128 516 1 472 473 1 129 515 1 473 474 1 130 514 1
		 474 475 1 131 513 1 475 476 1 132 512 1 476 477 1 133 511 1 477 478 1 134 510 1 478 471 1
		 479 480 1 480 481 1 481 482 1 479 482 1 483 479 1 482 484 1 483 484 1 485 483 1 484 486 1
		 485 486 1 487 485 1 486 488 1 487 488 1 489 487 1 488 490 1 489 490 1 491 489 1 490 492 1
		 491 492 1 493 491 1 492 494 1 493 494 1 480 493 1 494 481 1 496 495 1 496 497 1 497 498 1
		 495 498 1 492 464 1 494 463 1 482 467 1 484 466 1 495 499 1 498 500 1 499 500 1 486 469 1
		 488 468 1 490 470 1 494 496 1 481 495 1 463 497 1 462 498 1 482 499 1 467 500 1 501 502 1
		 502 493 1 501 480 1 502 503 1 503 491 1 503 504 1 504 489 1 504 505 1;
	setAttr ".ed[996:1161]" 505 487 1 505 506 1 506 485 1 506 507 1 507 483 1 507 508 1
		 508 479 1 508 501 1 478 502 1 471 501 1 477 503 1 476 504 1 475 505 1 474 506 1 473 507 1
		 472 508 1 509 471 1 510 478 1 511 477 1 512 476 1 513 475 1 514 474 1 515 473 1 516 472 1
		 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1 516 509 1 518 517 1
		 519 518 1 520 519 1 517 520 1 522 521 1 517 522 1 521 520 1 520 523 1 524 523 1 521 524 1
		 525 519 1 523 525 1 316 564 1 526 527 1 317 571 1 527 528 1 318 570 1 528 529 1 319 569 1
		 529 530 1 320 568 1 530 531 1 321 567 1 531 532 1 322 566 1 532 533 1 323 565 1 533 526 1
		 534 535 1 535 536 1 536 537 1 534 537 1 538 534 1 537 539 1 538 539 1 540 538 1 539 541 1
		 540 541 1 542 540 1 541 543 1 542 543 1 544 542 1 543 545 1 544 545 1 546 544 1 545 547 1
		 546 547 1 548 546 1 547 549 1 548 549 1 535 548 1 549 536 1 551 550 1 551 552 1 552 553 1
		 550 553 1 547 519 1 549 518 1 537 522 1 539 521 1 550 554 1 553 555 1 554 555 1 541 524 1
		 543 523 1 545 525 1 549 551 1 536 550 1 518 552 1 517 553 1 537 554 1 522 555 1 556 557 1
		 557 548 1 556 535 1 557 558 1 558 546 1 558 559 1 559 544 1 559 560 1 560 542 1 560 561 1
		 561 540 1 561 562 1 562 538 1 562 563 1 563 534 1 563 556 1 533 557 1 526 556 1 532 558 1
		 531 559 1 530 560 1 529 561 1 528 562 1 527 563 1 564 526 1 565 533 1 566 532 1 567 531 1
		 568 530 1 569 529 1 570 528 1 571 527 1 564 565 1 565 566 1 566 567 1 567 568 1 568 569 1
		 569 570 1 570 571 1 571 564 1 572 134 1 573 133 1 574 132 1 575 131 1 576 130 1 577 129 1
		 578 128 1 579 127 1 572 573 1 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1
		 579 572 1 580 323 1 581 322 1 582 321 1 583 320 1 584 319 1 585 318 1;
	setAttr ".ed[1162:1171]" 586 317 1 587 316 1 580 581 1 581 582 1 582 583 1 583 584 1
		 584 585 1 585 586 1 586 587 1 587 580 1;
	setAttr -s 586 -ch 2344 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 12 -14 -5 -1
		mu 0 4 352 615 64 67
		f 4 -42 -46 -48 -52
		mu 0 4 617 618 52 51
		f 4 15 -17 -7 -2
		mu 0 4 333 334 335 63
		f 4 -18 2 -8 16
		mu 0 4 334 337 338 335
		f 4 37 -55 -39 -43
		mu 0 4 619 620 621 622
		f 4 -21 3 -10 19
		mu 0 4 348 344 709 349
		f 4 21 -69 -70 -4
		mu 0 4 707 76 72 345
		f 4 -86 84 -216 -217
		mu 0 4 0 1 2 3
		f 4 4 -26 -25 11
		mu 0 4 67 64 61 65
		f 4 24 -27 9 10
		mu 0 4 65 61 62 66
		f 4 -40 -44 38 -54
		mu 0 4 47 48 49 50
		f 4 47 -45 39 -53
		mu 0 4 51 52 48 47
		f 4 -29 33 -6 13
		mu 0 4 615 616 58 64
		f 4 5 34 30 25
		mu 0 4 64 58 55 61
		f 4 -31 35 31 26
		mu 0 4 61 55 56 62
		f 4 32 -20 -32 36
		mu 0 4 625 348 349 626
		f 4 55 42 -57 -61
		mu 0 4 341 619 622 342
		f 4 -58 -62 56 43
		mu 0 4 48 53 54 49
		f 4 40 -63 57 44
		mu 0 4 52 57 53 48
		f 4 -60 -64 -41 45
		mu 0 4 618 339 57 52
		f 4 -47 51 -30 -34
		mu 0 4 616 617 51 58
		f 4 29 52 48 -35
		mu 0 4 58 51 47 55
		f 4 -49 53 49 -36
		mu 0 4 55 47 50 56
		f 4 50 -37 -50 54
		mu 0 4 620 625 626 621
		f 4 18 60 -9 -3
		mu 0 4 337 341 342 338
		f 4 -28 7 8 61
		mu 0 4 53 59 60 54
		f 4 58 6 27 62
		mu 0 4 57 63 59 53
		f 4 -15 1 -59 63
		mu 0 4 339 333 63 57
		f 4 -12 22 64 -68
		mu 0 4 67 347 68 71
		f 4 88 -210 -218 -219
		mu 0 4 6 17 28 7
		f 4 -24 0 67 66
		mu 0 4 75 352 67 71
		f 4 -66 -23 -11 69
		mu 0 4 72 68 347 345
		f 4 70 72 -72 -65
		mu 0 4 68 717 70 71
		f 4 71 74 -74 -67
		mu 0 4 71 70 74 75
		f 4 76 -78 -76 68
		mu 0 4 76 77 73 72
		f 4 75 -79 -71 65
		mu 0 4 72 73 717 68
		f 4 811 812 -815 -816
		mu 0 4 327 353 99 328
		f 4 814 816 -819 -820
		mu 0 4 328 99 354 355
		f 4 81 -83 -81 77
		mu 0 4 363 362 78 364
		f 4 80 -84 -80 78
		mu 0 4 742 743 79 69
		f 4 -270 -282 271 -283
		mu 0 4 365 366 367 368
		f 4 821 -824 -825 -826
		mu 0 4 94 90 579 357
		f 4 827 -830 -831 -832
		mu 0 4 637 718 86 92
		f 4 -272 -285 -275 -286
		mu 0 4 368 367 373 374
		f 4 293 -293 -291 288
		mu 0 4 80 81 82 83
		f 4 832 825 -834 -817
		mu 0 4 99 94 357 354
		f 4 835 831 -838 838
		mu 0 4 359 637 92 356
		f 4 298 -289 -298 -297
		mu 0 4 84 80 83 85
		f 4 92 -106 -92 96
		mu 0 4 18 10 4 11
		f 4 93 -107 -93 97
		mu 0 4 639 713 10 18
		f 4 95 -108 -95 98
		mu 0 4 12 5 645 646
		f 4 91 -109 -96 99
		mu 0 4 11 4 5 12
		f 4 101 -90 -101 105
		mu 0 4 10 6 1 4
		f 4 102 -205 -206 106
		mu 0 4 713 712 16 10
		f 4 256 -258 -261 -260
		mu 0 4 471 470 651 650
		f 4 100 85 -105 108
		mu 0 4 4 1 0 5
		f 4 840 842 -844 -813
		mu 0 4 353 105 98 99
		f 4 -822 -846 847 -849
		mu 0 4 90 94 95 91
		f 4 -851 -853 854 -856
		mu 0 4 86 87 88 89
		f 4 837 857 859 -861
		mu 0 4 356 92 93 101
		f 4 861 845 -833 843
		mu 0 4 98 95 94 99
		f 4 852 -863 848 863
		mu 0 4 88 87 90 91
		f 4 830 855 864 -858
		mu 0 4 92 86 89 93
		f 4 860 865 -841 866
		mu 0 4 356 101 105 353
		f 4 133 -165 -135 -142
		mu 0 4 425 424 671 672
		f 4 134 -164 -136 -143
		mu 0 4 401 396 397 402
		f 4 135 -163 -137 -144
		mu 0 4 402 397 400 403
		f 4 136 -162 -138 -145
		mu 0 4 403 400 429 428
		f 4 139 -159 -141 -148
		mu 0 4 416 417 418 419
		f 4 140 -158 -134 -149
		mu 0 4 419 418 424 425
		f 4 137 -161 -139 -146
		mu 0 4 428 429 421 420
		f 4 138 -160 -140 -147
		mu 0 4 420 421 417 416
		f 4 165 141 -167 -174
		mu 0 4 446 425 672 674
		f 4 166 142 -168 -175
		mu 0 4 404 401 402 405
		f 4 167 143 -169 -176
		mu 0 4 405 402 403 406
		f 4 168 144 -170 -177
		mu 0 4 406 403 428 438
		f 4 169 145 -171 -178
		mu 0 4 438 428 420 431
		f 4 170 146 -172 -179
		mu 0 4 431 420 416 426
		f 4 171 147 -173 -180
		mu 0 4 426 416 419 427
		f 4 172 148 -166 -181
		mu 0 4 427 419 425 446
		f 4 330 129 -324 -339
		mu 0 4 433 149 143 442
		f 4 329 128 -331 -338
		mu 0 4 432 441 149 433
		f 4 328 132 -330 -337
		mu 0 4 439 449 441 432
		f 4 327 131 -329 -336
		mu 0 4 447 455 449 439
		f 4 326 125 -328 -335
		mu 0 4 390 383 455 447
		f 4 325 123 -327 -334
		mu 0 4 385 376 383 390
		f 4 324 121 -326 -333
		mu 0 4 384 375 376 385
		f 4 323 119 -325 -332
		mu 0 4 442 143 144 675
		f 4 181 785 -183 -190
		mu 0 4 452 445 676 677
		f 4 182 786 -184 -191
		mu 0 4 410 408 407 411
		f 4 183 787 -185 -192
		mu 0 4 411 407 409 412
		f 4 184 788 -186 -193
		mu 0 4 412 409 448 456
		f 4 185 789 -187 -194
		mu 0 4 456 448 440 450
		f 4 186 790 -188 -195
		mu 0 4 450 440 436 443
		f 4 187 791 -189 -196
		mu 0 4 443 436 435 444
		f 4 188 792 -182 -197
		mu 0 4 444 435 445 452
		f 4 117 189 -119 -111
		mu 0 4 461 452 677 678
		f 4 118 190 -121 -115
		mu 0 4 413 410 411 414
		f 4 120 191 -123 -112
		mu 0 4 414 411 412 415
		f 4 122 192 -125 -116
		mu 0 4 415 412 456 462
		f 4 124 193 -131 -113
		mu 0 4 462 456 450 458
		f 4 130 194 -127 -117
		mu 0 4 458 450 443 453
		f 4 126 195 -128 -110
		mu 0 4 453 443 444 454
		f 4 127 196 -118 -114
		mu 0 4 454 444 452 461
		f 4 104 86 199 -208
		mu 0 4 5 0 649 647
		f 4 -255 -256 -211 208
		mu 0 4 737 469 114 115
		f 4 90 -254 -266 263
		mu 0 4 711 472 27 23
		f 4 262 -264 -267 -265
		mu 0 4 710 711 23 22
		f 4 -204 -89 -102 205
		mu 0 4 16 17 6 10
		f 4 207 206 -104 107
		mu 0 4 5 647 648 645
		f 4 -87 216 -212 -203
		mu 0 4 649 0 3 653
		f 4 -85 89 218 -213
		mu 0 4 2 1 6 7
		f 4 243 1155 -237 -252
		mu 0 4 656 658 107 106
		f 4 236 1148 -238 -245
		mu 0 4 106 107 721 738
		f 4 241 1153 -243 -250
		mu 0 4 8 14 15 9
		f 4 242 1154 -244 -251
		mu 0 4 9 15 658 656
		f 4 239 1151 -241 -248
		mu 0 4 628 629 19 13
		f 4 240 1152 -242 -249
		mu 0 4 13 19 14 8
		f 4 237 1149 -239 -246
		mu 0 4 109 108 112 113
		f 4 238 1150 -240 -247
		mu 0 4 113 112 629 628
		f 4 220 244 -223 210
		mu 0 4 114 106 738 115
		f 4 222 245 -228 219
		mu 0 4 739 109 113 27
		f 4 227 246 -226 213
		mu 0 4 27 113 628 28
		f 4 225 247 -227 217
		mu 0 4 28 628 13 7
		f 4 226 248 -225 212
		mu 0 4 7 13 8 2
		f 4 224 249 -224 215
		mu 0 4 2 8 9 3
		f 4 223 250 -222 211
		mu 0 4 3 9 656 653
		f 4 221 251 -221 214
		mu 0 4 653 656 106 114
		f 4 252 -209 -220 253
		mu 0 4 472 715 739 27
		f 4 -257 -259 255 -88
		mu 0 4 470 471 114 469
		f 4 -198 202 -215 258
		mu 0 4 471 649 653 114
		f 4 197 259 -262 -200
		mu 0 4 649 471 650 647
		f 4 260 -199 -207 261
		mu 0 4 650 651 648 647
		f 4 201 264 -268 204
		mu 0 4 712 710 22 16
		f 4 -214 209 200 265
		mu 0 4 27 28 17 23
		f 4 266 -201 203 267
		mu 0 4 22 23 17 16
		f 4 268 282 -271 -122
		mu 0 4 375 365 368 376
		f 4 272 274 -274 -126
		mu 0 4 383 374 373 455
		f 4 -129 275 280 -277
		mu 0 4 149 441 451 164
		f 4 273 279 -279 -132
		mu 0 4 455 373 457 449
		f 4 283 -276 -133 278
		mu 0 4 457 451 441 449
		f 4 -124 270 285 -273
		mu 0 4 383 376 368 374
		f 4 299 290 -301 -306
		mu 0 4 464 83 82 465
		f 4 300 292 -302 -307
		mu 0 4 465 82 81 467
		f 4 301 -294 -303 -308
		mu 0 4 380 387 388 381
		f 4 303 296 -305 -310
		mu 0 4 389 84 85 466
		f 4 304 297 -300 -311
		mu 0 4 466 85 83 464
		f 4 302 -299 -304 -309
		mu 0 4 381 388 84 389
		f 4 311 305 -313 -318
		mu 0 4 459 464 465 460
		f 4 312 306 -314 -319
		mu 0 4 460 465 467 679
		f 4 313 307 -315 -320
		mu 0 4 371 380 381 372
		f 4 314 308 -316 -321
		mu 0 4 372 381 389 382
		f 4 315 309 -317 -322
		mu 0 4 382 389 466 463
		f 4 316 310 -312 -323
		mu 0 4 463 466 464 459
		f 4 286 317 -290 -281
		mu 0 4 451 459 460 164
		f 4 289 318 -292 -278
		mu 0 4 164 460 679 163
		f 4 291 319 -288 281
		mu 0 4 366 371 372 367
		f 4 287 320 -295 284
		mu 0 4 367 372 382 373
		f 4 294 321 -296 -280
		mu 0 4 373 382 463 457
		f 4 295 322 -287 -284
		mu 0 4 457 463 459 451
		f 4 339 331 -341 -348
		mu 0 4 434 442 675 673
		f 4 340 332 -342 -349
		mu 0 4 391 384 385 392
		f 4 341 333 -343 -350
		mu 0 4 392 385 390 395
		f 4 342 334 -344 -351
		mu 0 4 395 390 447 437
		f 4 343 335 -345 -352
		mu 0 4 437 447 439 430
		f 4 344 336 -346 -353
		mu 0 4 430 439 432 422
		f 4 345 337 -347 -354
		mu 0 4 422 432 433 423
		f 4 346 338 -340 -355
		mu 0 4 423 433 442 434
		f 4 149 347 -157 164
		mu 0 4 424 434 673 671
		f 4 156 348 -156 163
		mu 0 4 396 391 392 397
		f 4 155 349 -155 162
		mu 0 4 397 392 395 400
		f 4 154 350 -154 161
		mu 0 4 400 395 437 429
		f 4 153 351 -153 160
		mu 0 4 429 437 430 421
		f 4 152 352 -152 159
		mu 0 4 421 430 422 417
		f 4 151 353 -151 158
		mu 0 4 417 422 423 418
		f 4 150 354 -150 157
		mu 0 4 418 423 434 424
		f 4 355 357 -357 -120
		mu 0 4 143 137 140 144
		f 4 356 359 -359 -269
		mu 0 4 375 377 369 365
		f 4 358 -362 -361 269
		mu 0 4 365 369 370 366
		f 4 362 363 -356 -130
		mu 0 4 149 150 137 143
		f 4 360 -366 -365 277
		mu 0 4 163 160 161 164
		f 4 364 -367 -363 276
		mu 0 4 164 161 150 149
		f 4 373 -392 -375 366
		mu 0 4 161 155 145 150
		f 4 374 -391 -376 -364
		mu 0 4 150 145 138 137
		f 4 375 -390 -377 -358
		mu 0 4 137 138 139 140
		f 4 376 -389 -378 -360
		mu 0 4 377 386 378 369
		f 4 377 -388 -379 361
		mu 0 4 369 378 379 370
		f 4 378 -387 -374 365
		mu 0 4 160 152 155 161
		f 4 -380 -372 -371 -370
		mu 0 4 147 158 162 148
		f 4 -369 -368 -373 379
		mu 0 4 147 151 159 158
		f 4 381 -399 -381 386
		mu 0 4 152 153 154 155
		f 4 382 -400 -382 387
		mu 0 4 156 157 153 152
		f 4 383 -401 -383 388
		mu 0 4 386 393 394 378
		f 4 384 -402 -384 389
		mu 0 4 138 141 142 139
		f 4 385 -403 -385 390
		mu 0 4 145 146 141 138
		f 4 380 -404 -386 391
		mu 0 4 155 154 146 145
		f 4 393 372 -393 398
		mu 0 4 153 158 159 154
		f 4 394 371 -394 399
		mu 0 4 157 162 158 153
		f 4 395 370 -395 400
		mu 0 4 393 398 399 394
		f 4 396 369 -396 401
		mu 0 4 141 147 148 142
		f 4 397 368 -397 402
		mu 0 4 146 151 147 141
		f 4 392 367 -398 403
		mu 0 4 154 159 151 146
		f 4 404 408 416 -13
		mu 0 4 352 232 230 615
		f 4 441 438 437 41
		mu 0 4 617 220 221 618
		f 4 405 410 417 -16
		mu 0 4 333 231 336 334
		f 4 -418 411 -407 17
		mu 0 4 334 336 340 337
		f 4 434 431 444 -38
		mu 0 4 619 623 624 620
		f 4 -419 413 -408 20
		mu 0 4 348 350 708 344
		f 4 407 457 456 -22
		mu 0 4 707 346 237 76
		f 4 593 592 -470 470
		mu 0 4 165 166 167 168
		f 4 -416 420 421 -409
		mu 0 4 232 228 222 230
		f 4 -415 -414 422 -421
		mu 0 4 228 229 223 222
		f 4 443 -432 435 432
		mu 0 4 212 213 214 215
		f 4 442 -433 436 -439
		mu 0 4 220 212 215 221
		f 4 -417 409 -428 28
		mu 0 4 615 230 224 616
		f 4 -422 -426 -429 -410
		mu 0 4 230 222 216 224
		f 4 -423 -427 -430 425
		mu 0 4 222 223 217 216
		f 4 -431 426 418 -33
		mu 0 4 625 627 350 348
		f 4 448 445 -435 -56
		mu 0 4 341 343 623 619
		f 4 -436 -446 449 446
		mu 0 4 215 214 218 219
		f 4 -437 -447 450 -434
		mu 0 4 221 215 219 227
		f 4 -438 433 451 59
		mu 0 4 618 221 227 339
		f 4 427 424 -442 46
		mu 0 4 616 224 220 617
		f 4 428 -440 -443 -425
		mu 0 4 224 216 212 220
		f 4 429 -441 -444 439
		mu 0 4 216 217 213 212
		f 4 -445 440 430 -51
		mu 0 4 620 624 627 625
		f 4 406 412 -449 -19
		mu 0 4 337 340 343 341
		f 4 -450 -413 -412 423
		mu 0 4 219 218 225 226
		f 4 -451 -424 -411 -448
		mu 0 4 227 219 226 231
		f 4 -452 447 -406 14
		mu 0 4 339 227 231 333
		f 4 455 -453 -420 415
		mu 0 4 232 234 233 351
		f 4 595 594 586 -473
		mu 0 4 172 171 196 186
		f 4 -455 -456 -405 23
		mu 0 4 75 234 232 352
		f 4 -458 414 419 453
		mu 0 4 237 346 351 233
		f 4 452 459 -461 -459
		mu 0 4 233 234 235 236
		f 4 454 73 -462 -460
		mu 0 4 234 75 74 235
		f 4 -457 462 463 -77
		mu 0 4 76 237 716 77
		f 4 -454 458 464 -463
		mu 0 4 237 233 236 716
		f 4 869 870 -873 -874
		mu 0 4 332 331 262 358
		f 4 874 818 -876 -871
		mu 0 4 331 355 354 262
		f 4 -464 466 467 -82
		mu 0 4 363 740 741 362
		f 4 -465 465 468 -467
		mu 0 4 238 329 239 240
		f 4 655 -645 654 642
		mu 0 4 474 475 476 477
		f 4 876 824 878 -880
		mu 0 4 258 357 579 254
		f 4 880 882 883 -828
		mu 0 4 360 251 247 638
		f 4 658 647 657 644
		mu 0 4 475 480 481 476
		f 4 -662 663 665 -667
		mu 0 4 241 242 243 244
		f 4 875 833 -877 -885
		mu 0 4 262 354 357 258
		f 4 -887 887 -881 -836
		mu 0 4 359 361 251 360
		f 4 669 670 661 -672
		mu 0 4 245 246 242 241
		f 4 -478 474 484 -476
		mu 0 4 184 179 173 178
		f 4 -479 475 485 -94
		mu 0 4 714 184 178 640
		f 4 -480 94 486 -477
		mu 0 4 180 646 645 174
		f 4 -481 476 487 -475
		mu 0 4 179 180 174 173
		f 4 -485 481 473 -483
		mu 0 4 178 173 168 172
		f 4 -486 582 581 -103
		mu 0 4 640 178 185 641
		f 4 633 634 257 -632
		mu 0 4 473 654 651 470
		f 4 -488 483 -471 -482
		mu 0 4 173 174 165 168
		f 4 872 889 -892 -893
		mu 0 4 358 262 261 264
		f 4 894 -897 897 879
		mu 0 4 254 253 257 258
		f 4 899 -902 903 904
		mu 0 4 247 248 249 250
		f 4 906 -909 -910 -888
		mu 0 4 361 260 252 251
		f 4 -890 884 -898 -911
		mu 0 4 261 262 258 257
		f 4 -912 -895 912 -904
		mu 0 4 249 253 254 250
		f 4 909 -914 -900 -883
		mu 0 4 251 252 248 247
		f 4 -915 892 -916 -907
		mu 0 4 361 358 264 260
		f 4 520 513 543 -513
		mu 0 4 531 689 690 532
		f 4 521 514 542 -514
		mu 0 4 507 508 503 502
		f 4 522 515 541 -515
		mu 0 4 508 514 509 503
		f 4 523 516 540 -516
		mu 0 4 514 544 545 509
		f 4 526 519 537 -519
		mu 0 4 525 526 527 528
		f 4 527 512 536 -520
		mu 0 4 526 531 532 527
		f 4 524 517 539 -517
		mu 0 4 544 535 536 545
		f 4 525 518 538 -518
		mu 0 4 535 525 528 536
		f 4 552 545 -521 -545
		mu 0 4 549 691 689 531
		f 4 553 546 -522 -546
		mu 0 4 512 513 508 507
		f 4 554 547 -523 -547
		mu 0 4 513 517 514 508
		f 4 555 548 -524 -548
		mu 0 4 517 551 544 514
		f 4 556 549 -525 -549
		mu 0 4 551 539 535 544
		f 4 557 550 -526 -550
		mu 0 4 539 529 525 535
		f 4 558 551 -527 -551
		mu 0 4 529 530 526 525
		f 4 559 544 -528 -552
		mu 0 4 530 549 531 526
		f 4 711 696 -509 -704
		mu 0 4 541 552 302 306
		f 4 710 703 -508 -703
		mu 0 4 542 541 306 553
		f 4 709 702 -512 -702
		mu 0 4 554 542 553 562
		f 4 708 701 -511 -701
		mu 0 4 563 554 562 570
		f 4 707 700 -505 -700
		mu 0 4 497 563 570 488
		f 4 706 699 -503 -699
		mu 0 4 487 497 488 479
		f 4 705 698 -501 -698
		mu 0 4 486 487 479 478
		f 4 704 697 -499 -697
		mu 0 4 552 694 303 302
		f 4 801 794 -553 -794
		mu 0 4 548 693 691 549
		f 4 802 795 -554 -795
		mu 0 4 515 516 513 512
		f 4 803 796 -555 -796
		mu 0 4 516 520 517 513
		f 4 804 797 -556 -797
		mu 0 4 520 560 551 517
		f 4 805 798 -557 -798
		mu 0 4 560 550 539 551
		f 4 806 799 -558 -799
		mu 0 4 550 537 529 539
		f 4 807 800 -559 -800
		mu 0 4 537 538 530 529
		f 4 808 793 -560 -801
		mu 0 4 538 548 549 530
		f 4 489 497 -569 -497
		mu 0 4 564 696 695 558
		f 4 493 499 -570 -498
		mu 0 4 521 522 519 518
		f 4 490 501 -571 -500
		mu 0 4 522 524 523 519
		f 4 494 503 -572 -502
		mu 0 4 524 571 566 523
		f 4 491 509 -573 -504
		mu 0 4 571 565 559 566
		f 4 495 505 -574 -510
		mu 0 4 565 556 546 559
		f 4 488 506 -575 -506
		mu 0 4 556 557 547 546
		f 4 492 496 -576 -507
		mu 0 4 557 564 558 547
		f 4 584 -578 -472 -484
		mu 0 4 174 652 655 165
		f 4 -586 587 630 254
		mu 0 4 737 736 277 469
		f 4 -637 638 629 -91
		mu 0 4 643 191 195 644
		f 4 637 639 636 -263
		mu 0 4 642 190 191 643
		f 4 -583 482 472 580
		mu 0 4 185 178 172 186
		f 4 -487 103 -584 -585
		mu 0 4 174 645 648 652
		f 4 579 588 -594 471
		mu 0 4 655 657 166 165
		f 4 589 -596 -474 469
		mu 0 4 167 171 172 168
		f 4 1171 1156 612 -1164
		mu 0 4 661 267 270 663
		f 4 1164 1157 611 -1157
		mu 0 4 267 719 269 270
		f 4 1169 1162 606 -1162
		mu 0 4 176 175 181 182
		f 4 1170 1163 605 -1163
		mu 0 4 175 661 663 181
		f 4 1167 1160 608 -1160
		mu 0 4 681 183 189 682
		f 4 1168 1161 607 -1161
		mu 0 4 183 176 182 189
		f 4 1165 1158 610 -1158
		mu 0 4 268 273 274 720
		f 4 1166 1159 609 -1159
		mu 0 4 273 681 682 274
		f 4 -588 599 -622 -598
		mu 0 4 277 736 735 271
		f 4 -597 604 -623 -600
		mu 0 4 278 195 279 272
		f 4 -591 602 -624 -605
		mu 0 4 195 196 680 279
		f 4 -595 603 -625 -603
		mu 0 4 196 171 177 680
		f 4 -590 601 -626 -604
		mu 0 4 171 167 170 177
		f 4 -593 600 -627 -602
		mu 0 4 167 166 169 170
		f 4 -589 598 -628 -601
		mu 0 4 166 657 659 169
		f 4 -592 597 -629 -599
		mu 0 4 657 277 271 659
		f 4 -630 596 585 -253
		mu 0 4 644 195 278 468
		f 4 87 -631 632 631
		mu 0 4 470 469 277 473
		f 4 -633 591 -580 576
		mu 0 4 473 277 657 655
		f 4 577 635 -634 -577
		mu 0 4 655 652 654 473
		f 4 -636 583 198 -635
		mu 0 4 654 652 648 651
		f 4 -582 640 -638 -202
		mu 0 4 641 185 190 642
		f 4 -639 -579 -587 590
		mu 0 4 195 191 186 196
		f 4 -641 -581 578 -640
		mu 0 4 190 185 186 191
		f 4 500 643 -656 -642
		mu 0 4 478 479 475 474
		f 4 504 646 -648 -646
		mu 0 4 488 570 481 480
		f 4 649 -654 -649 507
		mu 0 4 306 324 561 553
		f 4 510 651 -653 -647
		mu 0 4 570 562 569 481
		f 4 -652 511 648 -657
		mu 0 4 569 562 553 561
		f 4 645 -659 -644 502
		mu 0 4 488 480 475 479
		f 4 678 673 -664 -673
		mu 0 4 573 572 243 242
		f 4 679 674 -666 -674
		mu 0 4 572 576 244 243
		f 4 680 675 666 -675
		mu 0 4 492 491 500 501
		f 4 682 677 -670 -677
		mu 0 4 499 575 246 245
		f 4 683 672 -671 -678
		mu 0 4 575 573 242 246
		f 4 681 676 671 -676
		mu 0 4 491 499 245 500
		f 4 690 685 -679 -685
		mu 0 4 568 567 572 573
		f 4 691 686 -680 -686
		mu 0 4 567 697 576 572
		f 4 692 687 -681 -687
		mu 0 4 483 482 491 492
		f 4 693 688 -682 -688
		mu 0 4 482 490 499 491
		f 4 694 689 -683 -689
		mu 0 4 490 574 575 499
		f 4 695 684 -684 -690
		mu 0 4 574 568 573 575
		f 4 653 662 -691 -660
		mu 0 4 561 324 567 568
		f 4 650 664 -692 -663
		mu 0 4 324 323 697 567
		f 4 -655 660 -693 -665
		mu 0 4 477 476 482 483
		f 4 -658 667 -694 -661
		mu 0 4 476 481 490 482
		f 4 652 668 -695 -668
		mu 0 4 481 569 574 490
		f 4 656 659 -696 -669
		mu 0 4 569 561 568 574
		f 4 720 713 -705 -713
		mu 0 4 540 692 694 552
		f 4 721 714 -706 -714
		mu 0 4 495 496 487 486
		f 4 722 715 -707 -715
		mu 0 4 496 504 497 487
		f 4 723 716 -708 -716
		mu 0 4 504 555 563 497
		f 4 724 717 -709 -717
		mu 0 4 555 543 554 563
		f 4 725 718 -710 -718
		mu 0 4 543 534 542 554
		f 4 726 719 -711 -719
		mu 0 4 534 533 541 542
		f 4 727 712 -712 -720
		mu 0 4 533 540 552 541
		f 4 -544 535 -721 -529
		mu 0 4 532 690 692 540
		f 4 -543 534 -722 -536
		mu 0 4 502 503 496 495
		f 4 -542 533 -723 -535
		mu 0 4 503 509 504 496
		f 4 -541 532 -724 -534
		mu 0 4 509 545 555 504
		f 4 -540 531 -725 -533
		mu 0 4 545 536 543 555
		f 4 -539 530 -726 -532
		mu 0 4 536 528 534 543
		f 4 -538 529 -727 -531
		mu 0 4 528 527 533 534
		f 4 -537 528 -728 -530
		mu 0 4 527 532 540 533
		f 4 498 729 -731 -729
		mu 0 4 302 303 299 298
		f 4 641 731 -733 -730
		mu 0 4 478 474 485 489
		f 4 -643 733 734 -732
		mu 0 4 474 477 484 485
		f 4 508 728 -737 -736
		mu 0 4 306 302 298 307
		f 4 -651 737 738 -734
		mu 0 4 323 324 318 317
		f 4 -650 735 739 -738
		mu 0 4 324 306 307 318
		f 4 -740 747 764 -747
		mu 0 4 318 307 310 314
		f 4 736 748 763 -748
		mu 0 4 307 298 301 310
		f 4 730 749 762 -749
		mu 0 4 298 299 300 301
		f 4 732 750 761 -750
		mu 0 4 489 485 494 498
		f 4 -735 751 760 -751
		mu 0 4 485 484 493 494
		f 4 -739 746 759 -752
		mu 0 4 317 318 314 313
		f 4 742 743 744 752
		mu 0 4 309 308 325 320
		f 4 -753 745 740 741
		mu 0 4 309 320 319 312
		f 4 -760 753 771 -755
		mu 0 4 313 314 315 316
		f 4 -761 754 772 -756
		mu 0 4 321 313 316 322
		f 4 -762 755 773 -757
		mu 0 4 498 494 505 506
		f 4 -763 756 774 -758
		mu 0 4 301 300 304 305
		f 4 -764 757 775 -759
		mu 0 4 310 301 305 311
		f 4 -765 758 776 -754
		mu 0 4 314 310 311 315
		f 4 -772 765 -746 -767
		mu 0 4 316 315 319 320
		f 4 -773 766 -745 -768
		mu 0 4 322 316 320 325
		f 4 -774 767 -744 -769
		mu 0 4 506 505 510 511
		f 4 -775 768 -743 -770
		mu 0 4 305 304 308 309
		f 4 -776 769 -742 -771
		mu 0 4 311 305 309 312
		f 4 -777 770 -741 -766
		mu 0 4 315 311 312 319
		f 4 -786 777 173 -779
		mu 0 4 676 445 446 674
		f 4 -787 778 174 -780
		mu 0 4 407 408 404 405
		f 4 -788 779 175 -781
		mu 0 4 409 407 405 406
		f 4 -789 780 176 -782
		mu 0 4 448 409 406 438
		f 4 -790 781 177 -783
		mu 0 4 440 448 438 431
		f 4 -791 782 178 -784
		mu 0 4 436 440 431 426
		f 4 -792 783 179 -785
		mu 0 4 435 436 426 427
		f 4 -793 784 180 -778
		mu 0 4 445 435 427 446
		f 4 568 561 -802 -561
		mu 0 4 558 695 693 548
		f 4 569 562 -803 -562
		mu 0 4 518 519 516 515
		f 4 570 563 -804 -563
		mu 0 4 519 523 520 516
		f 4 571 564 -805 -564
		mu 0 4 523 566 560 520
		f 4 572 565 -806 -565
		mu 0 4 566 559 550 560
		f 4 573 566 -807 -566
		mu 0 4 559 546 537 550
		f 4 574 567 -808 -567
		mu 0 4 546 547 538 537
		f 4 575 560 -809 -568
		mu 0 4 547 558 548 538
		f 4 79 810 -812 -810
		mu 0 4 69 79 698 327
		f 4 -73 809 815 -814
		mu 0 4 326 69 327 328
		f 4 -75 813 819 -818
		mu 0 4 699 326 328 355
		f 4 -99 822 823 -821
		mu 0 4 577 578 579 90
		f 4 -98 828 829 -827
		mu 0 4 589 585 586 590
		f 4 82 834 -839 -837
		mu 0 4 78 362 359 356
		f 4 109 841 -843 -840
		mu 0 4 104 102 98 105
		f 4 110 846 -848 -845
		mu 0 4 103 592 91 95
		f 4 -97 849 850 -829
		mu 0 4 585 581 582 586
		f 4 111 853 -855 -852
		mu 0 4 591 96 89 88
		f 4 112 858 -860 -857
		mu 0 4 97 100 101 93
		f 4 113 844 -862 -842
		mu 0 4 102 103 95 98
		f 4 -100 820 862 -850
		mu 0 4 581 577 90 582
		f 4 114 851 -864 -847
		mu 0 4 592 591 88 91
		f 4 115 856 -865 -854
		mu 0 4 96 97 93 89
		f 4 116 839 -866 -859
		mu 0 4 100 104 105 101
		f 4 83 836 -867 -811
		mu 0 4 79 743 703 704
		f 4 460 868 -870 -868
		mu 0 4 329 330 331 332
		f 4 -466 867 873 -872
		mu 0 4 239 329 332 700
		f 4 461 817 -875 -869
		mu 0 4 330 699 355 331
		f 4 479 877 -879 -823
		mu 0 4 578 580 254 579
		f 4 478 826 -884 -882
		mu 0 4 587 589 590 588
		f 4 -468 885 886 -835
		mu 0 4 362 741 361 359
		f 4 -489 890 891 -889
		mu 0 4 266 263 264 261
		f 4 -490 895 896 -894
		mu 0 4 594 265 257 253
		f 4 -491 900 901 -899
		mu 0 4 256 593 249 248
		f 4 477 881 -905 -903
		mu 0 4 583 587 588 584
		f 4 -492 907 908 -906
		mu 0 4 259 255 252 260
		f 4 -493 888 910 -896
		mu 0 4 265 266 261 257
		f 4 -494 893 911 -901
		mu 0 4 593 594 253 249
		f 4 480 902 -913 -878
		mu 0 4 580 583 584 254
		f 4 -495 898 913 -908
		mu 0 4 255 256 248 252
		f 4 -469 871 914 -886
		mu 0 4 240 239 705 706
		f 4 -496 905 915 -891
		mu 0 4 263 259 260 264
		f 4 919 918 917 916
		mu 0 4 595 596 597 598
		f 4 922 -920 921 920
		mu 0 4 42 596 595 43
		f 4 -923 925 924 -924
		mu 0 4 596 42 44 599
		f 4 -919 923 927 926
		mu 0 4 597 596 599 600
		f 4 1019 -930 -1013 -1028
		mu 0 4 26 31 664 662
		f 4 1018 -932 -1020 -1027
		mu 0 4 25 30 31 26
		f 4 1017 -934 -1019 -1026
		mu 0 4 29 32 30 25
		f 4 1016 -936 -1018 -1025
		mu 0 4 631 632 32 29
		f 4 1015 -938 -1017 -1024
		mu 0 4 121 124 632 631
		f 4 1014 -940 -1016 -1023
		mu 0 4 117 120 124 121
		f 4 1013 -942 -1015 -1022
		mu 0 4 116 119 730 729
		f 4 1012 -944 -1014 -1021
		mu 0 4 662 664 119 116
		f 4 947 -947 -946 -945
		mu 0 4 37 40 603 668
		f 4 950 -950 -948 -949
		mu 0 4 36 39 40 37
		f 4 953 -953 -951 -952
		mu 0 4 38 41 39 36
		f 4 956 -956 -954 -955
		mu 0 4 634 635 41 38
		f 4 959 -959 -957 -958
		mu 0 4 130 133 635 634
		f 4 962 -962 -960 -961
		mu 0 4 126 733 133 130
		f 4 965 -965 -963 -964
		mu 0 4 125 128 129 732
		f 4 945 -968 -966 -967
		mu 0 4 668 603 128 125
		f 4 971 -971 -970 968
		mu 0 4 604 701 135 134
		f 4 973 -918 -973 964
		mu 0 4 128 131 734 129
		f 4 975 -921 -975 949
		mu 0 4 39 42 43 40
		f 4 978 -978 -972 976
		mu 0 4 46 45 701 604
		f 4 980 -925 -980 955
		mu 0 4 635 636 44 41
		f 4 979 -926 -976 952
		mu 0 4 41 44 42 39
		f 4 972 -927 -982 961
		mu 0 4 733 132 136 133
		f 4 981 -928 -981 958
		mu 0 4 133 136 636 635
		f 4 983 -969 -983 967
		mu 0 4 603 604 134 128
		f 4 982 969 -985 -974
		mu 0 4 128 134 135 131
		f 4 984 970 -986 -917
		mu 0 4 598 601 602 595
		f 4 986 -977 -984 946
		mu 0 4 40 46 604 603
		f 4 985 977 -988 -922
		mu 0 4 595 602 45 43
		f 4 987 -979 -987 974
		mu 0 4 43 45 46 40
		f 4 990 966 -990 -989
		mu 0 4 666 668 125 122
		f 4 989 963 -993 -992
		mu 0 4 122 125 732 731
		f 4 992 960 -995 -994
		mu 0 4 123 126 130 127
		f 4 994 957 -997 -996
		mu 0 4 127 130 634 633
		f 4 996 954 -999 -998
		mu 0 4 633 634 38 35
		f 4 998 951 -1001 -1000
		mu 0 4 35 38 36 33
		f 4 1000 948 -1003 -1002
		mu 0 4 33 36 37 34
		f 4 1002 944 -991 -1004
		mu 0 4 34 37 668 666
		f 4 1005 988 -1005 943
		mu 0 4 664 666 122 119
		f 4 1004 991 -1007 941
		mu 0 4 119 122 731 730
		f 4 1006 993 -1008 939
		mu 0 4 120 123 127 124
		f 4 1007 995 -1009 937
		mu 0 4 124 127 633 632;
	setAttr ".fc[500:585]"
		f 4 1008 997 -1010 935
		mu 0 4 632 633 35 32
		f 4 1009 999 -1011 933
		mu 0 4 32 35 33 30
		f 4 1010 1001 -1012 931
		mu 0 4 30 33 34 31
		f 4 1011 1003 -1006 929
		mu 0 4 31 34 666 664
		f 4 928 1020 -943 235
		mu 0 4 660 662 116 110
		f 4 942 1021 -941 234
		mu 0 4 110 116 729 722
		f 4 940 1022 -939 233
		mu 0 4 111 117 121 118
		f 4 938 1023 -937 232
		mu 0 4 118 121 631 630
		f 4 936 1024 -935 231
		mu 0 4 630 631 29 24
		f 4 934 1025 -933 230
		mu 0 4 24 29 25 20
		f 4 932 1026 -931 229
		mu 0 4 20 25 26 21
		f 4 930 1027 -929 228
		mu 0 4 21 26 662 660
		f 4 -1029 -1030 -1031 -1032
		mu 0 4 605 606 607 608
		f 4 -1033 -1034 1031 -1035
		mu 0 4 207 206 605 608
		f 4 1035 -1037 -1038 1034
		mu 0 4 608 612 211 207
		f 4 -1039 -1040 -1036 1030
		mu 0 4 607 611 612 608
		f 4 1139 1124 1041 -1132
		mu 0 4 187 665 667 192
		f 4 1138 1131 1043 -1131
		mu 0 4 188 187 192 193
		f 4 1137 1130 1045 -1130
		mu 0 4 194 188 193 199
		f 4 1136 1129 1047 -1129
		mu 0 4 683 194 199 684
		f 4 1135 1128 1049 -1128
		mu 0 4 280 683 684 283
		f 4 1134 1127 1051 -1127
		mu 0 4 275 280 283 724
		f 4 1133 1126 1053 -1126
		mu 0 4 276 723 281 282
		f 4 1132 1125 1055 -1125
		mu 0 4 665 276 282 667
		f 4 1056 1057 1058 -1060
		mu 0 4 200 670 613 203
		f 4 1060 1059 1061 -1063
		mu 0 4 201 200 203 204
		f 4 1063 1062 1064 -1066
		mu 0 4 205 201 204 208
		f 4 1066 1065 1067 -1069
		mu 0 4 686 205 208 687
		f 4 1069 1068 1070 -1072
		mu 0 4 289 686 687 292
		f 4 1072 1071 1073 -1075
		mu 0 4 726 289 292 290
		f 4 1075 1074 1076 -1078
		mu 0 4 288 287 727 291
		f 4 1078 1077 1079 -1058
		mu 0 4 670 288 291 613
		f 4 -1081 1081 1082 -1084
		mu 0 4 614 297 296 702
		f 4 -1077 1084 1029 -1086
		mu 0 4 291 727 293 294
		f 4 -1062 1086 1032 -1088
		mu 0 4 204 203 206 207
		f 4 -1089 1083 1089 -1091
		mu 0 4 209 614 702 210
		f 4 -1068 1091 1036 -1093
		mu 0 4 687 208 211 688
		f 4 -1065 1087 1037 -1092
		mu 0 4 208 204 207 211
		f 4 -1074 1093 1038 -1085
		mu 0 4 290 292 295 728
		f 4 -1071 1092 1039 -1094
		mu 0 4 292 687 688 295
		f 4 -1080 1094 1080 -1096
		mu 0 4 613 291 297 614
		f 4 1085 1096 -1082 -1095
		mu 0 4 291 294 296 297
		f 4 1028 1097 -1083 -1097
		mu 0 4 606 605 609 610
		f 4 -1059 1095 1088 -1099
		mu 0 4 203 613 614 209
		f 4 1033 1099 -1090 -1098
		mu 0 4 605 206 210 609
		f 4 -1087 1098 1090 -1100
		mu 0 4 206 203 209 210
		f 4 1100 1101 -1079 -1103
		mu 0 4 669 285 288 670
		f 4 1103 1104 -1076 -1102
		mu 0 4 285 284 287 288
		f 4 1105 1106 -1073 -1105
		mu 0 4 725 286 289 726
		f 4 1107 1108 -1070 -1107
		mu 0 4 286 685 686 289
		f 4 1109 1110 -1067 -1109
		mu 0 4 685 202 205 686
		f 4 1111 1112 -1064 -1111
		mu 0 4 202 198 201 205
		f 4 1113 1114 -1061 -1113
		mu 0 4 198 197 200 201
		f 4 1115 1102 -1057 -1115
		mu 0 4 197 669 670 200
		f 4 -1056 1116 -1101 -1118
		mu 0 4 667 282 285 669
		f 4 -1054 1118 -1104 -1117
		mu 0 4 282 281 284 285
		f 4 -1052 1119 -1106 -1119
		mu 0 4 724 283 286 725
		f 4 -1050 1120 -1108 -1120
		mu 0 4 283 684 685 286
		f 4 -1048 1121 -1110 -1121
		mu 0 4 684 199 202 685
		f 4 -1046 1122 -1112 -1122
		mu 0 4 199 193 198 202
		f 4 -1044 1123 -1114 -1123
		mu 0 4 193 192 197 198
		f 4 -1042 1117 -1116 -1124
		mu 0 4 192 667 669 197
		f 4 -613 1054 -1133 -1041
		mu 0 4 663 270 276 665
		f 4 -612 1052 -1134 -1055
		mu 0 4 270 269 723 276
		f 4 -611 1050 -1135 -1053
		mu 0 4 720 274 280 275
		f 4 -610 1048 -1136 -1051
		mu 0 4 274 682 683 280
		f 4 -609 1046 -1137 -1049
		mu 0 4 682 189 194 683
		f 4 -608 1044 -1138 -1047
		mu 0 4 189 182 188 194
		f 4 -607 1042 -1139 -1045
		mu 0 4 182 181 187 188
		f 4 -606 1040 -1140 -1043
		mu 0 4 181 663 665 187
		f 4 -1149 1140 -235 -1142
		mu 0 4 721 107 110 722
		f 4 -1150 1141 -234 -1143
		mu 0 4 112 108 111 118
		f 4 -1151 1142 -233 -1144
		mu 0 4 629 112 118 630
		f 4 -1152 1143 -232 -1145
		mu 0 4 19 629 630 24
		f 4 -1153 1144 -231 -1146
		mu 0 4 14 19 24 20
		f 4 -1154 1145 -230 -1147
		mu 0 4 15 14 20 21
		f 4 -1155 1146 -229 -1148
		mu 0 4 658 15 21 660
		f 4 -1156 1147 -236 -1141
		mu 0 4 107 658 660 110
		f 4 621 614 -1165 -614
		mu 0 4 271 735 719 267
		f 4 622 615 -1166 -615
		mu 0 4 272 279 273 268
		f 4 623 616 -1167 -616
		mu 0 4 279 680 681 273
		f 4 624 617 -1168 -617
		mu 0 4 680 177 183 681
		f 4 625 618 -1169 -618
		mu 0 4 177 170 176 183
		f 4 626 619 -1170 -619
		mu 0 4 170 169 175 176
		f 4 627 620 -1171 -620
		mu 0 4 169 659 661 175
		f 4 628 613 -1172 -621
		mu 0 4 659 271 267 661;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 337 
		0 0 
		3 0 
		5 0 
		6 0 
		7 0 
		9 0 
		10 0 
		12 0 
		13 0 
		15 0 
		16 0 
		17 0 
		18 0 
		19 0 
		21 0 
		22 0 
		23 0 
		24 0 
		26 0 
		27 0 
		28 0 
		29 0 
		31 0 
		32 0 
		34 0 
		35 0 
		37 0 
		38 0 
		40 0 
		41 0 
		42 0 
		43 0 
		44 0 
		45 0 
		46 0 
		51 0 
		52 0 
		57 0 
		58 0 
		63 0 
		64 0 
		67 0 
		68 0 
		69 0 
		71 0 
		72 0 
		74 0 
		75 0 
		76 0 
		77 0 
		78 0 
		79 0 
		81 0 
		82 0 
		83 0 
		84 0 
		85 0 
		86 0 
		88 0 
		89 0 
		90 0 
		91 0 
		92 0 
		93 0 
		94 0 
		95 0 
		96 0 
		98 0 
		99 0 
		101 0 
		103 0 
		105 0 
		106 0 
		107 0 
		110 0 
		112 0 
		113 0 
		114 0 
		115 0 
		116 0 
		117 0 
		118 0 
		119 0 
		120 0 
		121 0 
		122 0 
		124 0 
		125 0 
		127 0 
		128 0 
		130 0 
		133 0 
		134 0 
		135 0 
		136 0 
		137 0 
		138 0 
		143 0 
		144 0 
		145 0 
		146 0 
		147 0 
		148 0 
		149 0 
		150 0 
		151 0 
		154 0 
		155 0 
		158 0 
		159 0 
		161 0 
		162 0 
		163 0 
		164 0 
		165 0 
		166 0 
		169 0 
		171 0 
		172 0 
		174 0 
		175 0 
		177 0 
		178 0 
		180 0 
		181 0 
		183 0 
		184 0 
		185 0 
		186 0 
		187 0 
		189 0 
		190 0 
		191 0 
		192 0 
		194 0 
		195 0 
		196 0 
		197 0 
		199 0 
		200 0 
		202 0 
		203 0 
		205 0 
		206 0 
		207 0 
		208 0 
		209 0 
		210 0 
		211 0 
		220 0 
		221 0 
		224 0 
		227 0 
		230 0 
		231 0 
		232 0 
		233 0 
		234 0 
		237 0 
		238 0 
		239 0 
		240 0 
		242 0 
		243 0 
		244 0 
		245 0 
		246 0 
		247 0 
		248 0 
		249 0 
		251 0 
		252 0 
		253 0 
		254 0 
		256 0 
		257 0 
		258 0 
		260 0 
		261 0 
		262 0 
		264 0 
		265 0 
		267 0 
		270 0 
		271 0 
		273 0 
		274 0 
		275 0 
		276 0 
		277 0 
		278 0 
		279 0 
		280 0 
		282 0 
		283 0 
		285 0 
		286 0 
		288 0 
		289 0 
		291 0 
		292 0 
		295 0 
		296 0 
		297 0 
		298 0 
		301 0 
		302 0 
		303 0 
		306 0 
		307 0 
		308 0 
		309 0 
		310 0 
		311 0 
		312 0 
		314 0 
		315 0 
		318 0 
		319 0 
		320 0 
		323 0 
		324 0 
		325 0 
		326 0 
		327 0 
		328 0 
		329 0 
		330 0 
		331 0 
		332 0 
		339 0 
		341 0 
		342 0 
		343 0 
		348 0 
		349 0 
		350 0 
		352 0 
		355 0 
		357 0 
		360 0 
		364 0 
		373 0 
		374 0 
		382 0 
		383 0 
		389 0 
		390 0 
		395 0 
		400 0 
		403 0 
		406 0 
		409 0 
		412 0 
		415 0 
		419 0 
		424 0 
		425 0 
		427 0 
		428 0 
		429 0 
		433 0 
		434 0 
		437 0 
		438 0 
		442 0 
		445 0 
		446 0 
		447 0 
		448 0 
		452 0 
		455 0 
		456 0 
		457 0 
		460 0 
		461 0 
		462 0 
		463 0 
		465 0 
		466 0 
		467 0 
		469 0 
		470 0 
		471 0 
		472 0 
		473 0 
		480 0 
		481 0 
		488 0 
		490 0 
		497 0 
		499 0 
		504 0 
		509 0 
		514 0 
		517 0 
		520 0 
		523 0 
		524 0 
		526 0 
		530 0 
		531 0 
		532 0 
		540 0 
		541 0 
		544 0 
		545 0 
		548 0 
		549 0 
		551 0 
		552 0 
		555 0 
		558 0 
		560 0 
		563 0 
		564 0 
		566 0 
		567 0 
		569 0 
		570 0 
		571 0 
		572 0 
		574 0 
		575 0 
		576 0 
		579 0 
		592 0 
		594 0 
		603 0 
		604 0 
		613 0 
		614 0 
		637 0 
		644 0 
		724 0 
		736 0 
		737 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Shield_pCube_F";
	rename -uid "4ED53FD8-404D-C79F-64B9-4285060C849B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -7.3928808301574049 16.66076766796342 0 ;
	setAttr ".sp" -type "double3" -7.3928808301574049 16.66076766796342 0 ;
createNode mesh -n "Shield_pCube_FShape" -p "Shield_pCube_F";
	rename -uid "588519AD-49CF-0270-84BB-3A9AEE9AA331";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.1582098882452927 0.74358568745690423 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Shield_pCube_FShapeOrig" -p "Shield_pCube_F";
	rename -uid "6E91FE11-4E8A-D8BA-70BE-E885D5E13A11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 116 ".uvst[0].uvsp[0:115]" -type "float2" 0.04106164 0.83733368
		 0.062766969 0.82002866 0.06319508 0.86183131 0.028566778 0.86094677 0.033607244 0.82466006
		 0.061702698 0.80296719 0.093905807 0.80379558 0.09373498 0.86200893 0.063070029 0.88544726
		 0.032109499 0.88505536 0.017148554 0.85487068 0.093964219 0.78388608 0.093665659
		 0.88561106 0.063081861 0.90910304 0.02683562 0.93446875 0.020766616 0.88560277 0.09359628
		 0.90926546 0.062292278 0.94863021 0.036286414 0.96092176 0.01535064 0.94726694 0.093457222
		 0.95664513 0.028743565 0.98134243 0.081448257 0.71659058 0.060324728 0.71640331 0.061422706
		 0.69136447 0.074138165 0.70215946 0.078331888 0.73083514 0.059985816 0.73062128 0.04761672
		 0.71615797 0.082387209 0.76061076 0.059973061 0.74485356 0.048001885 0.71908009 0.04623425
		 0.71610099 0.046799242 0.68087411 0.075199723 0.77644062 0.060309708 0.76825738 0.047252476
		 0.7337302 0.047776341 0.73046309 0.045318186 0.77321017 0.045774758 0.74474621 0.045951307
		 0.73373914 0.14655226 0.83764315 0.15408099 0.82501364 0.170362 0.85532033 0.15890825
		 0.86132932 0.12494886 0.82021111 0.12611324 0.80315626 0.16656351 0.88603061 0.15522408
		 0.88541663 0.12427527 0.86201048 0.17161763 0.94772553 0.16020787 0.93486011 0.12426186
		 0.88562679 0.15802495 0.98172164 0.1506021 0.96125722 0.12411118 0.90928215 0.12466872
		 0.9488132 0.044850588 0.71611363 0.031846941 0.69089007 0.032141268 0.71595126 0.032024026
		 0.73017275 0.044372022 0.71902192 0.011022627 0.71546096 0.018791795 0.70127171 0.013680518
		 0.72979814 0.044232249 0.73040622 0.031580269 0.74439812 0.0086723566 0.75942838
		 0.044651031 0.73368853 0.030493259 0.76777917 0.015348434 0.77548063 0.15341699 0.70828074
		 0.16029838 0.70772636 0.15968531 0.72397411 0.1532501 0.72743005 0.1612775 0.727009
		 0.1585179 0.73057812 0.15658122 0.75435954 0.14994687 0.75679225 0.15616459 0.76152891
		 0.15730157 0.75808221 0.15603736 0.77918792 0.14764202 0.77778059 0.16916353 0.70807862
		 0.17658034 0.70940638 0.1733928 0.72908747 0.16775495 0.72464991 0.16683954 0.73142284
		 0.1663394 0.72791737 0.17058796 0.75795883 0.16506597 0.75491482 0.16398728 0.76188475
		 0.16230327 0.75871748 0.17266354 0.77818036 0.16491741 0.77934599 0.061810434 0.96672237
		 0.093401492 0.97565901 0.12504447 0.96690786 0.14949343 0.70838416 0.14921167 0.72756189
		 0.046004236 0.73043472 0.14552122 0.70834774 0.14523324 0.72690362 0.1647231 0.70771098
		 0.16381654 0.72375679 0.1636349 0.7276606 0.16048837 0.77946043 0.16003019 0.76226538
		 0.15987322 0.75863963 0.14374927 0.77713138 0.14589974 0.75672144 0.13983944 0.77665299
		 0.14193037 0.75584644 0.16265187 0.73128492 0.16086292 0.75410599 0.046186924 0.71905094;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  -3.43995404 7.87633562 -1.94473946 -8.73604107 7.87633562 -1.94473946
		 -3.30612493 7.58161211 4.30263519 -8.86987019 7.58161211 4.30263329 -3.10245299 6.99962282 5.22625256
		 -9.073542595 6.99962282 5.22625065 -3.26710486 7.36222601 -2.45995998 -8.90889072 7.36222601 -2.45995998
		 -6.087997913 8.2206831 -3.71797657 -6.087997913 8.21354198 4.10189247 -6.087997913 7.77709436 4.97927666
		 -6.087997913 7.78587961 -4.64159632 -3.027312517 7.94190645 0.4819195 -2.75942826 7.44289827 0.525585
		 -6.087997913 8.22037029 0.525585 -9.41656685 7.44289827 0.525585 -9.14868164 7.94190645 0.4819195
		 -6.087997913 8.57383823 0.4819195 -2.79311204 7.83835649 -0.73140854 -2.47128844 7.31550074 -0.96718651
		 -6.087997913 8.15086651 -0.96718651 -9.70470715 7.31550074 -0.96718651 -9.38288403 7.83835649 -0.73140854
		 -6.087997913 8.51734638 -0.73140842 -2.29291463 7.37339544 3.63743281 -2.64813018 7.8854146 3.011238337
		 -6.087997913 8.51734638 1.69524848 -9.52786541 7.8854146 3.011238337 -9.88308048 7.37339544 3.63743281
		 -6.087997913 8.15086651 2.018356562 -4.519454 8.055981636 -2.84808683 -4.519454 8.35264492 -0.73140854
		 -4.519454 8.40913677 0.4819195 -4.519454 8.35264492 1.69524848 -4.519454 8.048840523 3.66694665
		 -4.59522581 7.57445955 4.44415712 -4.59522581 7.94823313 2.018356562 -4.59522581 8.017737389 0.525585
		 -4.59522581 7.94823313 -0.96718663 -4.59522581 7.58324671 -3.57135963 -7.65654087 8.055981636 -2.84808683
		 -7.65654087 8.35264492 -0.73140854 -7.65654087 8.40913677 0.4819195 -7.65654087 8.35264492 1.69524848
		 -7.65654087 8.048840523 3.66694665 -7.58076954 7.57445955 4.44415712 -7.58076954 7.94823313 2.018356562
		 -7.58076954 8.017737389 0.525585 -7.58076954 7.94823313 -0.96718663 -7.58076954 7.58324671 -3.57135963
		 -5.91215181 8.22037029 0.525585 -6.087997913 8.22037029 0.86782163 -6.26384401 8.22037029 0.525585
		 -5.91215181 8.22037029 0.86782163 -6.26384354 8.22037029 0.86782163 -5.91215181 8.15086651 -0.96718651
		 -6.087997913 8.15086651 -0.66260689 -6.26384401 8.15086651 -0.96718651 -5.91215181 8.15086651 -0.66260689
		 -6.26384354 8.15086651 -0.66260689 -6.087997913 7.074821949 -0.66260689 -6.26384354 7.074821949 -0.66260689
		 -6.26384401 7.074821949 -0.96718651 -6.087997913 7.074821949 -0.96718651 -5.91215181 7.074821949 -0.96718651
		 -5.91215181 7.074821949 -0.66260689 -6.087997913 7.074822903 0.86782163 -6.26384354 7.074822903 0.86782163
		 -6.26384401 7.074822903 0.525585 -6.087997913 7.074822903 0.525585 -5.91215181 7.074822903 0.525585
		 -5.91215181 7.074822903 0.86782163 -6.087997913 7.3562007 0.86782169 -5.91215181 7.3562007 0.86782169
		 -5.91215181 7.3562007 0.525585 -6.087997913 7.39095163 0.525585 -6.26384401 7.3562007 0.525585
		 -6.26384354 7.3562007 0.86782169 -6.087997913 7.3214488 -0.66260678 -5.91215181 7.35619974 -0.66260678
		 -5.91215181 7.35619974 -0.96718651 -6.087997913 7.35619974 -0.96718651 -6.26384401 7.35619974 -0.96718651
		 -6.26384354 7.35619974 -0.66260678;
	setAttr -s 170 ".ed";
	setAttr ".ed[0:165]"  0 30 0 2 34 0 4 35 0 6 39 0 0 18 0 1 22 0 2 4 0 3 5 0
		 4 24 0 5 28 0 6 0 0 7 1 0 8 40 0 9 44 0 10 45 0 11 49 0 8 23 1 9 10 1 10 29 1 11 8 1
		 12 25 0 13 19 0 14 56 1 15 21 0 16 27 0 17 26 1 12 13 1 13 37 1 14 52 0 15 16 1 16 42 1
		 17 32 1 18 12 0 19 6 0 20 11 1 21 7 0 22 16 0 23 17 1 18 19 1 19 38 1 20 57 0 21 22 1
		 22 41 1 23 31 1 24 13 0 25 2 0 26 9 1 27 3 0 28 15 0 29 51 1 24 25 1 25 33 1 26 43 1
		 27 28 1 28 46 1 29 36 1 30 8 0 31 18 1 32 12 1 33 26 1 34 9 0 35 10 0 36 24 1 37 50 1
		 38 55 1 39 11 0 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1
		 39 30 1 40 1 0 41 23 1 42 17 1 43 27 1 44 3 0 45 5 0 46 29 1 47 15 1 48 21 1 49 7 0
		 40 41 1 41 42 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 40 1 50 14 0
		 52 47 1 50 53 0 53 51 0 51 54 0 54 52 0 55 20 0 57 48 1 55 58 0 58 56 0 56 59 0 59 57 0
		 46 54 1 36 53 1 47 59 1 37 58 1 52 59 1 50 58 1 57 49 1 55 39 1 56 78 1 59 83 0 60 61 0
		 57 82 0 61 62 0 20 81 1 63 62 0 60 63 1 55 80 0 58 79 0 64 65 0 65 60 0 64 63 0 51 72 1
		 54 77 0 66 67 0 52 76 0 67 68 0 14 75 1 69 68 0 66 69 1 50 74 0 53 73 0 70 71 0 71 66 0
		 70 69 0 72 66 1 73 71 0 74 70 0 76 68 0 77 67 0 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 72 1 79 65 0 80 64 0 81 63 1 82 62 0 83 61 0 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 78 1 61 68 0 76 83 0;
	setAttr ".ed[166:169]" 60 69 0 75 78 0 74 79 0 65 70 0;
	setAttr -s 86 -ch 340 ".fc[0:85]" -type "polyFaces" 
		f 4 0 66 57 -5
		mu 0 4 0 1 2 3
		f 4 1 70 -3 -7
		mu 0 4 18 17 95 21
		f 4 39 74 -4 -34
		mu 0 4 22 23 24 25
		f 4 3 75 -1 -11
		mu 0 4 4 5 1 0
		f 4 -12 -36 41 -6
		mu 0 4 41 42 43 44
		f 4 10 4 38 33
		mu 0 4 4 0 3 10
		f 4 86 77 -17 12
		mu 0 4 45 49 7 6
		f 4 -18 13 90 -15
		mu 0 4 96 20 56 97
		f 4 -35 40 114 -16
		mu 0 4 33 32 57 58
		f 4 -20 15 95 -13
		mu 0 4 6 11 46 45
		f 4 50 45 6 8
		mu 0 4 19 14 18 21
		f 4 2 71 62 -9
		mu 0 4 34 35 30 29
		f 4 91 82 -19 14
		mu 0 4 69 66 39 38
		f 4 53 -10 -8 -48
		mu 0 4 51 50 53 54
		f 4 -47 52 89 -14
		mu 0 4 20 16 55 56
		f 4 51 69 -2 -46
		mu 0 4 14 13 17 18
		f 4 -39 32 26 21
		mu 0 4 10 3 9 15
		f 4 27 73 -40 -22
		mu 0 4 26 27 23 22
		f 4 118 120 -123 -124
		mu 0 4 113 76 75 105
		f 4 -42 -24 29 -37
		mu 0 4 44 43 47 48
		f 4 87 78 -38 -78
		mu 0 4 49 52 12 7
		f 4 -58 67 58 -33
		mu 0 4 3 2 8 9
		f 4 -27 20 -51 44
		mu 0 4 15 9 14 19
		f 4 -59 68 -52 -21
		mu 0 4 9 8 13 14
		f 4 88 -53 -26 -79
		mu 0 4 52 55 16 12
		f 4 -30 -49 -54 -25
		mu 0 4 48 47 50 51
		f 4 131 133 -136 -137
		mu 0 4 108 80 77 114
		f 4 -63 72 -28 -45
		mu 0 4 29 30 27 26
		f 4 -67 56 16 43
		mu 0 4 2 1 6 7
		f 4 -68 -44 37 31
		mu 0 4 8 2 7 12
		f 4 -69 -32 25 -60
		mu 0 4 13 8 12 16
		f 4 -70 59 46 -61
		mu 0 4 17 13 16 20
		f 4 -71 60 17 -62
		mu 0 4 95 17 20 96
		f 4 -72 61 18 55
		mu 0 4 30 35 38 39
		f 4 139 140 136 -142
		mu 0 4 90 92 108 114
		f 4 126 127 123 -129
		mu 0 4 88 87 113 105
		f 3 -75 64 115
		mu 0 3 24 23 28
		f 4 -76 65 19 -57
		mu 0 4 1 5 11 6
		f 4 42 -87 76 5
		mu 0 4 44 49 45 41
		f 4 30 -88 -43 36
		mu 0 4 48 52 49 44
		f 4 -80 -89 -31 24
		mu 0 4 51 55 52 48
		f 4 -90 79 47 -81
		mu 0 4 56 55 51 54
		f 4 -91 80 7 -82
		mu 0 4 97 56 54 53
		f 4 54 -92 81 9
		mu 0 4 67 66 69 70
		f 4 -84 -93 -55 48
		mu 0 4 64 60 66 67
		f 4 -85 -94 83 23
		mu 0 4 62 59 60 64
		f 4 -95 84 35 -86
		mu 0 4 58 59 62 63
		f 4 -96 85 11 -77
		mu 0 4 45 46 42 41
		f 4 -73 109 -99 -64
		mu 0 4 27 30 36 37
		f 4 108 -101 -50 -83
		mu 0 4 66 68 40 39
		f 4 -74 111 -105 -65
		mu 0 4 23 27 31 28
		f 4 112 -107 -23 28
		mu 0 4 65 61 115 100
		f 4 92 -98 -102 -109
		mu 0 4 66 60 65 68
		f 4 -110 -56 49 -100
		mu 0 4 36 30 39 40
		f 4 93 -104 -108 -111
		mu 0 4 60 59 57 61
		f 3 -112 63 113
		mu 0 3 31 27 37
		f 3 110 -113 97
		mu 0 3 60 61 65
		f 4 -114 96 22 -106
		mu 0 4 31 37 100 115
		f 3 -115 103 94
		mu 0 3 58 57 59
		f 4 -116 102 34 -66
		mu 0 4 24 28 32 33
		f 4 106 117 163 -117
		mu 0 4 98 71 74 99
		f 4 107 119 162 -118
		mu 0 4 71 72 73 74
		f 4 -41 121 161 -120
		mu 0 4 72 103 104 73
		f 4 104 125 159 -125
		mu 0 4 83 84 85 86
		f 4 105 116 158 -126
		mu 0 4 101 98 99 102
		f 4 -103 124 160 -122
		mu 0 4 103 83 86 104
		f 4 100 130 152 -130
		mu 0 4 106 81 79 107
		f 4 101 132 151 -131
		mu 0 4 81 82 78 79
		f 4 -29 134 150 -133
		mu 0 4 82 109 110 78
		f 4 98 138 148 -138
		mu 0 4 93 94 91 89
		f 4 99 129 147 -139
		mu 0 4 94 106 107 91
		f 4 -97 137 149 -135
		mu 0 4 109 111 112 110
		f 4 -148 142 -141 -144
		mu 0 4 91 107 108 92
		f 4 -149 143 -140 -145
		mu 0 4 89 91 92 90
		f 4 -152 145 -134 -147
		mu 0 4 79 78 77 80
		f 4 -153 146 -132 -143
		mu 0 4 107 79 80 108
		f 4 -160 153 -127 -155
		mu 0 4 86 85 87 88
		f 4 -161 154 128 -156
		mu 0 4 104 86 88 105
		f 4 -162 155 122 -157
		mu 0 4 73 104 105 75
		f 4 -163 156 -121 -158
		mu 0 4 74 73 75 76
		f 4 157 164 -146 165
		mu 0 4 74 76 77 78
		f 4 -119 166 135 -165
		mu 0 4 76 113 114 77
		f 4 -151 167 -164 -166
		mu 0 4 78 110 99 74
		f 4 -159 -168 -150 168
		mu 0 4 102 99 110 112
		f 4 -128 169 141 -167
		mu 0 4 113 87 90 114
		f 4 -154 -169 144 -170
		mu 0 4 87 85 89 90;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 55 
		0 0 
		1 0 
		3 0 
		6 0 
		7 0 
		9 0 
		11 0 
		12 0 
		14 0 
		16 0 
		17 0 
		18 0 
		20 0 
		21 0 
		31 0 
		32 0 
		33 0 
		37 0 
		38 0 
		39 0 
		40 0 
		41 0 
		44 0 
		45 0 
		48 0 
		51 0 
		53 0 
		54 0 
		56 0 
		61 0 
		65 0 
		71 0 
		72 0 
		73 0 
		74 0 
		75 0 
		76 0 
		77 0 
		78 0 
		79 0 
		80 0 
		81 0 
		82 0 
		83 0 
		86 0 
		87 0 
		88 0 
		90 0 
		91 0 
		92 0 
		94 0 
		99 0 
		102 0 
		105 0 
		108 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode joint -n "Root_joint";
	rename -uid "E36735CA-4B5C-1617-70DB-6DAEC562B809";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.3627412465958724 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "Back1_joint" -p "Root_joint";
	rename -uid "F87F68D8-4A4A-BF38-BD13-61BAF54EC4C3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.72031615696858076 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.0830574035644531 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "Chest_joint" -p "Back1_joint";
	rename -uid "AE305AB2-4BD9-3336-CFC7-C68C87ACCBEE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 1.2946904247899989 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.377747828354452 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "Neck_joint" -p "Chest_joint";
	rename -uid "16742476-47A1-CD97-1286-47B732FBDED7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 1.2233600439011942 -0.20939927728960797 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.6011078722556462 -0.20939927728960797 1;
	setAttr ".radi" 0.5;
createNode joint -n "Head1_joint" -p "Neck_joint";
	rename -uid "4E86EB05-40AE-CF77-6D65-4E98F4C7CFC8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 2.2874696127104297 0.20939927728960797 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10.888577484966076 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "Jaw_End_joint" -p "Head1_joint";
	rename -uid "AA610829-46F8-DDAF-E5B3-80A19AE3614E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -1.2301326756312019 2.2960423632845246 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9.658444809334874 2.2960423632845246 1;
	setAttr ".radi" 0.5;
createNode joint -n "Head2_End_joint" -p "Head1_joint";
	rename -uid "16293925-4D73-94E3-7CFF-D9A6A009F2BD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 2.9520400154239379 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 13.840617500390014 0 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Head1_joint_orientConstraint1" -p "Head1_joint";
	rename -uid "67CB5D56-4A23-A846-FD63-1A929A8DAE25";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_ctrl1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Cape1_joint" -p "Neck_joint";
	rename -uid "7193C44F-4255-B775-0F4E-37A614F02268";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.16202954126199387 -1.4106454309623451 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.4390783309936523 -1.6200447082519531 1;
	setAttr ".radi" 0.5;
createNode joint -n "Cape2_joint" -p "Cape1_joint";
	rename -uid "21C3C3F3-4684-695D-EED4-329746A64E17";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0 -1.153197600443193 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.4390783309936523 -2.7732423086951461 1;
	setAttr ".radi" 0.5;
createNode joint -n "Cape3_joint" -p "Cape2_joint";
	rename -uid "A87A63AD-4971-762E-7777-24B7C8CD43A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0 -1.7230730216042431 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.4390783309936523 -4.4963153302993888 1;
	setAttr ".radi" 0.5;
createNode joint -n "Cape4_joint" -p "Cape3_joint";
	rename -uid "89090D97-4B79-3474-3315-938DAB0E96E0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.040707851590944699 -1.7272955476913339 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3983704794027076 -6.2236108779907227 1;
	setAttr ".radi" 0.5;
createNode joint -n "Cape5_End_joint" -p "Cape4_joint";
	rename -uid "723BD980-4D47-A069-0629-DE91E353A099";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.012951303901706623 -2.8232803344726562 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.4113217833044143 -9.0468912124633789 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Cape4_joint_orientConstraint1" -p "Cape4_joint";
	rename -uid "7EC43D39-4FF6-E4F5-2E0F-0494DF36EEB6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cape4_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Cape3_joint_orientConstraint1" -p "Cape3_joint";
	rename -uid "A95F1C7A-4CAE-A5E8-3208-979CCCA78818";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cape3_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Cape2_joint_orientConstraint1" -p "Cape2_joint";
	rename -uid "CDB6E087-4945-6BBF-12EE-C2A7DE892881";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cape2_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Cape1_joint_orientConstraint1" -p "Cape1_joint";
	rename -uid "41A45149-46FE-B9F0-0FD3-818D14901895";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Cape1_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Neck_joint_orientConstraint1" -p "Neck_joint";
	rename -uid "622D44AE-4662-D1FC-4742-2B962C56CD02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Chest_joint_orientConstraint1" -p "Chest_joint";
	rename -uid "5EA04960-4B26-30CA-8D36-A6BB6309EFA8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Chest_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Cav_joint" -p "Chest_joint";
	rename -uid "42147A0D-4A3F-0E05-289B-63A159E323D8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.921318 0.71731217164554817 -0.044531300000000003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -0.92131799999999997 8.0950600000000001 -0.044531300000000003 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Shoulder_joint" -p "R_Cav_joint";
	rename -uid "BA6E51D1-4984-9D40-81F3-CF93CD021A74";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.61761199999999994 0.41403000000000034 -4.8572257327350599e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -1.5389299999999999 7.6810299999999998 -0.044531300000000003 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Elbow_joint" -p "R_Shoulder_joint";
	rename -uid "E7127CB7-4635-BB53-AC8C-D4A2D72891CC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.1985 0 0.31915470000000001 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -3.7374299999999998 7.6810299999999998 -0.36368600000000001 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Hand_joint" -p "R_Elbow_joint";
	rename -uid "E52E0A1B-4554-DDFE-B92D-67B34CFC85C5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4117800000000003 0 -0.31915470000000001 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -5.1492100000000001 7.6810299999999998 -0.044531299999999996 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Thumb1_joint" -p "R_Hand_joint";
	rename -uid "38D09BFC-41E0-3D40-281B-3B9DF0219781";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.48214000000000024 0.14721999999999991 -0.66708030000000007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1203163803266718 -18.541504881333129 68.965039114763371 ;
	setAttr ".bps" -type "matrix" 0.14345361176100946 0.2382301115817918 -0.96055581576941618 0
		 -0.92336128610991808 -0.31704655157988559 -0.21653041228598977 0 -0.35612497326943993 0.91800212312773555 0.17449098929976492 0
		 -5.6313500000000003 7.5338099999999999 0.62254900000000002 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Thumb2_joint" -p "R_Thumb1_joint";
	rename -uid "5D6DAF54-4BE9-3732-48E9-D7B71D2ECB88";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.35420044009182045 0.045248358776054598 -0.04796606937027903 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.6986677432330799 -1.1748736042160717 -30.284645222230097 ;
	setAttr ".bps" -type "matrix" 0.49712976670879783 -0.045377191832223884 -0.8664888375007942 0
		 -0.84743462014432469 -0.23983708293608647 -0.47363777111792155 0 -0.18632380318386613 0.96975207352711057 -0.15768435641169198 0
		 -5.7068600000000007 7.3910499999999999 0.94461100000000031 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Thumb3_End_joint" -p "R_Thumb2_joint";
	rename -uid "08C0C446-4CE0-C316-735E-91AEA1D3CEA9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.37538156909568343 0.047843176896851247 0.00098046350212221967 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159345e-07 1.5166066496392399e-21 8.2939427620045669e-22 ;
	setAttr ".bps" -type "matrix" 0.49712976670879783 -0.045377191832223884 -0.8664888375007942 0
		 -0.84743462014432469 -0.23983708293608647 -0.47363777111792155 0 -0.18632380318386613 0.96975207352711057 -0.15768435641169198 0
		 -5.9341999999999997 7.3975600000000004 1.2470600000000007 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "R_Thumb2_joint_orientConstraint1" -p "R_Thumb2_joint";
	rename -uid "1F67A0E1-4007-CB89-1353-32A3295B8007";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb2_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -6.1778228247514226 -21.327050461688209 -163.42573734415609 ;
	setAttr ".o" -type "double3" 0 0 180 ;
	setAttr ".rsrr" -type "double3" 6.1778228247513134 21.327050461688213 16.57426265584386 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Thumb1_joint_orientConstraint1" -p "R_Thumb1_joint";
	rename -uid "9587E0DB-42D3-DF15-2A44-52884796AB10";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Thumb1_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -57.916759631438431 73.85392040962023 121.05483981744189 ;
	setAttr ".o" -type "double3" 0 0 -179.99999999999997 ;
	setAttr ".rsrr" -type "double3" 57.916759631438531 -73.853920409620258 -58.945160182558212 ;
	setAttr -k on ".w0";
createNode joint -n "R_Mid1_joint" -p "R_Hand_joint";
	rename -uid "0AFBA692-4809-1923-F907-5ABFF044D19F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.69310000000000027 -0.15092000000000017 2.0816681711721685e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -5.8423100000000003 7.83195 -0.044531299999999996 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Mid2_joint" -p "R_Mid1_joint";
	rename -uid "E0F0EC7D-4386-BD97-AE65-76AA0791D98D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.51605999999999952 0 6.9388939039072284e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -6.3583699999999999 7.83195 -0.044531300000000003 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Mid3_End_joint" -p "R_Mid2_joint";
	rename -uid "CBF81DD8-4B54-EFEB-1E99-9489FB52BBB6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.6917 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -7.0500699999999998 7.83195 -0.044531300000000003 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "R_Mid2_joint_orientConstraint1" -p "R_Mid2_joint";
	rename -uid "7189C1C1-4242-3BE8-F480-38BE8B60C7DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Mid2_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 180 ;
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Mid1_joint_orientConstraint1" -p "R_Mid1_joint";
	rename -uid "9AC7C3F8-4C1C-5586-FB9E-4F85C2B33F93";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Mid1_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 180 ;
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Hand_joint_orientConstraint1" -p "R_Hand_joint";
	rename -uid "ECAB1A1A-41F6-D4E4-D15D-15A08DAC9707";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hand_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 180 ;
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode joint -n "Shield_joint" -p "R_Hand_joint";
	rename -uid "900E03DD-41E4-1393-B895-93BE91F047BB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.93878778146568109 0.60620805038362491 0.13523479753959752 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.0879977814656812 7.0748219496163749 -0.1797660975395976 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "R_Elbow_joint_orientConstraint1" -p "R_Elbow_joint";
	rename -uid "A7EE6328-486D-BAFF-1E67-B88D43A24463";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Elbow_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 180 ;
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Shoulder_joint_orientConstraint1" -p "R_Shoulder_joint";
	rename -uid "B5F1ED18-4DA2-3658-D00D-40B45772F96F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Shoulder_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 180 ;
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Cav_joint_orientConstraint1" -p "R_Cav_joint";
	rename -uid "18B7A2BF-4E48-3071-7795-81B93EECE766";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Cav_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 7.016709298534876e-15 -7.016709298534876e-15 180 ;
	setAttr ".o" -type "double3" 0 0 -180 ;
	setAttr -k on ".w0";
createNode joint -n "L_Cav_joint" -p "Chest_joint";
	rename -uid "EDE69BD0-4082-CD07-45AD-148F042F87AF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.92131823301315308 0.71731252015629021 -0.044531329036186174 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.92131823301315308 8.0950603485107422 -0.044531329036186174 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Shoulder_joint" -p "L_Cav_joint";
	rename -uid "443637F9-4EE6-E472-8414-999054CC91CA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.61761345346418661 -0.41402979956428165 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5389316864773397 7.6810305489464605 -0.044531329036186174 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Elbow_joint" -p "L_Shoulder_joint";
	rename -uid "7500A73B-4EE5-0AFD-573A-168806119178";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.1985029391482707 0 -0.31915484144839801 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.7374346256256104 7.6810305489464605 -0.36368617048458418 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Hand_joint" -p "L_Elbow_joint";
	rename -uid "569C07E5-48BA-0273-2172-F69ADE140938";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.4117710590362549 0 0.31915484144839801 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.1492056846618652 7.6810305489464605 -0.044531329036186174 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Thumb1_joint" -p "L_Hand_joint";
	rename -uid "38F9F229-4063-A470-3345-FBB0E9D33385";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.48214618013340349 -0.14722059579867075 0.66708018112593004 ;
	setAttr ".ra" -type "double3" -70.946837465862373 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1203163803267107 -18.541504881333132 68.965039114763329 ;
	setAttr ".bps" -type "matrix" 0.14345361176100879 -0.23823011158179191 0.9605558157694164 0
		 0.035188079120715657 0.97120873860140233 0.23561703069189902 0 -0.98903127370195743 4.163336342344339e-16 0.14770626134150167 0
		 5.6313518647952687 7.5338099531477898 0.62254885208974386 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Thumb2_joint" -p "L_Thumb1_joint";
	rename -uid "3FE6ED6C-450B-21FB-C7A0-0D8349FF9B63";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.35419961905883141 -0.06010524760685293 -0.027113683510199594 ;
	setAttr ".ra" -type "double3" -70.946837465862373 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 61.917690682897309 28.026200087460605 -12.029248542651066 ;
	setAttr ".bps" -type "matrix" 0.49712976670879616 0.045377191832222094 0.86648883750079553 0
		 -0.10052481327005067 0.99491895417123988 0.005571045487864093 0 -0.86183336960753587 -0.089873161134056717 0.49916536131696132 0
		 5.7068643721621157 7.3910541966655998 0.94461067532739984 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Thumb3_End_joint" -p "L_Thumb2_joint";
	rename -uid "AA45CF71-4FE6-448B-A733-AC922986C47A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.37537706990293984 -0.014693082165413544 -0.045543667655065616 ;
	setAttr ".ra" -type "double3" -70.946837465862373 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 70.946837465862515 0 0 ;
	setAttr ".bps" -type "matrix" 0.49712976670879616 0.045377191832222094 0.86648883750079553 0
		 -0.10052481327005258 0.99491895417123966 0.0055710454878652015 0 -0.86183336960753565 -0.089873161134058924 0.49916536131696132 0
		 5.9342035592512863 7.3975624814162373 1.2470550391022122 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "L_Thumb2_joint_orientConstraint1" -p "L_Thumb2_joint";
	rename -uid "F4798167-462F-66AA-3135-9FA87E1F56AA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb2_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 6.1778228247513782 21.327050461688188 16.574262655843899 ;
	setAttr ".rsrr" -type "double3" 6.1778228247513658 21.327050461688223 16.574262655843878 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Thumb1_joint_orientConstraint1" -p "L_Thumb1_joint";
	rename -uid "A3BF5EB1-455C-6964-7E5A-33BCB223ECE4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Thumb1_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 57.916759631438367 -73.853920409620258 -58.94516018255807 ;
	setAttr ".rsrr" -type "double3" 57.916759631438438 -73.853920409620272 -58.945160182558133 ;
	setAttr -k on ".w0";
createNode joint -n "L_Mid1_joint" -p "L_Hand_joint";
	rename -uid "B67D3132-4087-00C9-AD60-BF8B911614C5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.69310140609741211 0.15091996803058549 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.8423070907592773 7.831950516977046 -0.044531329036186174 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Mid2_joint" -p "L_Mid1_joint";
	rename -uid "03327F18-4B23-8CFE-AF72-ADA1BD085B58";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.51606512069702148 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3583722114562988 7.831950516977046 -0.044531329036186174 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Mid3_End_joint" -p "L_Mid2_joint";
	rename -uid "6C6727D9-4658-B298-872F-86B0AC25E6D1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.69169998168945312 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.050072193145752 7.831950516977046 -0.044531329036186174 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "L_Mid2_joint_orientConstraint1" -p "L_Mid2_joint";
	rename -uid "5540FDFB-49D2-B29A-9815-B8A0EBFF91B2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Mid2_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Mid1_joint_orientConstraint1" -p "L_Mid1_joint";
	rename -uid "7DDBCA2D-4604-1FEF-8E35-4F8DD489181A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Mid1_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Hand_joint_orientConstraint1" -p "L_Hand_joint";
	rename -uid "9779E0E6-4419-F062-8A27-F5B07296FB80";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hand_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Elbow_joint_orientConstraint1" -p "L_Elbow_joint";
	rename -uid "2E7C5DC0-48B0-8315-2BEB-D597AB682DD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Elbow_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Shoulder_joint_orientConstraint1" -p "L_Shoulder_joint";
	rename -uid "DF66F4F6-42B6-55C9-F4F8-80BF0F01F94E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Shoulder_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Cav_joint_orientConstraint1" -p "L_Cav_joint";
	rename -uid "63C44852-4031-A054-5444-A7AB2B5534F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Cav_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Back1_joint_orientConstraint1" -p "Back1_joint";
	rename -uid "9939D7B8-405C-CCC9-2D00-4CBD6D41424B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Back1_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "C_Bell_joint" -p "Root_joint";
	rename -uid "46771247-425D-6D1A-2822-74B3335CBFAB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.7051689771561751 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.6575722694396973 0 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "C_Bell_joint_orientConstraint1" -p "C_Bell_joint";
	rename -uid "5992383F-4547-1101-F247-E8879E4A61FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Bell_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Pelvis_joint" -p "C_Bell_joint";
	rename -uid "CCE7FEC4-48F6-A195-F533-E8A964B2134E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.5941929817199707 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.0633792877197266 0 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Pelvis_joint_orientConstraint1" -p "Pelvis_joint";
	rename -uid "60934745-4E47-5359-9B7A-8B9CE26508DD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "L_Hip_joint" -p "Pelvis_joint";
	rename -uid "EEEF012E-4F57-9CE7-5959-62A83160E602";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.91556636819881998 -0.41316821148584859 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.91556636819881998 3.650211076233878 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Knee_joint" -p "L_Hip_joint";
	rename -uid "60CBC806-400C-8FFA-34FC-CF98E5217E1A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -2.0094296887660144 0.42563251767660037 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.91556636819881998 1.6407813874678636 0.42563251767660037 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Ankie_joint" -p "L_Knee_joint";
	rename -uid "3E6E833B-4317-592C-209B-969ECE49ADC5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -1.0596091150609257 -0.42563251767660037 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.91556636819881998 0.58117227240693792 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Foot_joint" -p "L_Ankie_joint";
	rename -uid "5C1D6EF1-4E24-0500-EE63-9A9593692EAD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -0.63100658345124894 1.2038773358756274 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.91556636819881998 -0.049834311044311019 1.2038773358756274 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "L_Ankie_joint_orientConstraint1" -p "L_Ankie_joint";
	rename -uid "32C7AE3D-4701-4F24-320C-5592DE3D42D0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Knee_joint_orientConstraint1" -p "L_Knee_joint";
	rename -uid "0FD22048-4178-0AAA-CC13-3F980CA8E446";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Knee_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Hip_joint_orientConstraint1" -p "L_Hip_joint";
	rename -uid "B1FDC2C1-47D7-E4E4-E824-B3A7EF19954B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Hip_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Hip_joint" -p "Pelvis_joint";
	rename -uid "78C0E5A0-4D93-AC96-A7FD-0B9F56354839";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.915566 -0.41316928771972661 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -0.91556599999999999 3.65021 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Knee_joint" -p "R_Hip_joint";
	rename -uid "92CBB6C7-4276-6EE5-023E-BBBE5AD74BA7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 2.00943 -0.42563300000000021 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -0.91556599999999999 1.6407799999999999 0.42563299999999998 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Ankie_joint" -p "R_Knee_joint";
	rename -uid "58E6CFC8-45BD-C275-55CC-C5A2058F4B62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 1.0596079999999999 0.42563299999999982 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -0.91556599999999999 0.58117200000000002 5.5511151231257827e-17 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Foot_joint" -p "R_Ankie_joint";
	rename -uid "50C87C8B-4502-C32A-AB5C-5F9672B5373F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.63100629999999991 -1.20388 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -0.91556599999999999 -0.049834299999999998 1.2038800000000001 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "R_Ankie_joint_orientConstraint1" -p "R_Ankie_joint";
	rename -uid "DFC21D50-479B-F0EE-E218-C9B372BE5A80";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".o" -type "double3" -180 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Knee_joint_orientConstraint1" -p "R_Knee_joint";
	rename -uid "EF6F0E88-4F38-0FB1-FF43-1F84845C3738";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Knee_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".o" -type "double3" -180 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Hip_joint_orientConstraint1" -p "R_Hip_joint";
	rename -uid "535F9400-4BBA-5453-AAFB-1C88A6123381";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Hip_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".o" -type "double3" -180 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "L_Veil1_joint" -p "C_Bell_joint";
	rename -uid "30F670E7-431C-DBA1-6240-ABA25A6B9CE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.5267276114813464 0.19313669204711914 -0.062771402299404144 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5267276114813464 4.8507089614868164 -0.062771402299404144 1;
	setAttr ".radi" 0.5;
createNode joint -n "L_Veil2_End_joint" -p "L_Veil1_joint";
	rename -uid "7D06DACB-47E5-C631-7E5B-C58C701CC8E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.61237585544586182 -2.3885536193847656 -0.02217487245798111 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1391034669272084 2.4621553421020508 -0.084946274757385254 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "L_Veil1_joint_orientConstraint1" -p "L_Veil1_joint";
	rename -uid "C8FA4FB5-4B8E-66AB-004B-0AA23FF5DCFF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Veil_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "R_Veil1_joint" -p "C_Bell_joint";
	rename -uid "C9183708-4AC7-9BDE-796D-8FB880312591";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.5668825281520968 0.19313773056030303 -0.062771400000000005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 -0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -1.5668825281520968 4.8507100000000003 -0.062771400000000005 1;
	setAttr ".radi" 0.5;
createNode joint -n "R_Veil2_End_joint" -p "R_Veil1_joint";
	rename -uid "1D43C6FF-4F39-925F-98F0-E9B8704247C2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.6123799999999997 2.3885500000000004 0.022174899999999706 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -2.1792625281520968 2.4621599999999999 -0.084946300000000002 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "R_Veil1_joint_orientConstraint1" -p "R_Veil1_joint";
	rename -uid "5BF6B6FE-467F-D29C-F810-36858B74F1AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Veil_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 0 0 ;
	setAttr ".o" -type "double3" -180 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "F_Veil1_joint" -p "C_Bell_joint";
	rename -uid "E7BE911C-4D3E-FCDF-FB2C-AE8D2AEA664E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.1611882061733922e-08 0 1.4675873026037975 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1611882061733922e-08 4.6575722694396973 1.4675873026037975 1;
	setAttr ".radi" 0.5;
createNode joint -n "F_Veil2_End_joint" -p "F_Veil1_joint";
	rename -uid "21800955-4FC7-03F7-1424-98923BE4BB27";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 -2.8037006855010986 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1611882061733922e-08 1.8538715839385986 1.4675873026037975 1;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "F_Veil1_joint_orientConstraint1" -p "F_Veil1_joint";
	rename -uid "34789196-4F31-8BF0-79DA-E4A29AEE95A6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Bell_ctrl1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Root_joint_parentConstraint1" -p "Root_joint";
	rename -uid "CBEE556A-4463-6CE4-6C63-F7ACBA840820";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.237410416938701e-07 0 ;
	setAttr ".rst" -type "double3" 0 5.3627412465958724 0 ;
	setAttr -k on ".w0";
createNode transform -n "Root_ctrl";
	rename -uid "BB2B1792-4506-5D63-3154-ABA7AD675CA9";
	setAttr ".rp" -type "double3" 0 5.3627414703369141 0 ;
	setAttr ".sp" -type "double3" 0 5.3627414703369141 0 ;
createNode nurbsCurve -n "Root_ctrlShape" -p "Root_ctrl";
	rename -uid "E8C782F4-4303-8E89-6292-21A0339F1CA8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5742815864606361 5.3627414703369141 -1.5742815864606363
		1.3632586740156078e-16 5.3627414703369141 -2.2263703705668632
		-1.5742815864606361 5.3627414703369141 -1.5742815864606359
		-2.226370370566864 5.3627414703369141 -1.1541543315773217e-16
		-1.5742815864606361 5.3627414703369141 1.5742815864606361
		-2.2301704270410042e-16 5.3627414703369141 2.2263703705668645
		1.5742815864606361 5.3627414703369141 1.5742815864606359
		2.226370370566864 5.3627414703369141 3.0360934135218997e-16
		1.5742815864606361 5.3627414703369141 -1.5742815864606363
		1.3632586740156078e-16 5.3627414703369141 -2.2263703705668632
		-1.5742815864606361 5.3627414703369141 -1.5742815864606359
		;
createNode transform -n "Bell_ctrl" -p "Root_ctrl";
	rename -uid "04671C78-418D-9C34-E894-DB8EF3C58EB9";
	setAttr ".rp" -type "double3" 0 4.6575722694396973 0 ;
	setAttr ".sp" -type "double3" 0 4.6575722694396973 0 ;
createNode nurbsCurve -n "Bell_ctrlShape" -p "Bell_ctrl";
	rename -uid "AD128203-4211-C618-BB4C-74A8B3DF7B90";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.1033598058363081 4.6575722694396973 -2.1033598058363085
		1.8214171623062614e-16 4.6575722694396973 -2.9745999639641458
		-2.1033598058363081 4.6575722694396973 -2.1033598058363077
		-2.9745999639641467 4.6575722694396973 -1.5420378740689223e-16
		-2.1033598058363081 4.6575722694396973 2.1033598058363081
		-2.9796771281235683e-16 4.6575722694396973 2.9745999639641476
		2.1033598058363081 4.6575722694396973 2.1033598058363077
		2.9745999639641467 4.6575722694396973 4.0564514682049822e-16
		2.1033598058363081 4.6575722694396973 -2.1033598058363085
		1.8214171623062614e-16 4.6575722694396973 -2.9745999639641458
		-2.1033598058363081 4.6575722694396973 -2.1033598058363077
		;
createNode transform -n "Bell_ctrl1" -p "Bell_ctrl";
	rename -uid "CE228FC1-44AF-26D7-50EB-A3B0FAA730AD";
	setAttr ".rp" -type "double3" 2.1611882061733922e-08 4.6575722694396973 1.4675873517990112 ;
	setAttr ".sp" -type "double3" 2.1611882061733922e-08 4.6575722694396973 1.4675873517990112 ;
createNode nurbsCurve -n "Bell_ctrl1Shape" -p "Bell_ctrl1";
	rename -uid "5569BC01-4006-4527-E488-95A4CAC9CE64";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.58582601171379922 4.3255681230914709 3.5900328546268772
		2.161188214045282e-08 4.6390275686893601 3.8145370601714035
		-0.5858259684900351 4.3255681230914709 3.5900328546268776
		-0.82848303878089602 3.424043212435862 3.7066826998671498
		-0.5858259684900351 2.5225183017802535 3.8233325451074238
		2.1611881932956777e-08 1.8942457603148637 4.1444726465464381
		0.58582601171379922 2.5225183017802535 3.8233325451074234
		0.82848308200466014 3.4240432124358615 3.7066826998671498
		0.58582601171379922 4.3255681230914709 3.5900328546268772
		2.161188214045282e-08 4.6390275686893601 3.8145370601714035
		-0.5858259684900351 4.3255681230914709 3.5900328546268776
		;
createNode transform -n "L_Veil_ctrl" -p "Bell_ctrl";
	rename -uid "2A07DFA2-44CA-B756-750F-21A88539E6F4";
	setAttr ".rp" -type "double3" 1.526727557182312 4.8507089614868164 -0.062771402299404144 ;
	setAttr ".sp" -type "double3" 1.526727557182312 4.8507089614868164 -0.062771402299404144 ;
createNode nurbsCurve -n "L_Veil_ctrlShape" -p "L_Veil_ctrl";
	rename -uid "87FB6920-49DA-C173-28CB-ECB96B84444B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.747476286617653 2.6252063161373753 -0.79688068944533197
		4.4807718133057719 3.6225011585706128 -1.1009587124452198
		4.2140673399938926 4.6197960010038495 -0.79688068944533164
		4.390724349211454 4.8448373417495665 -0.062771402299404505
		4.2140673399938926 4.6197960010038495 0.67133788484652368
		4.4807718133057719 3.6225011585706133 0.97541590784641219
		4.747476286617653 2.6252063161373753 0.67133788484652368
		5.1450785158179198 2.4001649753916605 -0.062771402299404228
		4.747476286617653 2.6252063161373753 -0.79688068944533197
		4.4807718133057719 3.6225011585706128 -1.1009587124452198
		4.2140673399938926 4.6197960010038495 -0.79688068944533164
		;
createNode transform -n "R_Veil_ctrl" -p "Bell_ctrl";
	rename -uid "EEA3D9C4-4029-2CF4-B9E7-518FBCE22A7C";
	setAttr ".rp" -type "double3" -1.5668824911117554 4.8507099151611328 -0.062771402299404144 ;
	setAttr ".sp" -type "double3" -1.5668824911117554 4.8507099151611328 -0.062771402299404144 ;
createNode nurbsCurve -n "R_Veil_ctrlShape" -p "R_Veil_ctrl";
	rename -uid "584DD23F-4420-95A2-FF9F-A1AF207ECCF3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4501720634949145 2.6252063161373753 -0.79688068944533219
		-4.1834675901830325 3.6225011585706128 -1.10095871244522
		-3.9167631168711545 4.6197960010038495 -0.79688068944533186
		-4.0934201260887155 4.8448373417495665 -0.062771402299404699
		-3.9167631168711545 4.6197960010038495 0.67133788484652346
		-4.1834675901830334 3.6225011585706133 0.97541590784641197
		-4.4501720634949145 2.6252063161373753 0.67133788484652346
		-4.8477742926951803 2.4001649753916605 -0.062771402299404519
		-4.4501720634949145 2.6252063161373753 -0.79688068944533219
		-4.1834675901830325 3.6225011585706128 -1.10095871244522
		-3.9167631168711545 4.6197960010038495 -0.79688068944533186
		;
createNode transform -n "Pelvis_ctrl" -p "Bell_ctrl";
	rename -uid "D1AE0B01-45FD-F1DA-DF8A-20AE59D96721";
	setAttr ".rp" -type "double3" 0 4.0633792877197266 0 ;
	setAttr ".sp" -type "double3" 0 4.0633792877197266 0 ;
createNode nurbsCurve -n "Pelvis_ctrlShape" -p "Pelvis_ctrl";
	rename -uid "089E0F39-43D4-F2E1-A842-70ADAE726FE9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7388553820149055 4.0633792877197266 -1.7388553820149057
		1.5057723489734891e-16 4.0633792877197266 -2.4591128642509279
		-1.7388553820149055 4.0633792877197266 -1.7388553820149053
		-2.4591128642509288 4.0633792877197266 -1.2748084512955862e-16
		-1.7388553820149055 4.0633792877197266 1.7388553820149055
		-2.4633101747631323e-16 4.0633792877197266 2.4591128642509292
		1.7388553820149055 4.0633792877197266 1.7388553820149053
		2.4591128642509288 4.0633792877197266 3.3534835303967184e-16
		1.7388553820149055 4.0633792877197266 -1.7388553820149057
		1.5057723489734891e-16 4.0633792877197266 -2.4591128642509279
		-1.7388553820149055 4.0633792877197266 -1.7388553820149053
		;
createNode transform -n "L_Hip_ctrl" -p "Pelvis_ctrl";
	rename -uid "6B04114A-4199-5003-654E-6EB6AEE8EB08";
	setAttr ".rp" -type "double3" 0.91556638479232788 3.6502110958099365 0 ;
	setAttr ".sp" -type "double3" 0.91556638479232788 3.6502110958099365 0 ;
createNode nurbsCurve -n "L_Hip_ctrlShape" -p "L_Hip_ctrl";
	rename -uid "5E87A807-499A-10D7-9394-BCAD80AE45E8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5858944637729335 3.3608878929501689 -0.479457202364373
		2.5858944637729335 3.650211095809937 -0.67805487816115761
		2.5858944637729335 3.9395342986697046 -0.47945720236437289
		2.6927942167363588 4.0593758932034429 1.1827560572304284e-16
		2.5858944637729335 3.9395342986697046 0.479457202364373
		2.5858944637729335 3.6502110958099374 0.67805487816115784
		2.5858944637729335 3.3608878929501689 0.47945720236437289
		2.6927942167363588 3.2410462984164305 2.4589219467112999e-16
		2.5858944637729335 3.3608878929501689 -0.479457202364373
		2.5858944637729335 3.650211095809937 -0.67805487816115761
		2.5858944637729335 3.9395342986697046 -0.47945720236437289
		;
createNode transform -n "L_Knee_ctrl" -p "L_Hip_ctrl";
	rename -uid "DA6B1276-4C95-C4F5-2A46-C1B47FF27D42";
	setAttr ".rp" -type "double3" 0.91556638479232788 1.6407814025878906 0.42563250660896301 ;
	setAttr ".sp" -type "double3" 0.91556638479232788 1.6407814025878906 0.42563250660896301 ;
createNode nurbsCurve -n "L_Knee_ctrlShape" -p "L_Knee_ctrl";
	rename -uid "4D5C8C14-40DA-45FF-2DFE-29B226254AF0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6330568994867303 1.6407814025878906 -0.51574332294091352
		0.91556638479232799 1.6407814025878906 -0.81293762500138711
		0.1980758700979256 1.6407814025878906 -0.5157433229409133
		-0.099118431962548437 1.6407814025878906 0.20174719175348882
		0.1980758700979256 1.6407814025878906 0.91923770644789138
		0.91556638479232788 1.6407814025878906 1.2164320085083653
		1.6330568994867303 1.6407814025878906 0.91923770644789116
		1.9302512015472042 1.6407814025878906 0.20174719175348899
		1.6330568994867303 1.6407814025878906 -0.51574332294091352
		0.91556638479232799 1.6407814025878906 -0.81293762500138711
		0.1980758700979256 1.6407814025878906 -0.5157433229409133
		;
createNode transform -n "L_Foot_ctrl" -p "L_Knee_ctrl";
	rename -uid "57DF4550-45AD-9561-5F7A-3D885A152147";
	setAttr ".rp" -type "double3" 0.91556638479232788 0.58117228746414185 0 ;
	setAttr ".sp" -type "double3" 0.91556638479232788 0.58117228746414185 0 ;
createNode nurbsCurve -n "L_Foot_ctrlShape" -p "L_Foot_ctrl";
	rename -uid "B70DB70D-4998-4F5C-BBC0-6CA3849BA7CD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4209876856721175 -0.049379989504814037 -0.397201925267199
		0.9155663847923281 -0.049379989504814037 -0.77893554785990882
		0.41014508391253846 -0.049379989504814037 -0.39720192526719877
		0.20079272637587653 -0.049379989504814037 0.36004786939662775
		0.41014508391253846 -0.049379989504814148 1.1172976640604537
		0.91556638479232788 -0.049379989504814148 1.499031286653165
		1.4209876856721175 -0.049379989504814148 1.1172976640604537
		1.6303400432087791 -0.049379989504814037 0.36004786939662792
		1.4209876856721175 -0.049379989504814037 -0.397201925267199
		0.9155663847923281 -0.049379989504814037 -0.77893554785990882
		0.41014508391253846 -0.049379989504814037 -0.39720192526719877
		;
createNode transform -n "R_Hip_ctrl" -p "Pelvis_ctrl";
	rename -uid "F959581B-44A5-4A99-F4A8-93A4A919E668";
	setAttr ".rp" -type "double3" -0.91556638479232788 3.6502110958099365 0 ;
	setAttr ".sp" -type "double3" -0.91556638479232788 3.6502110958099365 0 ;
createNode nurbsCurve -n "R_Hip_ctrlShape" -p "R_Hip_ctrl";
	rename -uid "8F781CB6-4967-4A6B-B954-D7B9960C5DF3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.5858944637729335 3.3608878929501689 -0.47945720236437323
		-2.5858944637729335 3.650211095809937 -0.67805487816115784
		-2.5858944637729335 3.9395342986697046 -0.47945720236437311
		-2.6927942167363588 4.0593758932034429 -9.9372031851541944e-17
		-2.5858944637729335 3.9395342986697046 0.47945720236437278
		-2.5858944637729335 3.6502110958099374 0.67805487816115761
		-2.5858944637729335 3.3608878929501689 0.47945720236437267
		-2.6927942167363588 3.2410462984164305 2.824455709654521e-17
		-2.5858944637729335 3.3608878929501689 -0.47945720236437323
		-2.5858944637729335 3.650211095809937 -0.67805487816115784
		-2.5858944637729335 3.9395342986697046 -0.47945720236437311
		;
createNode transform -n "R_Knee_ctrl" -p "R_Hip_ctrl";
	rename -uid "06BDED2B-4739-BD24-D6BF-8DABD7C49E2F";
	setAttr ".rp" -type "double3" -0.91556638479232788 1.6407814025878906 0.42563250660896301 ;
	setAttr ".sp" -type "double3" -0.91556638479232788 1.6407814025878906 0.42563250660896301 ;
createNode nurbsCurve -n "R_Knee_ctrlShape" -p "R_Knee_ctrl";
	rename -uid "383B9724-4FC6-072F-7873-81ABF20F5D7D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.6330568994867303 1.6407814025878906 -0.51574332294091363
		-0.91556638479232788 1.6407814025878906 -0.81293762500138711
		-0.19807587009792549 1.6407814025878906 -0.51574332294091318
		0.099118431962548437 1.6407814025878906 0.20174719175348893
		-0.19807587009792571 1.6407814025878906 0.91923770644789149
		-0.91556638479232799 1.6407814025878906 1.2164320085083653
		-1.6330568994867303 1.6407814025878906 0.91923770644789105
		-1.9302512015472042 1.6407814025878906 0.20174719175348887
		-1.6330568994867303 1.6407814025878906 -0.51574332294091363
		-0.91556638479232788 1.6407814025878906 -0.81293762500138711
		-0.19807587009792549 1.6407814025878906 -0.51574332294091318
		;
createNode transform -n "R_Foot_ctrl" -p "R_Knee_ctrl";
	rename -uid "9856C818-4C4C-12A5-12B6-9E85ACB3B8C8";
	setAttr ".rp" -type "double3" -0.91556638479232788 0.58117228746414185 0 ;
	setAttr ".sp" -type "double3" -0.91556638479232788 0.58117228746414185 0 ;
createNode nurbsCurve -n "R_Foot_ctrlShape" -p "R_Foot_ctrl";
	rename -uid "763488B1-4AE7-AAAB-2F77-D6A3E8A50792";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4209876856721175 -0.049379989504814037 -0.39720192526719905
		-0.91556638479232799 -0.049379989504814037 -0.77893554785990882
		-0.41014508391253846 -0.049379989504814037 -0.39720192526719872
		-0.20079272637587653 -0.049379989504814037 0.36004786939662786
		-0.41014508391253857 -0.049379989504814148 1.1172976640604537
		-0.9155663847923281 -0.049379989504814148 1.499031286653165
		-1.4209876856721175 -0.049379989504814148 1.1172976640604537
		-1.6303400432087791 -0.049379989504814037 0.36004786939662781
		-1.4209876856721175 -0.049379989504814037 -0.39720192526719905
		-0.91556638479232799 -0.049379989504814037 -0.77893554785990882
		-0.41014508391253846 -0.049379989504814037 -0.39720192526719872
		;
createNode transform -n "Back1_ctrl" -p "Root_ctrl";
	rename -uid "DCC88CF3-4F40-E3AC-4F80-57A393714722";
	setAttr ".rp" -type "double3" 0 6.0830574035644531 0 ;
	setAttr ".sp" -type "double3" 0 6.0830574035644531 0 ;
createNode nurbsCurve -n "Back1_ctrlShape" -p "Back1_ctrl";
	rename -uid "D8DA92D5-43CC-0B0C-9585-629BA78049FF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5742815864606361 6.0830574035644531 -1.5742815864606363
		1.3632586740156078e-16 6.0830574035644531 -2.2263703705668632
		-1.5742815864606361 6.0830574035644531 -1.5742815864606359
		-2.226370370566864 6.0830574035644531 -1.1541543315773217e-16
		-1.5742815864606361 6.0830574035644531 1.5742815864606361
		-2.2301704270410042e-16 6.0830574035644531 2.2263703705668645
		1.5742815864606361 6.0830574035644531 1.5742815864606359
		2.226370370566864 6.0830574035644531 3.0360934135218997e-16
		1.5742815864606361 6.0830574035644531 -1.5742815864606363
		1.3632586740156078e-16 6.0830574035644531 -2.2263703705668632
		-1.5742815864606361 6.0830574035644531 -1.5742815864606359
		;
createNode transform -n "Chest_ctrl" -p "Back1_ctrl";
	rename -uid "5EA2E2C2-42F5-1B7F-9739-03AD8AE029BC";
	setAttr ".rp" -type "double3" 0 7.3777480125427246 0 ;
	setAttr ".sp" -type "double3" 0 7.3777480125427246 0 ;
createNode nurbsCurve -n "Chest_ctrlShape" -p "Chest_ctrl";
	rename -uid "BFBD5316-490E-6418-4CDB-768C5D13081A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9357949966417398 7.3777480125427246 -1.93579499664174
		1.6763134009722805e-16 7.3777480125427246 -2.7376275382247277
		-1.9357949966417398 7.3777480125427246 -1.9357949966417396
		-2.7376275382247286 7.3777480125427246 -1.4191909501036624e-16
		-1.9357949966417398 7.3777480125427246 1.9357949966417398
		-2.742300228531763e-16 7.3777480125427246 2.737627538224729
		1.9357949966417398 7.3777480125427246 1.9357949966417396
		2.7376275382247286 7.3777480125427246 3.7332930079212297e-16
		1.9357949966417398 7.3777480125427246 -1.93579499664174
		1.6763134009722805e-16 7.3777480125427246 -2.7376275382247277
		-1.9357949966417398 7.3777480125427246 -1.9357949966417396
		;
createNode transform -n "Neck_ctrl" -p "Chest_ctrl";
	rename -uid "B3AB27AD-49B8-90AA-81F3-1683B12C0785";
	setAttr ".rp" -type "double3" 0 8.6011075973510742 -0.20939928293228149 ;
	setAttr ".sp" -type "double3" 0 8.6011075973510742 -0.20939928293228149 ;
createNode nurbsCurve -n "Neck_ctrlShape" -p "Neck_ctrl";
	rename -uid "14615F7E-42ED-CE41-472F-D6A996E1C817";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1413821964233537 8.6011075973510742 -1.3507814793556354
		9.8838682547217218e-17 8.6011075973510742 -1.8235574649653796
		-1.1413821964233537 8.6011075973510742 -1.350781479355635
		-1.6141581820330988 8.6011075973510742 -0.20939928293228158
		-1.1413821964233537 8.6011075973510742 0.93198291349107221
		-1.6169132906758535e-16 8.6011075973510742 1.4047588991008177
		1.1413821964233537 8.6011075973510742 0.93198291349107198
		1.6141581820330988 8.6011075973510742 -0.20939928293228127
		1.1413821964233537 8.6011075973510742 -1.3507814793556354
		9.8838682547217218e-17 8.6011075973510742 -1.8235574649653796
		-1.1413821964233537 8.6011075973510742 -1.350781479355635
		;
createNode transform -n "Head_ctrl1" -p "Neck_ctrl";
	rename -uid "6125A86B-4124-B843-7FD7-8D89FE73CC42";
	setAttr ".rp" -type "double3" 0 10.888577461242676 0 ;
	setAttr ".sp" -type "double3" 0 10.888577461242676 0 ;
createNode nurbsCurve -n "Head_ctrl1Shape" -p "Head_ctrl1";
	rename -uid "66C64437-46CE-8B45-EFE7-D899CB768D24";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2340582799070203 11.716009926627718 -4.2444275306066004
		1.9345962974685341e-16 11.36728207983877 -4.2444275306066004
		-2.2340582799070203 11.716009926627718 -4.2444275306066004
		-3.1594355185764185 12.671199119145761 -4.2444275306066004
		-2.2340582799070203 14.905257399052786 -4.2444275306066004
		-3.1648281673269255e-16 15.830634637722184 -4.2444275306066004
		2.2340582799070203 14.905257399052786 -4.2444275306066004
		3.1594355185764185 12.671199119145763 -4.2444275306066004
		2.2340582799070203 11.716009926627718 -4.2444275306066004
		1.9345962974685341e-16 11.36728207983877 -4.2444275306066004
		-2.2340582799070203 11.716009926627718 -4.2444275306066004
		;
createNode transform -n "Cape1_Ctrl" -p "Neck_ctrl";
	rename -uid "3B9C8142-4A63-9069-EC27-5FAEDAE332B2";
	setAttr ".rp" -type "double3" 0 8.4390783309936523 -1.6200447082519531 ;
	setAttr ".sp" -type "double3" 0 8.4390783309936523 -1.6200447082519531 ;
createNode nurbsCurve -n "Cape1_CtrlShape" -p "Cape1_Ctrl";
	rename -uid "B8107625-426F-B699-02AB-6EBD88994A05";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.8044992110981526 9.1159089191333305 -1.6200447082519531
		6.7857323231109122e-17 8.9738666673374166 -1.6200447082519531
		-2.8044992110981526 9.1159089191333305 -1.6200447082519531
		-2.8045088346342899 8.4390783309936523 -1.6200447082519531
		-2.8044992110981526 7.7622477428539716 -1.6200447082519531
		-1.1100856969603225e-16 7.9042899946498872 -1.6200447082519531
		2.8044992110981526 7.7622477428539716 -1.6200447082519531
		2.8045088346342899 8.4390783309936523 -1.6200447082519531
		2.8044992110981526 9.1159089191333305 -1.6200447082519531
		6.7857323231109122e-17 8.9738666673374166 -1.6200447082519531
		-2.8044992110981526 9.1159089191333305 -1.6200447082519531
		;
createNode transform -n "Cape2_Ctrl" -p "Cape1_Ctrl";
	rename -uid "9B223FF9-45A4-EA98-1E48-7C887E36F72E";
	setAttr ".rp" -type "double3" 0 8.4390783309936523 -2.7732422351837158 ;
	setAttr ".sp" -type "double3" 0 8.4390783309936523 -2.7732422351837158 ;
createNode nurbsCurve -n "Cape2_CtrlShape" -p "Cape2_Ctrl";
	rename -uid "56AF468F-4936-0CE3-0073-DE9DB49908BF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4676684040534445 9.6740364673083121 -4.4151372774377116
		5.0999195767726644e-17 9.9537986573831585 -4.4181084278800142
		-1.4676684040534449 9.6740364673083121 -4.4151372774377116
		-1.4676734403037195 9.6740364673083121 -3.9091337952764533
		-1.4676684040534449 9.6740364673083121 -3.4022419501251586
		-8.3430166535479223e-17 9.9537986573831585 -3.4022402097212283
		1.4676684040534445 9.6740364673083121 -3.4022419501251586
		1.4676734403037193 9.6740364673083121 -3.9091337952764533
		1.4676684040534445 9.6740364673083121 -4.4151372774377116
		5.0999195767726644e-17 9.9537986573831585 -4.4181084278800142
		-1.4676684040534449 9.6740364673083121 -4.4151372774377116
		;
createNode transform -n "Cape3_Ctrl" -p "Cape2_Ctrl";
	rename -uid "C4FD9FAD-4D54-5CBE-C5B4-0896B30CE603";
	setAttr ".rp" -type "double3" 0 8.4390783309936523 -4.4963154792785645 ;
	setAttr ".sp" -type "double3" 0 8.4390783309936523 -4.4963154792785645 ;
createNode nurbsCurve -n "Cape3_CtrlShape" -p "Cape3_Ctrl";
	rename -uid "09F527C9-4C7B-3F11-CF2D-B591C29A35A6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7910704056335358 9.5813415170459972 -6.2558250470203332
		5.6046098837593654e-17 9.9017712672488045 -6.2558274260569444
		-1.7910704056335358 9.5813415170459972 -6.2558250470203332
		-1.7910765516259108 9.5813415170459972 -5.5625241426716237
		-1.7910704056335358 9.5813415170459972 -4.8692232383229106
		-9.1686452880172644e-17 9.9017712672488045 -4.8692208592862993
		1.7910704056335358 9.5813415170459972 -4.8692232383229106
		1.7910765516259108 9.5813415170459972 -5.5625241426716237
		1.7910704056335358 9.5813415170459972 -6.2558250470203332
		5.6046098837593654e-17 9.9017712672488045 -6.2558274260569444
		-1.7910704056335358 9.5813415170459972 -6.2558250470203332
		;
createNode transform -n "Cape4_Ctrl" -p "Cape3_Ctrl";
	rename -uid "A2885FA0-4090-F107-1E21-3FB26E6DB901";
	setAttr ".rp" -type "double3" 0 8.3983707427978516 -6.2236108779907227 ;
	setAttr ".sp" -type "double3" 0 8.3983707427978516 -6.2236108779907227 ;
createNode nurbsCurve -n "Cape4_CtrlShape" -p "Cape4_Ctrl";
	rename -uid "D1135EAE-4B81-9A82-6C22-3A98752FB360";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.2599439310042055 9.4872099783461632 -8.3641353403320409
		0.0012755038174475316 9.7903025732025348 -8.364138192178121
		-2.3450088241599776 9.4872099783461632 -8.3641353403320409
		-2.4614615006779621 9.4872099783461632 -7.5330478897769781
		-2.3450088241599776 9.4872099783461632 -6.7151508860063904
		0.0012755038174473742 9.7903025732025348 -6.6887671405913585
		2.2599439310042055 9.4872099783461632 -6.7151508860063904
		2.482478144210198 9.4872099783461632 -7.5330478897769781
		2.2599439310042055 9.4872099783461632 -8.3641353403320409
		0.0012755038174475316 9.7903025732025348 -8.364138192178121
		-2.3450088241599776 9.4872099783461632 -8.3641353403320409
		;
createNode transform -n "R_Cav_ctrl_G" -p "Chest_ctrl";
	rename -uid "5C89E14C-4097-140C-DD1A-F0B0A81CB745";
	setAttr ".t" -type "double3" -1.8426364660263057 16.190120697021484 -1.1032841307212493e-15 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0.92131823301315308 8.0950603485107422 0.044531330466270114 ;
	setAttr ".rpt" -type "double3" 0 -16.190120697021484 -0.089062660932539256 ;
	setAttr ".sp" -type "double3" 0.92131823301315308 8.0950603485107422 -0.044531330466270114 ;
	setAttr ".spt" -type "double3" 0 0 0.089062660932540227 ;
createNode transform -n "R_Cav_ctrl" -p "R_Cav_ctrl_G";
	rename -uid "6967529B-410E-31A1-55C9-E9BDDDC970AE";
	setAttr ".rp" -type "double3" 0.92131823301315308 8.0950603485107422 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 0.92131823301315308 8.0950603485107422 -0.044531330466270447 ;
createNode nurbsCurve -n "R_Cav_ctrlShape" -p "R_Cav_ctrl";
	rename -uid "B700C8D9-4385-0D38-A66C-6AA432994CEB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.92131823301315308 7.3114487236195176 -0.82814295535749505
		0.92131823301315319 8.0950603485107422 -1.1527255180206581
		0.92131823301315308 8.8786719734019659 -0.82814295535749483
		0.92131823301315308 9.2032545360651312 -0.044531330466270502
		0.92131823301315308 8.8786719734019659 0.73908029442495404
		0.92131823301315297 8.0950603485107422 1.0636628570881179
		0.92131823301315308 7.3114487236195176 0.73908029442495393
		0.92131823301315308 6.986866160956354 -0.044531330466270294
		0.92131823301315308 7.3114487236195176 -0.82814295535749505
		0.92131823301315319 8.0950603485107422 -1.1527255180206581
		0.92131823301315308 8.8786719734019659 -0.82814295535749483
		;
createNode transform -n "R_Shoulder_ctrl_G" -p "R_Cav_ctrl";
	rename -uid "034EB288-4CE3-FC96-328E-FDB4A499CED2";
	setAttr ".t" -type "double3" -1.2352269887924197 0.82805919647217507 -6.9388939039074256e-18 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".rp" -type "double3" 1.5389317274093628 7.6810307502746564 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 1.5389317274093628 7.6810307502746582 -0.044531330466270114 ;
	setAttr ".spt" -type "double3" 0 -1.7763568394002497e-15 0 ;
createNode transform -n "R_Shoulder_ctrl" -p "R_Shoulder_ctrl_G";
	rename -uid "AC7BE274-40BA-477B-AA90-21A31BD29B2D";
	setAttr ".rp" -type "double3" 1.5389317274093628 7.6810307502746582 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 1.5389317274093628 7.6810307502746582 -0.044531330466270447 ;
createNode nurbsCurve -n "R_Shoulder_ctrlShape" -p "R_Shoulder_ctrl";
	rename -uid "434E99CD-406B-DB11-59F5-E087E94A96B7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5389317274093628 6.8974191253834336 -0.82814295535749505
		1.5389317274093628 7.6810307502746582 -1.1527255180206581
		1.5389317274093628 8.4646423751658819 -0.82814295535749483
		1.5389317274093628 8.7892249378290472 -0.044531330466270502
		1.5389317274093628 8.4646423751658819 0.73908029442495404
		1.5389317274093628 7.6810307502746582 1.0636628570881179
		1.5389317274093628 6.8974191253834336 0.73908029442495393
		1.5389317274093628 6.5728365627202701 -0.044531330466270294
		1.5389317274093628 6.8974191253834336 -0.82814295535749505
		1.5389317274093628 7.6810307502746582 -1.1527255180206581
		1.5389317274093628 8.4646423751658819 -0.82814295535749483
		;
createNode transform -n "R_Elbow_ctrl_G" -p "R_Shoulder_ctrl";
	rename -uid "1F926582-42E2-B12C-E044-B1B34A86F6EA";
	setAttr ".t" -type "double3" -4.3970057964324933 3.5527136788005009e-15 -2.7755575615628894e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 3.7374346256256095 7.68103075027466 -0.36368617415428128 ;
	setAttr ".sp" -type "double3" 3.7374346256256104 7.6810307502746582 -0.36368617415428128 ;
	setAttr ".spt" -type "double3" -8.8817841970012484e-16 1.7763568394002513e-15 0 ;
createNode transform -n "R_Elbow_ctrl" -p "R_Elbow_ctrl_G";
	rename -uid "8C0B2166-4D93-71AE-EDC3-9FB74D9B3624";
	setAttr ".rp" -type "double3" 3.7374346256256104 7.6810307502746582 -0.36368617415428162 ;
	setAttr ".sp" -type "double3" 3.7374346256256104 7.6810307502746582 -0.36368617415428162 ;
createNode nurbsCurve -n "R_Elbow_ctrlShape" -p "R_Elbow_ctrl";
	rename -uid "3E4307CF-4D50-17DB-E0ED-15A7A28A7DF9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.7374346256256104 6.8974191253834336 -1.1472977990455062
		3.7374346256256104 7.6810307502746582 -1.4718803617086693
		3.7374346256256104 8.4646423751658819 -1.147297799045506
		3.7374346256256104 8.7892249378290472 -0.36368617415428167
		3.7374346256256104 8.4646423751658819 0.41992545073694287
		3.7374346256256104 7.6810307502746582 0.74450801340010675
		3.7374346256256104 6.8974191253834336 0.41992545073694276
		3.7374346256256104 6.5728365627202701 -0.36368617415428145
		3.7374346256256104 6.8974191253834336 -1.1472977990455062
		3.7374346256256104 7.6810307502746582 -1.4718803617086693
		3.7374346256256104 8.4646423751658819 -1.147297799045506
		;
createNode transform -n "R_Hand_ctrl_G" -p "R_Elbow_ctrl";
	rename -uid "B0FA6299-4233-1A1C-FB30-4BB72DAF6291";
	setAttr ".t" -type "double3" -2.8235421180725089 -3.5527136788005009e-15 -1.6653345369377348e-16 ;
	setAttr ".rp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270114 ;
createNode transform -n "R_Hand_ctrl" -p "R_Hand_ctrl_G";
	rename -uid "AA428E21-467F-6C7A-238D-2A8AC5F14A90";
	setAttr ".rp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270447 ;
createNode nurbsCurve -n "R_Hand_ctrlShape" -p "R_Hand_ctrl";
	rename -uid "DFD1A252-4BAE-1626-FC34-6DA07EFACB6C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1492056846618652 6.8974191253834336 -0.82814295535749505
		5.1492056846618652 7.6810307502746582 -1.1527255180206581
		5.1492056846618652 8.4646423751658819 -0.82814295535749483
		5.1492056846618652 8.7892249378290472 -0.044531330466270502
		5.1492056846618652 8.4646423751658819 0.73908029442495404
		5.1492056846618652 7.6810307502746582 1.0636628570881179
		5.1492056846618652 6.8974191253834336 0.73908029442495393
		5.1492056846618652 6.5728365627202701 -0.044531330466270294
		5.1492056846618652 6.8974191253834336 -0.82814295535749505
		5.1492056846618652 7.6810307502746582 -1.1527255180206581
		5.1492056846618652 8.4646423751658819 -0.82814295535749483
		;
createNode transform -n "R_Mid1_ctrl_G" -p "R_Hand_ctrl";
	rename -uid "7594BCB4-4D68-A339-5B6A-6A976687FA6D";
	setAttr ".t" -type "double3" -1.3862028121948224 -0.30183982849120916 -9.7144514654701e-17 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".rp" -type "double3" 5.8423070907592773 7.8319506645202619 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 5.8423070907592773 7.8319506645202637 -0.044531330466270114 ;
	setAttr ".spt" -type "double3" 0 -1.7763568394002497e-15 0 ;
createNode transform -n "R_Mid1_ctrl" -p "R_Mid1_ctrl_G";
	rename -uid "36BE6F9E-4924-3603-2224-7387FC11C1C9";
	setAttr ".rp" -type "double3" 5.8423070907592773 7.8319506645202637 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 5.8423070907592773 7.8319506645202637 -0.044531330466270447 ;
createNode nurbsCurve -n "R_Mid1_ctrlShape" -p "R_Mid1_ctrl";
	rename -uid "54D70804-44CE-008E-57E5-6480F5C6B15E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.1356480451197415 7.101166946502488 0.26675926187788551
		5.8426781283042848 7.0937682551259069 0.34979392052251612
		5.5395219980619723 7.0863695637493489 0.26675926187788546
		5.4883433536880135 7.0142949951914986 -0.044531330466270419
		5.5395219980619723 7.0863695637493489 -0.35582192159977205
		5.8426781283042848 7.0937682551259069 -0.43885658266571065
		6.1356480451197415 7.101166946502488 -0.35582192159977205
		6.2071991163474181 7.0352216545686019 -0.04453133046627053
		6.1356480451197415 7.101166946502488 0.26675926187788551
		5.8426781283042848 7.0937682551259069 0.34979392052251612
		5.5395219980619723 7.0863695637493489 0.26675926187788546
		;
createNode transform -n "basemesh_Rigging:R_Mid2_ctrl_G" -p "R_Mid1_ctrl";
	rename -uid "F9648809-4893-04FE-3695-5C86FB0F1C3F";
	setAttr ".t" -type "double3" -1.032130241394043 -1.7763568394002505e-15 -8.3266726846886938e-17 ;
	setAttr ".rp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270114 ;
createNode transform -n "basemesh_Rigging:R_Mid2_ctrl" -p "basemesh_Rigging:R_Mid2_ctrl_G";
	rename -uid "5884B334-482C-8CB6-1B32-7DA6A1258EE1";
	setAttr ".rp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270454 ;
	setAttr ".sp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270454 ;
createNode nurbsCurve -n "basemesh_Rigging:R_Mid2_ctrlShape" -p "basemesh_Rigging:R_Mid2_ctrl";
	rename -uid "93BF9EA8-4DAD-EBE2-D78C-7790A2B87DC3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.362436256768409 7.2248405743535482 -0.36787910524767015
		6.1283463691712132 7.3042988714668891 -0.50181413892528681
		5.8149135015967861 7.3837571685802459 -0.36787910524766992
		5.6850853569539703 7.4166698728876597 -0.044531330466270495
		5.8149135015967861 7.3837571685802459 0.27881644431512942
		6.1283463691712132 7.3042988714668891 0.4127514779927462
		6.362436256768409 7.2248405743535482 0.27881644431512942
		6.3773999279737295 7.1919278700461273 -0.044531330466270336
		6.362436256768409 7.2248405743535482 -0.36787910524767015
		6.1283463691712132 7.3042988714668891 -0.50181413892528681
		5.8149135015967861 7.3837571685802459 -0.36787910524766992
		;
createNode transform -n "R_Thumb1_ctrl_G" -p "R_Hand_ctrl";
	rename -uid "964E9DCE-4693-D397-3B69-6CAC227204FB";
	setAttr ".t" -type "double3" 10.593945061907048 6.2097392480589111 7.7717049273426015 ;
	setAttr ".r" -type "double3" -128.86359709730075 73.853920409620187 -58.945160182558006 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 5.6313519477844229 7.5338101387023908 0.62254887819290183 ;
	setAttr ".rpt" -type "double3" -11.558237588152165 -5.9152980249143763 -7.7717049273426007 ;
	setAttr ".sp" -type "double3" 5.6313519477844238 7.5338101387023926 0.62254887819290194 ;
	setAttr ".spt" -type "double3" -8.8817841970012504e-16 -1.7763568394002497e-15 -1.110223024625156e-16 ;
createNode transform -n "R_Thumb1_ctrl" -p "R_Thumb1_ctrl_G";
	rename -uid "D95C103B-48E7-5CD9-F12F-9497A5374552";
	setAttr ".rp" -type "double3" 5.6313519477844229 7.5338101387023944 0.62254887819290161 ;
	setAttr ".sp" -type "double3" 5.6313519477844229 7.5338101387023944 0.62254887819290161 ;
createNode nurbsCurve -n "R_Thumb1_ctrlShape" -p "R_Thumb1_ctrl";
	rename -uid "7B9009A3-41C1-BCFD-CB49-D48D281E3B8C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1478789695383247 6.9246346940384917 0.59534663182529035
		5.3596158036433552 6.8040912591525302 0.55411726152755725
		5.5713526377483795 6.8047034542765132 0.59534663182529046
		5.6590569060886224 6.7798648812457074 0.73160004694774861
		5.5713526377483795 6.8047034542765132 0.86944621947700473
		5.3596158036433552 6.8040912591525302 0.89698523104986305
		5.1478789695383247 6.9246346940384917 0.86944621947700462
		5.0601747011980809 6.9494732670693065 0.73160004694774849
		5.1478789695383247 6.9246346940384917 0.59534663182529035
		5.3596158036433552 6.8040912591525302 0.55411726152755725
		5.5713526377483795 6.8047034542765132 0.59534663182529046
		;
createNode transform -n "R_Thumb2_ctrl_G" -p "R_Thumb1_ctrl";
	rename -uid "A9A63063-430E-F425-ABB3-91A30969844A";
	setAttr ".t" -type "double3" -1.5237614682897682 1.8467624599561985 -2.3255893092510043 ;
	setAttr ".r" -type "double3" 0.063140109824871754 -21.708906094421955 -16.059975485725591 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 5.7068643569946316 7.3910541534423864 0.94461065530776966 ;
	setAttr ".rpt" -type "double3" 1.0940494439034012 -1.6587571159467633 2.051489096878107 ;
	setAttr ".sp" -type "double3" 5.7068643569946289 7.3910541534423828 0.94461065530777 ;
	setAttr ".spt" -type "double3" 2.6645352591003781e-15 3.5527136788005041e-15 -3.3306690738754691e-16 ;
createNode transform -n "R_Thumb2_ctrl" -p "R_Thumb2_ctrl_G";
	rename -uid "90AF7E77-44C3-E6D0-5DD3-099B87F121AA";
	setAttr ".rp" -type "double3" 5.7068643569946289 7.391054153442381 0.9446106553077751 ;
	setAttr ".sp" -type "double3" 5.7068643569946289 7.391054153442381 0.9446106553077751 ;
createNode nurbsCurve -n "R_Thumb2_ctrlShape" -p "R_Thumb2_ctrl";
	rename -uid "823075F0-473B-3296-1005-2BBE3E25604A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1225739404539841 7.1846698788455763 0.85999419672153821
		5.3344022893340979 6.9959117837561102 0.83761565871459154
		5.5087185454456842 6.9553966299708296 0.85999419672153821
		5.5886917116580666 6.9079125853841949 0.99864487346447106
		5.5087185454456842 6.9553966299708296 1.1371115401961116
		5.3344022893340979 6.9959117837561102 1.1582221479714876
		5.1225739404539841 7.1846698788455763 1.1371115401961116
		5.0426007742416052 7.2321539234322074 0.99864487346447106
		5.1225739404539841 7.1846698788455763 0.85999419672153821
		5.3344022893340979 6.9959117837561102 0.83761565871459154
		5.5087185454456842 6.9553966299708296 0.85999419672153821
		;
createNode transform -n "L_Cav_ctrl_G" -p "Chest_ctrl";
	rename -uid "BC93FEF5-452A-C1D6-D862-12BB2B631010";
	setAttr ".rp" -type "double3" 0.92131823301315308 8.0950603485107422 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 0.92131823301315308 8.0950603485107422 -0.044531330466270114 ;
createNode transform -n "L_Cav_ctrl" -p "L_Cav_ctrl_G";
	rename -uid "BE0555C1-4ED3-09C4-0E3A-16B9C3BFD179";
	setAttr ".rp" -type "double3" 0.92131823301315308 8.0950603485107422 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 0.92131823301315308 8.0950603485107422 -0.044531330466270447 ;
createNode nurbsCurve -n "L_Cav_ctrlShape" -p "L_Cav_ctrl";
	rename -uid "5409EE3B-4837-EE65-C7B3-C9A0CA37E349";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.92131823301315308 7.3114487236195176 -0.82814295535749505
		0.92131823301315319 8.0950603485107422 -1.1527255180206581
		0.92131823301315308 8.8786719734019659 -0.82814295535749483
		0.92131823301315308 9.2032545360651312 -0.044531330466270502
		0.92131823301315308 8.8786719734019659 0.73908029442495404
		0.92131823301315297 8.0950603485107422 1.0636628570881179
		0.92131823301315308 7.3114487236195176 0.73908029442495393
		0.92131823301315308 6.986866160956354 -0.044531330466270294
		0.92131823301315308 7.3114487236195176 -0.82814295535749505
		0.92131823301315319 8.0950603485107422 -1.1527255180206581
		0.92131823301315308 8.8786719734019659 -0.82814295535749483
		;
createNode transform -n "L_Shoulder_ctrl_G" -p "L_Cav_ctrl";
	rename -uid "E169AD64-4A72-75DA-CFA7-43874876CA94";
	setAttr ".rp" -type "double3" 1.5389317274093628 7.6810307502746582 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 1.5389317274093628 7.6810307502746582 -0.044531330466270114 ;
createNode transform -n "L_Shoulder_ctrl" -p "L_Shoulder_ctrl_G";
	rename -uid "1EAB4C07-4FE7-9AA9-7DF2-018DFBC30980";
	setAttr ".rp" -type "double3" 1.5389317274093628 7.6810307502746582 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 1.5389317274093628 7.6810307502746582 -0.044531330466270447 ;
createNode nurbsCurve -n "L_Shoulder_ctrlShape" -p "L_Shoulder_ctrl";
	rename -uid "AD6FD8D6-4670-DF5D-AF0A-1AB2113F0DBF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.5389317274093628 6.8974191253834336 -0.82814295535749505
		1.5389317274093628 7.6810307502746582 -1.1527255180206581
		1.5389317274093628 8.4646423751658819 -0.82814295535749483
		1.5389317274093628 8.7892249378290472 -0.044531330466270502
		1.5389317274093628 8.4646423751658819 0.73908029442495404
		1.5389317274093628 7.6810307502746582 1.0636628570881179
		1.5389317274093628 6.8974191253834336 0.73908029442495393
		1.5389317274093628 6.5728365627202701 -0.044531330466270294
		1.5389317274093628 6.8974191253834336 -0.82814295535749505
		1.5389317274093628 7.6810307502746582 -1.1527255180206581
		1.5389317274093628 8.4646423751658819 -0.82814295535749483
		;
createNode transform -n "L_Elbow_ctrl_G" -p "L_Shoulder_ctrl";
	rename -uid "E59EC784-4BB4-2CB6-B693-2AA0E420E1A5";
	setAttr ".rp" -type "double3" 3.7374346256256104 7.6810307502746582 -0.36368617415428128 ;
	setAttr ".sp" -type "double3" 3.7374346256256104 7.6810307502746582 -0.36368617415428128 ;
createNode transform -n "L_Elbow_ctrl" -p "L_Elbow_ctrl_G";
	rename -uid "C351A6E8-4884-7D89-C943-54B017918180";
	setAttr ".rp" -type "double3" 3.7374346256256104 7.6810307502746582 -0.36368617415428162 ;
	setAttr ".sp" -type "double3" 3.7374346256256104 7.6810307502746582 -0.36368617415428162 ;
createNode nurbsCurve -n "L_Elbow_ctrlShape" -p "L_Elbow_ctrl";
	rename -uid "2B3FA93A-4C9D-18A5-B201-C598640E91D4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.7374346256256104 6.8974191253834336 -1.1472977990455062
		3.7374346256256104 7.6810307502746582 -1.4718803617086693
		3.7374346256256104 8.4646423751658819 -1.147297799045506
		3.7374346256256104 8.7892249378290472 -0.36368617415428167
		3.7374346256256104 8.4646423751658819 0.41992545073694287
		3.7374346256256104 7.6810307502746582 0.74450801340010675
		3.7374346256256104 6.8974191253834336 0.41992545073694276
		3.7374346256256104 6.5728365627202701 -0.36368617415428145
		3.7374346256256104 6.8974191253834336 -1.1472977990455062
		3.7374346256256104 7.6810307502746582 -1.4718803617086693
		3.7374346256256104 8.4646423751658819 -1.147297799045506
		;
createNode transform -n "L_Hand_ctrl_G" -p "L_Elbow_ctrl";
	rename -uid "09CDB61C-4C8E-01DF-2D1E-D69886F4558F";
	setAttr ".rp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270114 ;
createNode transform -n "L_Hand_ctrl" -p "L_Hand_ctrl_G";
	rename -uid "9E405082-4E32-A1EB-1E1B-ABAEBF65F4E3";
	setAttr ".rp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 5.1492056846618652 7.6810307502746582 -0.044531330466270447 ;
createNode nurbsCurve -n "L_Hand_ctrlShape" -p "L_Hand_ctrl";
	rename -uid "66CF12BC-40B9-38F0-C834-D1B0222C9F75";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1492056846618652 6.8974191253834336 -0.82814295535749505
		5.1492056846618652 7.6810307502746582 -1.1527255180206581
		5.1492056846618652 8.4646423751658819 -0.82814295535749483
		5.1492056846618652 8.7892249378290472 -0.044531330466270502
		5.1492056846618652 8.4646423751658819 0.73908029442495404
		5.1492056846618652 7.6810307502746582 1.0636628570881179
		5.1492056846618652 6.8974191253834336 0.73908029442495393
		5.1492056846618652 6.5728365627202701 -0.044531330466270294
		5.1492056846618652 6.8974191253834336 -0.82814295535749505
		5.1492056846618652 7.6810307502746582 -1.1527255180206581
		5.1492056846618652 8.4646423751658819 -0.82814295535749483
		;
createNode transform -n "L_Mid1_ctrl_G" -p "L_Hand_ctrl";
	rename -uid "0A37F7AE-4BDA-ED67-1D6C-3DAA5F668200";
	setAttr ".rp" -type "double3" 5.8423070907592773 7.8319506645202637 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 5.8423070907592773 7.8319506645202637 -0.044531330466270114 ;
createNode transform -n "L_Mid1_ctrl" -p "L_Mid1_ctrl_G";
	rename -uid "89480A0D-42E3-D710-FB3A-8A81B984D8C6";
	setAttr ".rp" -type "double3" 5.8423070907592773 7.8319506645202637 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 5.8423070907592773 7.8319506645202637 -0.044531330466270447 ;
createNode nurbsCurve -n "L_Mid1_ctrlShape" -p "L_Mid1_ctrl";
	rename -uid "DA787913-41FC-BEDE-AB9D-C59337826CFF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.1356480451197397 8.5627343825380393 -0.35582192281042629
		5.842678128304283 8.5701330739146204 -0.4388565814550569
		5.5395219980619705 8.5775317652911784 -0.35582192281042624
		5.4883433536880117 8.6496063338490288 -0.04453133046627037
		5.5395219980619705 8.5775317652911784 0.26675926066723127
		5.842678128304283 8.5701330739146204 0.34979392173316987
		6.1356480451197397 8.5627343825380393 0.26675926066723127
		6.2071991163474163 8.6286796744719254 -0.044531330466270266
		6.1356480451197397 8.5627343825380393 -0.35582192281042629
		5.842678128304283 8.5701330739146204 -0.4388565814550569
		5.5395219980619705 8.5775317652911784 -0.35582192281042624
		;
createNode transform -n "L_Mid2_ctrl_G" -p "L_Mid1_ctrl";
	rename -uid "71120646-441B-4BC5-E4A8-F1B8F51C764F";
	setAttr ".rp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270114 ;
	setAttr ".sp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270114 ;
createNode transform -n "L_Mid2_ctrl" -p "L_Mid2_ctrl_G";
	rename -uid "928CB24E-41AE-600D-D340-B897DBDF0089";
	setAttr ".rp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270447 ;
	setAttr ".sp" -type "double3" 6.3583722114562988 7.8319506645202637 -0.044531330466270447 ;
createNode nurbsCurve -n "L_Mid2_ctrlShape" -p "L_Mid2_ctrl";
	rename -uid "A88109E8-4C02-C5EA-89F1-F0B360C78EAC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.3543081661441887 8.4390607546869791 -0.36787910524767004
		6.5883980537413844 8.3596024575736383 -0.50181413892528681
		6.9018309213158116 8.2801441604602815 -0.36787910524766981
		7.0316590659586273 8.2472314561528677 -0.044531330466270357
		6.9018309213158116 8.2801441604602815 0.27881644431512953
		6.5883980537413844 8.3596024575736383 0.41275147799274631
		6.3543081661441887 8.4390607546869791 0.27881644431512953
		6.3393444949388682 8.4719734589944 -0.044531330466270259
		6.3543081661441887 8.4390607546869791 -0.36787910524767004
		6.5883980537413844 8.3596024575736383 -0.50181413892528681
		6.9018309213158116 8.2801441604602815 -0.36787910524766981
		;
createNode transform -n "L_Thumb1_ctrl_G" -p "L_Hand_ctrl";
	rename -uid "D0540605-4CB9-CFAD-B1AB-7AAF39730FB2";
	setAttr ".r" -type "double3" 128.86359709730087 -73.853920409620244 -58.945160182558183 ;
	setAttr ".rp" -type "double3" 5.6313519477844238 7.5338101387023926 0.62254887819290194 ;
	setAttr ".sp" -type "double3" 5.6313519477844238 7.5338101387023926 0.62254887819290194 ;
createNode transform -n "L_Thumb1_ctrl" -p "L_Thumb1_ctrl_G";
	rename -uid "BA315C55-4745-84DC-0B63-189AE29CB7A6";
	setAttr ".rp" -type "double3" 5.6313519477844247 7.5338101387023944 0.62254887819290161 ;
	setAttr ".sp" -type "double3" 5.6313519477844247 7.5338101387023944 0.62254887819290161 ;
createNode nurbsCurve -n "L_Thumb1_ctrlShape" -p "L_Thumb1_ctrl";
	rename -uid "6DC5A10B-4067-7B1E-275A-FF8515EFEAC2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.1148249260305247 8.142985583366297 0.59534663182529057
		5.9030880919254942 8.2635290182522585 0.55411726152755747
		5.6913512578204699 8.2629168231282755 0.59534663182529057
		5.603646989480227 8.2877553961590813 0.73160004694774872
		5.6913512578204699 8.2629168231282755 0.86944621947700484
		5.9030880919254942 8.2635290182522585 0.89698523104986327
		6.1148249260305247 8.142985583366297 0.86944621947700484
		6.2025291943707686 8.1181470103354822 0.73160004694774872
		6.1148249260305247 8.142985583366297 0.59534663182529057
		5.9030880919254942 8.2635290182522585 0.55411726152755747
		5.6913512578204699 8.2629168231282755 0.59534663182529057
		;
createNode transform -n "L_Thumb2_ctrl_G" -p "L_Thumb1_ctrl";
	rename -uid "02E28470-4555-9C60-8CF4-A2B679C112FC";
	setAttr ".t" -type "double3" -1.4874715127211591 1.9475831169319093 1.9113828080895274 ;
	setAttr ".r" -type "double3" -0.063140109824598681 21.708906094421849 -16.059975485725552 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 5.7068643569946289 7.3910541534423828 0.94461065530777022 ;
	setAttr ".rpt" -type "double3" 1.7661587186871106 -1.850076490421326 -2.1854830204624265 ;
	setAttr ".sp" -type "double3" 5.7068643569946289 7.3910541534423828 0.94461065530777 ;
	setAttr ".spt" -type "double3" 0 0 2.2204460492503141e-16 ;
createNode transform -n "L_Thumb2_ctrl" -p "L_Thumb2_ctrl_G";
	rename -uid "C6F17953-4508-FD69-D18D-7CA097A458F3";
	setAttr ".rp" -type "double3" 5.7068643569946289 7.391054153442381 0.94461065530776978 ;
	setAttr ".sp" -type "double3" 5.7068643569946289 7.391054153442381 0.94461065530776978 ;
createNode nurbsCurve -n "L_Thumb2_ctrlShape" -p "L_Thumb2_ctrl";
	rename -uid "A8CDA08E-400E-9C80-BD82-B3A027ADE1AF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.2911547735352737 7.5974384280391858 0.85999419672153832
		6.0793264246551599 7.7861965231286518 0.83761565871459165
		5.9050101685435736 7.8267116769139324 0.85999419672153832
		5.8250370023311913 7.8741957215005671 0.99864487346447117
		5.9050101685435736 7.8267116769139324 1.1371115401961118
		6.0793264246551599 7.7861965231286518 1.1582221479714878
		6.2911547735352737 7.5974384280391858 1.1371115401961118
		6.3711279397476526 7.5499543834525547 0.99864487346447117
		6.2911547735352737 7.5974384280391858 0.85999419672153832
		6.0793264246551599 7.7861965231286518 0.83761565871459165
		5.9050101685435736 7.8267116769139324 0.85999419672153832
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BAF28E2F-4F63-73F2-D911-D6B1F19E1AD1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "032C3C4B-4FA5-A039-A7FA-1BAE412D70F0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "00438DAC-43D2-3966-D40F-6AB8C0677FCD";
createNode displayLayerManager -n "layerManager";
	rename -uid "1F6AF372-4E60-F5EA-F2F7-A3AEAE874DFC";
	setAttr ".cdl" 12;
	setAttr -s 13 ".dli[1:12]"  12 10 1 5 2 6 3 11 
		9 21 7 8;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "1662E0CE-4A56-93EA-DB35-28AA9D96E2AA";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "112E1513-4421-A1B7-069D-D99B1865BEC6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "857F4D00-4C5D-48E2-E26B-028CE52DC854";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7CBDB656-4579-744E-4C70-F1826EB6DD39";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1111\n            -height 673\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1111\\n    -height 673\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1111\\n    -height 673\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E693C951-4394-A839-B38F-FBAE20BE2845";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyUnite -n "polyUnite3";
	rename -uid "B65FB1E9-4E78-5FFE-F8B3-DABEC4C9F1A5";
createNode lambert -n "lambert2";
	rename -uid "0774A5DA-4035-681E-9E56-8BA47C28A9A9";
	setAttr ".ambc" -type "float3" 0.76774192 0.76774192 0.76774192 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "39311C1C-46C3-ACDB-B124-ECB461999709";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "953FC4F7-401D-B98B-778C-429780CFD0D4";
createNode file -n "Sheild_guardUV1_1";
	rename -uid "68241F1A-4821-B1B5-F990-16BA2F0EACD9";
	setAttr ".ftn" -type "string" "D:/Leoput Files/Sheild guardUV1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "62B5FBD5-4EF9-8217-10BA-92985B0C9A96";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "98B734A7-458F-78F0-3F0D-1493167819FA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2311.5591626330911 -507.68053816860339 ;
	setAttr ".tgi[0].vh" -type "double2" -629.8343798715922 16.904931401801377 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -162.85714721679688;
	setAttr ".tgi[0].ni[0].y" 414.28570556640625;
	setAttr ".tgi[0].ni[0].nvs" 3042;
	setAttr ".tgi[0].ni[1].x" -2049.853271484375;
	setAttr ".tgi[0].ni[1].y" -395.01788330078125;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -2084.28564453125;
	setAttr ".tgi[0].ni[2].y" -45.714286804199219;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -1777.142822265625;
	setAttr ".tgi[0].ni[3].y" -45.714286804199219;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -1526.8173828125;
	setAttr ".tgi[0].ni[4].y" -356.29010009765625;
	setAttr ".tgi[0].ni[4].nvs" 1923;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "368ED51E-4324-2D48-5C43-C6B2907A4299";
	setAttr ".version" -type "string" "5.2.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "A60ABB75-4FBE-2FA4-C754-06A9CF614CE3";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "71B9D599-4EA6-8F2F-14FA-4D81D15A501C";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "60D69141-448A-54FE-A9D2-B5BECEB44487";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode displayLayer -n "Ctrl_layer";
	rename -uid "D2F8861E-4419-BC02-3AF1-669E21F58B41";
	setAttr ".c" 12;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "Model_layer";
	rename -uid "5BC61ED1-4A2C-BA31-A1EA-06A2288D87FF";
	setAttr ".dt" 2;
	setAttr ".c" 6;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode displayLayer -n "Shield_layer";
	rename -uid "8FE75B08-493C-B4E4-ED40-A28AA2FF49A1";
	setAttr ".dt" 2;
	setAttr ".c" 21;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode displayLayer -n "Joint_layer";
	rename -uid "B3AD95D6-4C63-A7B1-3A7F-D88F4ED2B1D0";
	setAttr ".dt" 2;
	setAttr ".c" 22;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 4;
createNode skinCluster -n "skinCluster1";
	rename -uid "F468A84F-4BC7-BBF5-5E74-86BA13627E28";
	setAttr -s 588 ".wl";
	setAttr ".wl[0:427].w"
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1
		1 1 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		2 6 0.20000000298023224 7 0.79999999701976776
		2 6 0.20000000298023224 7 0.79999999701976776
		2 6 0.20000000298023224 7 0.79999999701976776
		2 6 0.20000000298023224 7 0.79999999701976776
		2 6 0.20000000298023224 7 0.79999999701976776
		2 6 0.20000000298023224 7 0.79999999701976776
		2 6 0.20000000298023224 7 0.79999999701976776
		2 6 0.20000000298023224 7 0.79999999701976776
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		2 21 0.69999998807907104 23 0.30000001192092896
		2 21 0.69999998807907104 23 0.30000001192092896
		2 21 0.69999998807907104 23 0.30000001192092896
		2 21 0.69999998807907104 23 0.30000001192092896
		2 21 0.69999998807907104 23 0.30000001192092896
		2 21 0.69999998807907104 23 0.30000001192092896
		2 21 0.69999998807907104 23 0.30000001192092896
		2 21 0.69999998807907104 23 0.30000001192092896
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		2 9 0.30000001192092896 11 0.69999998807907104
		2 9 0.30000001192092896 11 0.69999998807907104
		2 9 0.30000001192092896 11 0.69999998807907104
		2 9 0.30000001192092896 11 0.69999998807907104
		2 9 0.30000001192092896 11 0.69999998807907104
		2 9 0.30000001192092896 11 0.69999998807907104
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 8 0.30000001192092896 10 0.69999998807907104
		2 8 0.30000001192092896 10 0.69999998807907104
		2 8 0.30000001192092896 10 0.69999998807907104
		2 8 0.30000001192092896 10 0.69999998807907104
		2 8 0.30000001192092896 10 0.69999998807907104
		2 8 0.30000001192092896 10 0.69999998807907104
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		1 1 1
		1 2 1
		1 2 1
		1 1 1
		1 1 1
		1 21 1
		1 21 1
		1 21 1
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		1 0 1
		1 0 1
		1 0 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		2 14 0.69999998807907104 15 0.30000001192092896
		2 14 0.69999998807907104 15 0.30000001192092896
		2 14 0.69999998807907104 15 0.30000001192092896
		2 14 0.69999998807907104 15 0.30000001192092896
		2 14 0.69999998807907104 15 0.30000001192092896
		2 14 0.69999998807907104 15 0.30000001192092896
		2 14 0.69999998807907104 15 0.30000001192092896
		2 14 0.69999998807907104 15 0.30000001192092896
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		2 21 0.69999998807907104 22 0.30000001192092896
		2 21 0.69999998807907104 22 0.30000001192092896
		2 21 0.69999998807907104 22 0.30000001192092896
		2 21 0.69999998807907104 22 0.30000001192092896
		2 21 0.69999998807907104 22 0.30000001192092896
		2 21 0.69999998807907104 22 0.30000001192092896
		2 21 0.69999998807907104 22 0.30000001192092896
		2 21 0.69999998807907104 22 0.30000001192092896
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		2 17 0.30000001192092896 19 0.69999998807907104
		2 17 0.30000001192092896 19 0.69999998807907104
		2 17 0.30000001192092896 19 0.69999998807907104
		2 17 0.30000001192092896 19 0.69999998807907104
		2 17 0.30000001192092896 19 0.69999998807907104
		2 17 0.30000001192092896 19 0.69999998807907104
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 16 0.5 18 0.5
		2 16 0.5 18 0.5
		2 16 0.5 18 0.5
		2 16 0.5 18 0.5
		2 16 0.5 18 0.5
		2 16 0.5 18 0.5
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr ".wl[428:587].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		2 25 0.5 27 0.5
		2 25 0.5 27 0.5
		1 27 1
		1 27 1
		2 25 0.5 27 0.5
		1 27 1
		2 25 0.5 27 0.5
		1 27 1
		2 25 0.5 27 0.5
		1 27 1
		2 25 0.5 27 0.5
		1 27 1
		2 25 0.5 27 0.5
		1 27 1
		2 25 0.5 27 0.5
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		2 24 0.5 26 0.5
		2 24 0.5 26 0.5
		1 26 1
		1 26 1
		2 24 0.5 26 0.5
		1 26 1
		2 24 0.5 26 0.5
		1 26 1
		2 24 0.5 26 0.5
		1 26 1
		2 24 0.5 26 0.5
		1 26 1
		2 24 0.5 26 0.5
		1 26 1
		2 24 0.5 26 0.5
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		2 23 0.5 25 0.5
		2 23 0.5 25 0.5
		2 23 0.5 25 0.5
		2 23 0.5 25 0.5
		2 23 0.5 25 0.5
		2 23 0.5 25 0.5
		2 23 0.5 25 0.5
		2 23 0.5 25 0.5
		2 22 0.5 24 0.5
		2 22 0.5 24 0.5
		2 22 0.5 24 0.5
		2 22 0.5 24 0.5
		2 22 0.5 24 0.5
		2 22 0.5 24 0.5
		2 22 0.5 24 0.5
		2 22 0.5 24 0.5;
	setAttr -s 28 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.0830574035644531 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -7.377747828354452 -0 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -8.6011078722556462 0.20939927728960797 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -10.888577484966076 -0 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 0.92131799999999997 8.0950600000000001 -0.044531300000000995 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 1.5389299999999999 7.6810299999999998 -0.044531300000000947 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 3.7374299999999998 7.6810299999999998 -0.36368600000000095 1;
	setAttr ".pm[7]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 5.1492100000000001 7.6810299999999998 -0.04453130000000094 1;
	setAttr ".pm[8]" -type "matrix" 0.14345361176100935 -0.9233612861099183 -0.35612497326943998 -0
		 0.2382301115817918 -0.31704655157988548 0.91800212312773533 0 -0.96055581576941618 -0.21653041228598988 0.17449098929976478 0
		 -0.38894983779422465 -2.6764013061388008 -9.0301471343594031 1;
	setAttr ".pm[9]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 5.8423100000000003 7.83195 -0.044531300000000953 1;
	setAttr ".pm[10]" -type "matrix" 0.49712976670879794 -0.84743462014432502 -0.18632380318386629 -0
		 -0.045377191832223863 -0.23983708293608635 0.96975207352711057 0 -0.86648883750079442 -0.47363777111792171 -0.15768435641169207 -0
		 3.9909299614117923 -2.6161394158686107 -8.0818595448860258 1;
	setAttr ".pm[11]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 6.3583699999999999 7.83195 -0.04453130000000096 1;
	setAttr ".pm[12]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.92131823301315308 -8.0950603485107422 0.044531329036186174 1;
	setAttr ".pm[13]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.5389316864773397 -7.6810305489464605 0.044531329036186174 1;
	setAttr ".pm[14]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -5.1492056846618652 -7.6810305489464605 0.044531329036186174 1;
	setAttr ".pm[15]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3.7374346256256104 -7.6810305489464605 0.36368617048458418 1;
	setAttr ".pm[16]" -type "matrix" 0.14345361176100876 0.035188079120715657 -0.9890312737019572 -0
		 -0.23823011158179189 0.97120873860140233 4.163336342344336e-16 0 0.96055581576941618 0.23561703069189899 0.14770626134150164 -0
		 0.3889497011970614 -7.6617416284243962 5.4776287440577347 1;
	setAttr ".pm[17]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -5.8423070907592773 -7.831950516977046 0.044531329036186174 1;
	setAttr ".pm[18]" -type "matrix" 0.49712976670879599 -0.10052481327005064 -0.86183336960753576 -0
		 0.045377191832222115 0.99491895417123966 -0.089873161134056676 0 0.86648883750079519 0.005571045487864139 0.4991653613169611 -0
		 -3.9909320440514171 -6.7850809052409602 5.1111066274674828 1;
	setAttr ".pm[19]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -6.3583722114562988 -7.831950516977046 0.044531329036186174 1;
	setAttr ".pm[20]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -4.6575722694396973 -0 1;
	setAttr ".pm[21]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -4.0633792877197266 -0 1;
	setAttr ".pm[22]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.91556636819881998 -3.650211076233878 -0 1;
	setAttr ".pm[23]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 0.91556599999999999 3.65021 -4.4702179927156602e-16 1;
	setAttr ".pm[24]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.91556636819881998 -1.6407813874678636 -0.42563251767660037 1;
	setAttr ".pm[25]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 0.91556599999999999 1.6407799999999999 0.42563299999999976 1;
	setAttr ".pm[26]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.91556636819881998 -0.58117227240693792 -0 1;
	setAttr ".pm[27]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 0.91556599999999999 0.58117200000000002 -1.5661891724148727e-17 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 28 ".ma";
	setAttr -s 28 ".dpf[0:27]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4;
	setAttr -s 28 ".lw";
	setAttr -s 28 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 28 ".ifcl";
	setAttr -s 28 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "70F4DF1D-4636-C679-5041-129F20073AF2";
	setAttr -s 30 ".wm";
	setAttr -s 30 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.3627412465958724 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.72031615696858076
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.2946904247899989 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.2233600439011942 -0.20939927728960797 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.2874696127104297 0.20939927728960797 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.92131799999999997 0.71731217164554817
		 -0.044531300000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.61761199999999994 0.41403000000000034
		 -4.8572257327350599e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.1985000000000001 -8.8817841970012523e-16
		 0.31915470000000001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4117800000000003 0
		 -0.31915470000000001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 1.0108381476547366 -1.2889940766537127
		 -1.0287871233010992 0 -0.48214000000000024 0.14721999999999991 -0.66708030000000007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.083249745951220366 -0.13825093717511769 0.5574347459999317 0.81438483662286509 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.69310000000000027
		 -0.15092000000000017 2.0816681711721685e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0.10782334889676892 0.37222725029543607
		 0.28927545443481595 0 -0.35420044009182045 0.045248358776054598 -0.04796606937027903 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.050656143750000111 0.003100059057558285 -0.26137290358009424 0.96390276999722835 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.51605999999999952
		 0 6.9388939039072284e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.92131823301315308 0.71731252015629021
		 -0.044531329036186174 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61761345346418672 -0.41402979956428165
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1985029391482707 0
		 -0.31915484144839801 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4117710590362549 0
		 0.31915484144839801 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 1.010838147654737 -1.2889940766537127
		 -1.0287871233011001 0 0.48214618013340349 -0.14722059579867075 0.66708018112593004 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.58032520010658606 0 0 0.8143848366228652 0.083249745951220089 -0.13825093717511791 0.55743474599993148 0.81438483662286509 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.69310140609741211 0.15091996803058549
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0.10782334889676819 0.37222725029543563
		 0.28927545443481584 0 0.35419961905883141 -0.06010524760685293 -0.027113683510199594 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.58032520010658606 0 0 0.8143848366228652 0.5181234725301479 0.15420592366166813 -0.21105908698679987 0.81438483662286543 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.51606512069702148 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.7051689771561751
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.5941929817199707
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.91556636819881998 -0.41316821148584859
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.91556599999999999
		 -0.41316928771972661 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.0094296887660144
		 0.42563251767660037 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1102230246251565e-16
		 2.00943 -0.42563300000000021 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.0596091150609257
		 -0.42563251767660037 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1102230246251565e-16
		 1.0596079999999999 0.42563299999999982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1611882061733922e-08
		 0 1.4675873026037975 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 30 ".m";
	setAttr -s 30 ".p";
	setAttr -s 30 ".g[0:29]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "CBF6DC76-4BD1-377E-EAFD-6A9F68F4087C";
	setAttr -s 43 ".wl";
	setAttr ".wl[0:42].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.20000000298023224 1 0.79999999701976776
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.20000000298023224 1 0.79999999701976776
		1 0 1
		1 0 1
		1 0 1
		2 0 0.20000000298023224 1 0.79999999701976776
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -4.6575722694396973 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -2.1611882061733922e-08 -4.6575722694396973 -1.4675873026037975 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode skinCluster -n "skinCluster3";
	rename -uid "7505FB5C-4364-0530-63AF-90A818EBCAC9";
	setAttr -s 26 ".wl";
	setAttr ".wl[0:25].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.5389316864773397 -7.6810305489464605 0.044531329036186174 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster4";
	rename -uid "6984D1CA-4679-BBB5-76D2-87926A7CA212";
	setAttr -s 9 ".wl";
	setAttr ".wl[0:8].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.91556636819881998 -1.6407813874678636 -0.42563251767660037 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster5";
	rename -uid "8EB7BF5F-4DC8-C299-D813-ADAC803BF330";
	setAttr -s 9 ".wl";
	setAttr ".wl[0:8].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -4.6575722694396973 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster6";
	rename -uid "CB3807BF-42FD-1475-0DCD-8384EF1A8442";
	setAttr -s 9 ".wl";
	setAttr ".wl[0:8].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 0.91556599999999999 1.6407799999999999 0.42563299999999976 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster7";
	rename -uid "671CFB00-45E0-028E-81A7-CBAAE9AF4A06";
	setAttr -s 18 ".wl";
	setAttr ".wl[0:17].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.5267276114813464 -4.8507089614868164 0.062771402299404144 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode dagPose -n "bindPose2";
	rename -uid "410D9B7D-4203-D3D0-A06F-07AB44DEB0BC";
	setAttr -s 3 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.3627412465958724 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.6575722694396973 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.5267276114813464 4.8507089614868164 -0.062771402299404144 1;
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.3627412465958724 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.7051689771561751
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5267276114813464 0.19313669204711914
		 -0.062771402299404144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr -s 3 ".g[0:2]" yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster8";
	rename -uid "F05D3C20-415A-0BAF-B53A-B0A85EC8CBF7";
	setAttr -s 112 ".wl";
	setAttr ".wl[0:111].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -10.888577484966076 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster9";
	rename -uid "6BFC348F-439F-5370-B692-718E04F215F9";
	setAttr -s 18 ".wl";
	setAttr ".wl[0:17].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 1.5668825281520968 4.8507100000000003 -0.062771400000000602 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode dagPose -n "bindPose3";
	rename -uid "B1B9FC20-4D49-B263-AF04-019C285CD81D";
	setAttr -s 3 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.3627412465958724 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4.6575722694396973 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 -0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -1.5668825281520968 4.8507100000000003 -0.062771400000000005 1;
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.3627412465958724 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.7051689771561751
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5668825281520968 0.19313773056030303
		 -0.062771400000000005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr -s 3 ".g[0:2]" yes yes no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster10";
	rename -uid "D9F350C8-4CB2-57E6-09C4-2F8A619BD517";
	setAttr -s 26 ".wl";
	setAttr ".wl[0:25].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 1.5389299999999999 7.6810299999999998 -0.044531300000000947 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode skinCluster -n "skinCluster11";
	rename -uid "A4B05846-4ED5-09D8-7D1E-E4B50999F74D";
	setAttr -s 48 ".wl";
	setAttr ".wl[0:47].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 3 1
		1 3 1
		2 0 0.011764705181121826 3 0.98823529481887817
		1 3 1
		1 0 1
		1 3 1
		1 3 1
		1 0 1
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		2 2 0.59999999403953552 3 0.40000000596046448
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 0 0.79999999701976776 1 0.20000000298023224
		2 1 0.20000000298023224 2 0.79999999701976776
		2 1 0.20000000298023224 2 0.79999999701976776
		2 1 0.20000000298023224 2 0.79999999701976776
		2 1 0.20000000298023224 2 0.79999999701976776
		2 1 0.20000000298023224 2 0.79999999701976776
		2 1 0.20000000298023224 2 0.79999999701976776
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 0 0.39999997615814209 1 0.60000002384185791
		2 0 0.39999997615814209 1 0.60000002384185791
		2 0 0.39999997615814209 1 0.60000002384185791
		2 0 0.39999997615814209 1 0.60000002384185791
		2 0 0.39999997615814209 1 0.60000002384185791
		2 0 0.39999997615814209 1 0.60000002384185791;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -8.4390783309936523 1.6200447082519531 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -8.4390783309936523 2.7732423086951461 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -8.4390783309936523 4.4963153302993888 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -8.3983704794027076 6.2236108779907227 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode dagPose -n "bindPose4";
	rename -uid "843E0CE0-4C93-4D7B-EDFF-3C9EF9BC9A4F";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.3627412465958724 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.0830574035644531 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.377747828354452 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.6011078722556462 -0.20939927728960797 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.4390783309936523 -1.6200447082519531 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.4390783309936523 -2.7732423086951461 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.4390783309936523 -4.4963153302993888 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.3983704794027076 -6.2236108779907227 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.3627412465958724 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.72031615696858076
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.2946904247899989 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.2233600439011942 -0.20939927728960797 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.16202954126199387
		 -1.4106454309623451 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -1.153197600443193 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -1.7230730216042431 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.040707851590944699
		 -1.7272955476913339 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster12";
	rename -uid "1539B36A-446F-A97C-B21F-2AA87BA27D40";
	setAttr -s 84 ".wl";
	setAttr ".wl[0:83].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 6.0879977814656812 -7.0748219496163749 0.1797660975395976 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
createNode dagPose -n "bindPose5";
	rename -uid "CE704195-4B40-FDE8-5C4F-B796C03BB226";
	setAttr -s 8 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.3627412465958724 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.0830574035644531 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 7.377747828354452 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 -0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -0.92131799999999997 8.0950600000000001 -0.044531300000000003 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -1.5389299999999999 7.6810299999999998 -0.044531300000000003 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -3.7374299999999998 7.6810299999999998 -0.36368600000000001 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 -5.1492100000000001 7.6810299999999998 -0.044531299999999996 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.0879977814656812 7.0748219496163749 -0.1797660975395976 1;
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.3627412465958724 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.72031615696858076
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.2946904247899989 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.92131799999999997 0.71731217164554817
		 -0.044531300000000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.61761199999999994 0.41403000000000034
		 -4.8572257327350599e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.1985000000000001 0
		 0.31915470000000001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4117800000000003 0
		 -0.31915470000000001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.93878778146568109 0.60620805038362491
		 0.13523479753959752 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes yes yes yes yes yes yes no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape3.ws";
connectAttr ":frontShape.msg" "imagePlaneShape3.ltc";
connectAttr "Model_layer.di" "Model_group.do";
connectAttr "skinCluster2.og[0]" "Bell_F_Veil_FShape.i";
connectAttr "skinCluster3.og[0]" "L_Shoulder_pCube_FShape.i";
connectAttr "skinCluster4.og[0]" "L_knee_FShape.i";
connectAttr "skinCluster5.og[0]" "head_belt_FShape.i";
connectAttr "skinCluster6.og[0]" "R_Knee_FShape.i";
connectAttr "skinCluster7.og[0]" "L_Veil_pCube_FShape.i";
connectAttr "skinCluster8.og[0]" "helmet_FShape.i";
connectAttr "skinCluster11.og[0]" "cape_FShape.i";
connectAttr "skinCluster10.og[0]" "R_shoulder_FShape.i";
connectAttr "skinCluster9.og[0]" "R_hip_FShape.i";
connectAttr "skinCluster1.og[0]" "Body_polySurface_FShape.i";
connectAttr "Shield_layer.di" "Shield_pCube_F.do";
connectAttr "skinCluster12.og[0]" "Shield_pCube_FShape.i";
connectAttr "Root_joint_parentConstraint1.ctx" "Root_joint.tx";
connectAttr "Root_joint_parentConstraint1.cty" "Root_joint.ty";
connectAttr "Root_joint_parentConstraint1.ctz" "Root_joint.tz";
connectAttr "Joint_layer.di" "Root_joint.do";
connectAttr "Root_joint_parentConstraint1.crx" "Root_joint.rx";
connectAttr "Root_joint_parentConstraint1.cry" "Root_joint.ry";
connectAttr "Root_joint_parentConstraint1.crz" "Root_joint.rz";
connectAttr "Back1_joint_orientConstraint1.crx" "Back1_joint.rx";
connectAttr "Back1_joint_orientConstraint1.cry" "Back1_joint.ry";
connectAttr "Back1_joint_orientConstraint1.crz" "Back1_joint.rz";
connectAttr "Root_joint.s" "Back1_joint.is";
connectAttr "Back1_joint.s" "Chest_joint.is";
connectAttr "Chest_joint_orientConstraint1.crx" "Chest_joint.rx";
connectAttr "Chest_joint_orientConstraint1.cry" "Chest_joint.ry";
connectAttr "Chest_joint_orientConstraint1.crz" "Chest_joint.rz";
connectAttr "Chest_joint.s" "Neck_joint.is";
connectAttr "Neck_joint_orientConstraint1.crx" "Neck_joint.rx";
connectAttr "Neck_joint_orientConstraint1.cry" "Neck_joint.ry";
connectAttr "Neck_joint_orientConstraint1.crz" "Neck_joint.rz";
connectAttr "Neck_joint.s" "Head1_joint.is";
connectAttr "Head1_joint_orientConstraint1.crx" "Head1_joint.rx";
connectAttr "Head1_joint_orientConstraint1.cry" "Head1_joint.ry";
connectAttr "Head1_joint_orientConstraint1.crz" "Head1_joint.rz";
connectAttr "Head1_joint.s" "Jaw_End_joint.is";
connectAttr "Head1_joint.s" "Head2_End_joint.is";
connectAttr "Head1_joint.ro" "Head1_joint_orientConstraint1.cro";
connectAttr "Head1_joint.pim" "Head1_joint_orientConstraint1.cpim";
connectAttr "Head1_joint.jo" "Head1_joint_orientConstraint1.cjo";
connectAttr "Head1_joint.is" "Head1_joint_orientConstraint1.is";
connectAttr "Head_ctrl1.r" "Head1_joint_orientConstraint1.tg[0].tr";
connectAttr "Head_ctrl1.ro" "Head1_joint_orientConstraint1.tg[0].tro";
connectAttr "Head_ctrl1.pm" "Head1_joint_orientConstraint1.tg[0].tpm";
connectAttr "Head1_joint_orientConstraint1.w0" "Head1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Neck_joint.s" "Cape1_joint.is";
connectAttr "Cape1_joint_orientConstraint1.crx" "Cape1_joint.rx";
connectAttr "Cape1_joint_orientConstraint1.cry" "Cape1_joint.ry";
connectAttr "Cape1_joint_orientConstraint1.crz" "Cape1_joint.rz";
connectAttr "Cape1_joint.s" "Cape2_joint.is";
connectAttr "Cape2_joint_orientConstraint1.crx" "Cape2_joint.rx";
connectAttr "Cape2_joint_orientConstraint1.cry" "Cape2_joint.ry";
connectAttr "Cape2_joint_orientConstraint1.crz" "Cape2_joint.rz";
connectAttr "Cape2_joint.s" "Cape3_joint.is";
connectAttr "Cape3_joint_orientConstraint1.crx" "Cape3_joint.rx";
connectAttr "Cape3_joint_orientConstraint1.cry" "Cape3_joint.ry";
connectAttr "Cape3_joint_orientConstraint1.crz" "Cape3_joint.rz";
connectAttr "Cape3_joint.s" "Cape4_joint.is";
connectAttr "Cape4_joint_orientConstraint1.crx" "Cape4_joint.rx";
connectAttr "Cape4_joint_orientConstraint1.cry" "Cape4_joint.ry";
connectAttr "Cape4_joint_orientConstraint1.crz" "Cape4_joint.rz";
connectAttr "Cape4_joint.s" "Cape5_End_joint.is";
connectAttr "Cape4_joint.ro" "Cape4_joint_orientConstraint1.cro";
connectAttr "Cape4_joint.pim" "Cape4_joint_orientConstraint1.cpim";
connectAttr "Cape4_joint.jo" "Cape4_joint_orientConstraint1.cjo";
connectAttr "Cape4_joint.is" "Cape4_joint_orientConstraint1.is";
connectAttr "Cape4_Ctrl.r" "Cape4_joint_orientConstraint1.tg[0].tr";
connectAttr "Cape4_Ctrl.ro" "Cape4_joint_orientConstraint1.tg[0].tro";
connectAttr "Cape4_Ctrl.pm" "Cape4_joint_orientConstraint1.tg[0].tpm";
connectAttr "Cape4_joint_orientConstraint1.w0" "Cape4_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Cape3_joint.ro" "Cape3_joint_orientConstraint1.cro";
connectAttr "Cape3_joint.pim" "Cape3_joint_orientConstraint1.cpim";
connectAttr "Cape3_joint.jo" "Cape3_joint_orientConstraint1.cjo";
connectAttr "Cape3_joint.is" "Cape3_joint_orientConstraint1.is";
connectAttr "Cape3_Ctrl.r" "Cape3_joint_orientConstraint1.tg[0].tr";
connectAttr "Cape3_Ctrl.ro" "Cape3_joint_orientConstraint1.tg[0].tro";
connectAttr "Cape3_Ctrl.pm" "Cape3_joint_orientConstraint1.tg[0].tpm";
connectAttr "Cape3_joint_orientConstraint1.w0" "Cape3_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Cape2_joint.ro" "Cape2_joint_orientConstraint1.cro";
connectAttr "Cape2_joint.pim" "Cape2_joint_orientConstraint1.cpim";
connectAttr "Cape2_joint.jo" "Cape2_joint_orientConstraint1.cjo";
connectAttr "Cape2_joint.is" "Cape2_joint_orientConstraint1.is";
connectAttr "Cape2_Ctrl.r" "Cape2_joint_orientConstraint1.tg[0].tr";
connectAttr "Cape2_Ctrl.ro" "Cape2_joint_orientConstraint1.tg[0].tro";
connectAttr "Cape2_Ctrl.pm" "Cape2_joint_orientConstraint1.tg[0].tpm";
connectAttr "Cape2_joint_orientConstraint1.w0" "Cape2_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Cape1_joint.ro" "Cape1_joint_orientConstraint1.cro";
connectAttr "Cape1_joint.pim" "Cape1_joint_orientConstraint1.cpim";
connectAttr "Cape1_joint.jo" "Cape1_joint_orientConstraint1.cjo";
connectAttr "Cape1_joint.is" "Cape1_joint_orientConstraint1.is";
connectAttr "Cape1_Ctrl.r" "Cape1_joint_orientConstraint1.tg[0].tr";
connectAttr "Cape1_Ctrl.ro" "Cape1_joint_orientConstraint1.tg[0].tro";
connectAttr "Cape1_Ctrl.pm" "Cape1_joint_orientConstraint1.tg[0].tpm";
connectAttr "Cape1_joint_orientConstraint1.w0" "Cape1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Neck_joint.ro" "Neck_joint_orientConstraint1.cro";
connectAttr "Neck_joint.pim" "Neck_joint_orientConstraint1.cpim";
connectAttr "Neck_joint.jo" "Neck_joint_orientConstraint1.cjo";
connectAttr "Neck_joint.is" "Neck_joint_orientConstraint1.is";
connectAttr "Neck_ctrl.r" "Neck_joint_orientConstraint1.tg[0].tr";
connectAttr "Neck_ctrl.ro" "Neck_joint_orientConstraint1.tg[0].tro";
connectAttr "Neck_ctrl.pm" "Neck_joint_orientConstraint1.tg[0].tpm";
connectAttr "Neck_joint_orientConstraint1.w0" "Neck_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Chest_joint.ro" "Chest_joint_orientConstraint1.cro";
connectAttr "Chest_joint.pim" "Chest_joint_orientConstraint1.cpim";
connectAttr "Chest_joint.jo" "Chest_joint_orientConstraint1.cjo";
connectAttr "Chest_joint.is" "Chest_joint_orientConstraint1.is";
connectAttr "Chest_ctrl.r" "Chest_joint_orientConstraint1.tg[0].tr";
connectAttr "Chest_ctrl.ro" "Chest_joint_orientConstraint1.tg[0].tro";
connectAttr "Chest_ctrl.pm" "Chest_joint_orientConstraint1.tg[0].tpm";
connectAttr "Chest_joint_orientConstraint1.w0" "Chest_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Cav_joint_orientConstraint1.crx" "R_Cav_joint.rx";
connectAttr "R_Cav_joint_orientConstraint1.cry" "R_Cav_joint.ry";
connectAttr "R_Cav_joint_orientConstraint1.crz" "R_Cav_joint.rz";
connectAttr "Chest_joint.s" "R_Cav_joint.is";
connectAttr "R_Cav_joint.s" "R_Shoulder_joint.is";
connectAttr "R_Shoulder_joint_orientConstraint1.crx" "R_Shoulder_joint.rx";
connectAttr "R_Shoulder_joint_orientConstraint1.cry" "R_Shoulder_joint.ry";
connectAttr "R_Shoulder_joint_orientConstraint1.crz" "R_Shoulder_joint.rz";
connectAttr "R_Shoulder_joint.s" "R_Elbow_joint.is";
connectAttr "R_Elbow_joint_orientConstraint1.crx" "R_Elbow_joint.rx";
connectAttr "R_Elbow_joint_orientConstraint1.cry" "R_Elbow_joint.ry";
connectAttr "R_Elbow_joint_orientConstraint1.crz" "R_Elbow_joint.rz";
connectAttr "R_Elbow_joint.s" "R_Hand_joint.is";
connectAttr "R_Hand_joint_orientConstraint1.crx" "R_Hand_joint.rx";
connectAttr "R_Hand_joint_orientConstraint1.cry" "R_Hand_joint.ry";
connectAttr "R_Hand_joint_orientConstraint1.crz" "R_Hand_joint.rz";
connectAttr "R_Hand_joint.s" "R_Thumb1_joint.is";
connectAttr "R_Thumb1_joint_orientConstraint1.crx" "R_Thumb1_joint.rx";
connectAttr "R_Thumb1_joint_orientConstraint1.cry" "R_Thumb1_joint.ry";
connectAttr "R_Thumb1_joint_orientConstraint1.crz" "R_Thumb1_joint.rz";
connectAttr "R_Thumb1_joint.s" "R_Thumb2_joint.is";
connectAttr "R_Thumb2_joint_orientConstraint1.crx" "R_Thumb2_joint.rx";
connectAttr "R_Thumb2_joint_orientConstraint1.cry" "R_Thumb2_joint.ry";
connectAttr "R_Thumb2_joint_orientConstraint1.crz" "R_Thumb2_joint.rz";
connectAttr "R_Thumb2_joint.s" "R_Thumb3_End_joint.is";
connectAttr "R_Thumb2_joint.ro" "R_Thumb2_joint_orientConstraint1.cro";
connectAttr "R_Thumb2_joint.pim" "R_Thumb2_joint_orientConstraint1.cpim";
connectAttr "R_Thumb2_joint.jo" "R_Thumb2_joint_orientConstraint1.cjo";
connectAttr "R_Thumb2_joint.is" "R_Thumb2_joint_orientConstraint1.is";
connectAttr "R_Thumb2_ctrl.r" "R_Thumb2_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Thumb2_ctrl.ro" "R_Thumb2_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Thumb2_ctrl.pm" "R_Thumb2_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Thumb2_joint_orientConstraint1.w0" "R_Thumb2_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Thumb1_joint.ro" "R_Thumb1_joint_orientConstraint1.cro";
connectAttr "R_Thumb1_joint.pim" "R_Thumb1_joint_orientConstraint1.cpim";
connectAttr "R_Thumb1_joint.jo" "R_Thumb1_joint_orientConstraint1.cjo";
connectAttr "R_Thumb1_joint.is" "R_Thumb1_joint_orientConstraint1.is";
connectAttr "R_Thumb1_ctrl.r" "R_Thumb1_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Thumb1_ctrl.ro" "R_Thumb1_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Thumb1_ctrl.pm" "R_Thumb1_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Thumb1_joint_orientConstraint1.w0" "R_Thumb1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_joint.s" "R_Mid1_joint.is";
connectAttr "R_Mid1_joint_orientConstraint1.crx" "R_Mid1_joint.rx";
connectAttr "R_Mid1_joint_orientConstraint1.cry" "R_Mid1_joint.ry";
connectAttr "R_Mid1_joint_orientConstraint1.crz" "R_Mid1_joint.rz";
connectAttr "R_Mid1_joint.s" "R_Mid2_joint.is";
connectAttr "R_Mid2_joint_orientConstraint1.crx" "R_Mid2_joint.rx";
connectAttr "R_Mid2_joint_orientConstraint1.cry" "R_Mid2_joint.ry";
connectAttr "R_Mid2_joint_orientConstraint1.crz" "R_Mid2_joint.rz";
connectAttr "R_Mid2_joint.s" "R_Mid3_End_joint.is";
connectAttr "R_Mid2_joint.ro" "R_Mid2_joint_orientConstraint1.cro";
connectAttr "R_Mid2_joint.pim" "R_Mid2_joint_orientConstraint1.cpim";
connectAttr "R_Mid2_joint.jo" "R_Mid2_joint_orientConstraint1.cjo";
connectAttr "R_Mid2_joint.is" "R_Mid2_joint_orientConstraint1.is";
connectAttr "basemesh_Rigging:R_Mid2_ctrl.r" "R_Mid2_joint_orientConstraint1.tg[0].tr"
		;
connectAttr "basemesh_Rigging:R_Mid2_ctrl.ro" "R_Mid2_joint_orientConstraint1.tg[0].tro"
		;
connectAttr "basemesh_Rigging:R_Mid2_ctrl.pm" "R_Mid2_joint_orientConstraint1.tg[0].tpm"
		;
connectAttr "R_Mid2_joint_orientConstraint1.w0" "R_Mid2_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Mid1_joint.ro" "R_Mid1_joint_orientConstraint1.cro";
connectAttr "R_Mid1_joint.pim" "R_Mid1_joint_orientConstraint1.cpim";
connectAttr "R_Mid1_joint.jo" "R_Mid1_joint_orientConstraint1.cjo";
connectAttr "R_Mid1_joint.is" "R_Mid1_joint_orientConstraint1.is";
connectAttr "R_Mid1_ctrl.r" "R_Mid1_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Mid1_ctrl.ro" "R_Mid1_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Mid1_ctrl.pm" "R_Mid1_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Mid1_joint_orientConstraint1.w0" "R_Mid1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_joint.ro" "R_Hand_joint_orientConstraint1.cro";
connectAttr "R_Hand_joint.pim" "R_Hand_joint_orientConstraint1.cpim";
connectAttr "R_Hand_joint.jo" "R_Hand_joint_orientConstraint1.cjo";
connectAttr "R_Hand_joint.is" "R_Hand_joint_orientConstraint1.is";
connectAttr "R_Hand_ctrl.r" "R_Hand_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Hand_ctrl.ro" "R_Hand_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Hand_ctrl.pm" "R_Hand_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Hand_joint_orientConstraint1.w0" "R_Hand_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Hand_joint.s" "Shield_joint.is";
connectAttr "R_Elbow_joint.ro" "R_Elbow_joint_orientConstraint1.cro";
connectAttr "R_Elbow_joint.pim" "R_Elbow_joint_orientConstraint1.cpim";
connectAttr "R_Elbow_joint.jo" "R_Elbow_joint_orientConstraint1.cjo";
connectAttr "R_Elbow_joint.is" "R_Elbow_joint_orientConstraint1.is";
connectAttr "R_Elbow_ctrl.r" "R_Elbow_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Elbow_ctrl.ro" "R_Elbow_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Elbow_ctrl.pm" "R_Elbow_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Elbow_joint_orientConstraint1.w0" "R_Elbow_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Shoulder_joint.ro" "R_Shoulder_joint_orientConstraint1.cro";
connectAttr "R_Shoulder_joint.pim" "R_Shoulder_joint_orientConstraint1.cpim";
connectAttr "R_Shoulder_joint.jo" "R_Shoulder_joint_orientConstraint1.cjo";
connectAttr "R_Shoulder_joint.is" "R_Shoulder_joint_orientConstraint1.is";
connectAttr "R_Shoulder_ctrl.r" "R_Shoulder_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Shoulder_ctrl.ro" "R_Shoulder_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Shoulder_ctrl.pm" "R_Shoulder_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Shoulder_joint_orientConstraint1.w0" "R_Shoulder_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Cav_joint.ro" "R_Cav_joint_orientConstraint1.cro";
connectAttr "R_Cav_joint.pim" "R_Cav_joint_orientConstraint1.cpim";
connectAttr "R_Cav_joint.jo" "R_Cav_joint_orientConstraint1.cjo";
connectAttr "R_Cav_joint.is" "R_Cav_joint_orientConstraint1.is";
connectAttr "R_Cav_ctrl.r" "R_Cav_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Cav_ctrl.ro" "R_Cav_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Cav_ctrl.pm" "R_Cav_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Cav_joint_orientConstraint1.w0" "R_Cav_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Cav_joint_orientConstraint1.crx" "L_Cav_joint.rx";
connectAttr "L_Cav_joint_orientConstraint1.cry" "L_Cav_joint.ry";
connectAttr "L_Cav_joint_orientConstraint1.crz" "L_Cav_joint.rz";
connectAttr "Chest_joint.s" "L_Cav_joint.is";
connectAttr "L_Cav_joint.s" "L_Shoulder_joint.is";
connectAttr "L_Shoulder_joint_orientConstraint1.crx" "L_Shoulder_joint.rx";
connectAttr "L_Shoulder_joint_orientConstraint1.cry" "L_Shoulder_joint.ry";
connectAttr "L_Shoulder_joint_orientConstraint1.crz" "L_Shoulder_joint.rz";
connectAttr "L_Shoulder_joint.s" "L_Elbow_joint.is";
connectAttr "L_Elbow_joint_orientConstraint1.crx" "L_Elbow_joint.rx";
connectAttr "L_Elbow_joint_orientConstraint1.cry" "L_Elbow_joint.ry";
connectAttr "L_Elbow_joint_orientConstraint1.crz" "L_Elbow_joint.rz";
connectAttr "L_Elbow_joint.s" "L_Hand_joint.is";
connectAttr "L_Hand_joint_orientConstraint1.crx" "L_Hand_joint.rx";
connectAttr "L_Hand_joint_orientConstraint1.cry" "L_Hand_joint.ry";
connectAttr "L_Hand_joint_orientConstraint1.crz" "L_Hand_joint.rz";
connectAttr "L_Hand_joint.s" "L_Thumb1_joint.is";
connectAttr "L_Thumb1_joint_orientConstraint1.crx" "L_Thumb1_joint.rx";
connectAttr "L_Thumb1_joint_orientConstraint1.cry" "L_Thumb1_joint.ry";
connectAttr "L_Thumb1_joint_orientConstraint1.crz" "L_Thumb1_joint.rz";
connectAttr "L_Thumb1_joint.s" "L_Thumb2_joint.is";
connectAttr "L_Thumb2_joint_orientConstraint1.crx" "L_Thumb2_joint.rx";
connectAttr "L_Thumb2_joint_orientConstraint1.cry" "L_Thumb2_joint.ry";
connectAttr "L_Thumb2_joint_orientConstraint1.crz" "L_Thumb2_joint.rz";
connectAttr "L_Thumb2_joint.s" "L_Thumb3_End_joint.is";
connectAttr "L_Thumb2_joint.ro" "L_Thumb2_joint_orientConstraint1.cro";
connectAttr "L_Thumb2_joint.pim" "L_Thumb2_joint_orientConstraint1.cpim";
connectAttr "L_Thumb2_joint.jo" "L_Thumb2_joint_orientConstraint1.cjo";
connectAttr "L_Thumb2_joint.is" "L_Thumb2_joint_orientConstraint1.is";
connectAttr "L_Thumb2_ctrl.r" "L_Thumb2_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Thumb2_ctrl.ro" "L_Thumb2_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Thumb2_ctrl.pm" "L_Thumb2_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Thumb2_joint_orientConstraint1.w0" "L_Thumb2_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Thumb1_joint.ro" "L_Thumb1_joint_orientConstraint1.cro";
connectAttr "L_Thumb1_joint.pim" "L_Thumb1_joint_orientConstraint1.cpim";
connectAttr "L_Thumb1_joint.jo" "L_Thumb1_joint_orientConstraint1.cjo";
connectAttr "L_Thumb1_joint.is" "L_Thumb1_joint_orientConstraint1.is";
connectAttr "L_Thumb1_ctrl.r" "L_Thumb1_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Thumb1_ctrl.ro" "L_Thumb1_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Thumb1_ctrl.pm" "L_Thumb1_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Thumb1_joint_orientConstraint1.w0" "L_Thumb1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_joint.s" "L_Mid1_joint.is";
connectAttr "L_Mid1_joint_orientConstraint1.crx" "L_Mid1_joint.rx";
connectAttr "L_Mid1_joint_orientConstraint1.cry" "L_Mid1_joint.ry";
connectAttr "L_Mid1_joint_orientConstraint1.crz" "L_Mid1_joint.rz";
connectAttr "L_Mid1_joint.s" "L_Mid2_joint.is";
connectAttr "L_Mid2_joint_orientConstraint1.crx" "L_Mid2_joint.rx";
connectAttr "L_Mid2_joint_orientConstraint1.cry" "L_Mid2_joint.ry";
connectAttr "L_Mid2_joint_orientConstraint1.crz" "L_Mid2_joint.rz";
connectAttr "L_Mid2_joint.s" "L_Mid3_End_joint.is";
connectAttr "L_Mid2_joint.ro" "L_Mid2_joint_orientConstraint1.cro";
connectAttr "L_Mid2_joint.pim" "L_Mid2_joint_orientConstraint1.cpim";
connectAttr "L_Mid2_joint.jo" "L_Mid2_joint_orientConstraint1.cjo";
connectAttr "L_Mid2_joint.is" "L_Mid2_joint_orientConstraint1.is";
connectAttr "L_Mid2_ctrl.r" "L_Mid2_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Mid2_ctrl.ro" "L_Mid2_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Mid2_ctrl.pm" "L_Mid2_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Mid2_joint_orientConstraint1.w0" "L_Mid2_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Mid1_joint.ro" "L_Mid1_joint_orientConstraint1.cro";
connectAttr "L_Mid1_joint.pim" "L_Mid1_joint_orientConstraint1.cpim";
connectAttr "L_Mid1_joint.jo" "L_Mid1_joint_orientConstraint1.cjo";
connectAttr "L_Mid1_joint.is" "L_Mid1_joint_orientConstraint1.is";
connectAttr "L_Mid1_ctrl.r" "L_Mid1_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Mid1_ctrl.ro" "L_Mid1_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Mid1_ctrl.pm" "L_Mid1_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Mid1_joint_orientConstraint1.w0" "L_Mid1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Hand_joint.ro" "L_Hand_joint_orientConstraint1.cro";
connectAttr "L_Hand_joint.pim" "L_Hand_joint_orientConstraint1.cpim";
connectAttr "L_Hand_joint.jo" "L_Hand_joint_orientConstraint1.cjo";
connectAttr "L_Hand_joint.is" "L_Hand_joint_orientConstraint1.is";
connectAttr "L_Hand_ctrl.r" "L_Hand_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Hand_ctrl.ro" "L_Hand_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Hand_ctrl.pm" "L_Hand_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Hand_joint_orientConstraint1.w0" "L_Hand_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Elbow_joint.ro" "L_Elbow_joint_orientConstraint1.cro";
connectAttr "L_Elbow_joint.pim" "L_Elbow_joint_orientConstraint1.cpim";
connectAttr "L_Elbow_joint.jo" "L_Elbow_joint_orientConstraint1.cjo";
connectAttr "L_Elbow_joint.is" "L_Elbow_joint_orientConstraint1.is";
connectAttr "L_Elbow_ctrl.r" "L_Elbow_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Elbow_ctrl.ro" "L_Elbow_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Elbow_ctrl.pm" "L_Elbow_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Elbow_joint_orientConstraint1.w0" "L_Elbow_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Shoulder_joint.ro" "L_Shoulder_joint_orientConstraint1.cro";
connectAttr "L_Shoulder_joint.pim" "L_Shoulder_joint_orientConstraint1.cpim";
connectAttr "L_Shoulder_joint.jo" "L_Shoulder_joint_orientConstraint1.cjo";
connectAttr "L_Shoulder_joint.is" "L_Shoulder_joint_orientConstraint1.is";
connectAttr "L_Shoulder_ctrl.r" "L_Shoulder_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Shoulder_ctrl.ro" "L_Shoulder_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Shoulder_ctrl.pm" "L_Shoulder_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Shoulder_joint_orientConstraint1.w0" "L_Shoulder_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Cav_joint.ro" "L_Cav_joint_orientConstraint1.cro";
connectAttr "L_Cav_joint.pim" "L_Cav_joint_orientConstraint1.cpim";
connectAttr "L_Cav_joint.jo" "L_Cav_joint_orientConstraint1.cjo";
connectAttr "L_Cav_joint.is" "L_Cav_joint_orientConstraint1.is";
connectAttr "L_Cav_ctrl.r" "L_Cav_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Cav_ctrl.ro" "L_Cav_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Cav_ctrl.pm" "L_Cav_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Cav_joint_orientConstraint1.w0" "L_Cav_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Back1_joint.ro" "Back1_joint_orientConstraint1.cro";
connectAttr "Back1_joint.pim" "Back1_joint_orientConstraint1.cpim";
connectAttr "Back1_joint.jo" "Back1_joint_orientConstraint1.cjo";
connectAttr "Back1_joint.is" "Back1_joint_orientConstraint1.is";
connectAttr "Back1_ctrl.r" "Back1_joint_orientConstraint1.tg[0].tr";
connectAttr "Back1_ctrl.ro" "Back1_joint_orientConstraint1.tg[0].tro";
connectAttr "Back1_ctrl.pm" "Back1_joint_orientConstraint1.tg[0].tpm";
connectAttr "Back1_joint_orientConstraint1.w0" "Back1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Root_joint.s" "C_Bell_joint.is";
connectAttr "C_Bell_joint_orientConstraint1.crx" "C_Bell_joint.rx";
connectAttr "C_Bell_joint_orientConstraint1.cry" "C_Bell_joint.ry";
connectAttr "C_Bell_joint_orientConstraint1.crz" "C_Bell_joint.rz";
connectAttr "C_Bell_joint.ro" "C_Bell_joint_orientConstraint1.cro";
connectAttr "C_Bell_joint.pim" "C_Bell_joint_orientConstraint1.cpim";
connectAttr "C_Bell_joint.jo" "C_Bell_joint_orientConstraint1.cjo";
connectAttr "C_Bell_joint.is" "C_Bell_joint_orientConstraint1.is";
connectAttr "Bell_ctrl.r" "C_Bell_joint_orientConstraint1.tg[0].tr";
connectAttr "Bell_ctrl.ro" "C_Bell_joint_orientConstraint1.tg[0].tro";
connectAttr "Bell_ctrl.pm" "C_Bell_joint_orientConstraint1.tg[0].tpm";
connectAttr "C_Bell_joint_orientConstraint1.w0" "C_Bell_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "C_Bell_joint.s" "Pelvis_joint.is";
connectAttr "Pelvis_joint_orientConstraint1.crx" "Pelvis_joint.rx";
connectAttr "Pelvis_joint_orientConstraint1.cry" "Pelvis_joint.ry";
connectAttr "Pelvis_joint_orientConstraint1.crz" "Pelvis_joint.rz";
connectAttr "Pelvis_joint.ro" "Pelvis_joint_orientConstraint1.cro";
connectAttr "Pelvis_joint.pim" "Pelvis_joint_orientConstraint1.cpim";
connectAttr "Pelvis_joint.jo" "Pelvis_joint_orientConstraint1.cjo";
connectAttr "Pelvis_joint.is" "Pelvis_joint_orientConstraint1.is";
connectAttr "Pelvis_ctrl.r" "Pelvis_joint_orientConstraint1.tg[0].tr";
connectAttr "Pelvis_ctrl.ro" "Pelvis_joint_orientConstraint1.tg[0].tro";
connectAttr "Pelvis_ctrl.pm" "Pelvis_joint_orientConstraint1.tg[0].tpm";
connectAttr "Pelvis_joint_orientConstraint1.w0" "Pelvis_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_joint.s" "L_Hip_joint.is";
connectAttr "L_Hip_joint_orientConstraint1.crx" "L_Hip_joint.rx";
connectAttr "L_Hip_joint_orientConstraint1.cry" "L_Hip_joint.ry";
connectAttr "L_Hip_joint_orientConstraint1.crz" "L_Hip_joint.rz";
connectAttr "L_Hip_joint.s" "L_Knee_joint.is";
connectAttr "L_Knee_joint_orientConstraint1.crx" "L_Knee_joint.rx";
connectAttr "L_Knee_joint_orientConstraint1.cry" "L_Knee_joint.ry";
connectAttr "L_Knee_joint_orientConstraint1.crz" "L_Knee_joint.rz";
connectAttr "L_Knee_joint.s" "L_Ankie_joint.is";
connectAttr "L_Ankie_joint_orientConstraint1.crx" "L_Ankie_joint.rx";
connectAttr "L_Ankie_joint_orientConstraint1.cry" "L_Ankie_joint.ry";
connectAttr "L_Ankie_joint_orientConstraint1.crz" "L_Ankie_joint.rz";
connectAttr "L_Ankie_joint.s" "L_Foot_joint.is";
connectAttr "L_Ankie_joint.ro" "L_Ankie_joint_orientConstraint1.cro";
connectAttr "L_Ankie_joint.pim" "L_Ankie_joint_orientConstraint1.cpim";
connectAttr "L_Ankie_joint.jo" "L_Ankie_joint_orientConstraint1.cjo";
connectAttr "L_Ankie_joint.is" "L_Ankie_joint_orientConstraint1.is";
connectAttr "L_Foot_ctrl.r" "L_Ankie_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Foot_ctrl.ro" "L_Ankie_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Foot_ctrl.pm" "L_Ankie_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Ankie_joint_orientConstraint1.w0" "L_Ankie_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Knee_joint.ro" "L_Knee_joint_orientConstraint1.cro";
connectAttr "L_Knee_joint.pim" "L_Knee_joint_orientConstraint1.cpim";
connectAttr "L_Knee_joint.jo" "L_Knee_joint_orientConstraint1.cjo";
connectAttr "L_Knee_joint.is" "L_Knee_joint_orientConstraint1.is";
connectAttr "L_Knee_ctrl.r" "L_Knee_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Knee_ctrl.ro" "L_Knee_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Knee_ctrl.pm" "L_Knee_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Knee_joint_orientConstraint1.w0" "L_Knee_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Hip_joint.ro" "L_Hip_joint_orientConstraint1.cro";
connectAttr "L_Hip_joint.pim" "L_Hip_joint_orientConstraint1.cpim";
connectAttr "L_Hip_joint.jo" "L_Hip_joint_orientConstraint1.cjo";
connectAttr "L_Hip_joint.is" "L_Hip_joint_orientConstraint1.is";
connectAttr "L_Hip_ctrl.r" "L_Hip_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Hip_ctrl.ro" "L_Hip_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Hip_ctrl.pm" "L_Hip_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Hip_joint_orientConstraint1.w0" "L_Hip_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_joint.s" "R_Hip_joint.is";
connectAttr "R_Hip_joint_orientConstraint1.crx" "R_Hip_joint.rx";
connectAttr "R_Hip_joint_orientConstraint1.cry" "R_Hip_joint.ry";
connectAttr "R_Hip_joint_orientConstraint1.crz" "R_Hip_joint.rz";
connectAttr "R_Hip_joint.s" "R_Knee_joint.is";
connectAttr "R_Knee_joint_orientConstraint1.crx" "R_Knee_joint.rx";
connectAttr "R_Knee_joint_orientConstraint1.cry" "R_Knee_joint.ry";
connectAttr "R_Knee_joint_orientConstraint1.crz" "R_Knee_joint.rz";
connectAttr "R_Knee_joint.s" "R_Ankie_joint.is";
connectAttr "R_Ankie_joint_orientConstraint1.crx" "R_Ankie_joint.rx";
connectAttr "R_Ankie_joint_orientConstraint1.cry" "R_Ankie_joint.ry";
connectAttr "R_Ankie_joint_orientConstraint1.crz" "R_Ankie_joint.rz";
connectAttr "R_Ankie_joint.s" "R_Foot_joint.is";
connectAttr "R_Ankie_joint.ro" "R_Ankie_joint_orientConstraint1.cro";
connectAttr "R_Ankie_joint.pim" "R_Ankie_joint_orientConstraint1.cpim";
connectAttr "R_Ankie_joint.jo" "R_Ankie_joint_orientConstraint1.cjo";
connectAttr "R_Ankie_joint.is" "R_Ankie_joint_orientConstraint1.is";
connectAttr "R_Foot_ctrl.r" "R_Ankie_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Foot_ctrl.ro" "R_Ankie_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Foot_ctrl.pm" "R_Ankie_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Ankie_joint_orientConstraint1.w0" "R_Ankie_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Knee_joint.ro" "R_Knee_joint_orientConstraint1.cro";
connectAttr "R_Knee_joint.pim" "R_Knee_joint_orientConstraint1.cpim";
connectAttr "R_Knee_joint.jo" "R_Knee_joint_orientConstraint1.cjo";
connectAttr "R_Knee_joint.is" "R_Knee_joint_orientConstraint1.is";
connectAttr "R_Knee_ctrl.r" "R_Knee_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Knee_ctrl.ro" "R_Knee_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Knee_ctrl.pm" "R_Knee_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Knee_joint_orientConstraint1.w0" "R_Knee_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Hip_joint.ro" "R_Hip_joint_orientConstraint1.cro";
connectAttr "R_Hip_joint.pim" "R_Hip_joint_orientConstraint1.cpim";
connectAttr "R_Hip_joint.jo" "R_Hip_joint_orientConstraint1.cjo";
connectAttr "R_Hip_joint.is" "R_Hip_joint_orientConstraint1.is";
connectAttr "R_Hip_ctrl.r" "R_Hip_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Hip_ctrl.ro" "R_Hip_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Hip_ctrl.pm" "R_Hip_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Hip_joint_orientConstraint1.w0" "R_Hip_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "C_Bell_joint.s" "L_Veil1_joint.is";
connectAttr "L_Veil1_joint_orientConstraint1.crx" "L_Veil1_joint.rx";
connectAttr "L_Veil1_joint_orientConstraint1.cry" "L_Veil1_joint.ry";
connectAttr "L_Veil1_joint_orientConstraint1.crz" "L_Veil1_joint.rz";
connectAttr "L_Veil1_joint.s" "L_Veil2_End_joint.is";
connectAttr "L_Veil1_joint.ro" "L_Veil1_joint_orientConstraint1.cro";
connectAttr "L_Veil1_joint.pim" "L_Veil1_joint_orientConstraint1.cpim";
connectAttr "L_Veil1_joint.jo" "L_Veil1_joint_orientConstraint1.cjo";
connectAttr "L_Veil1_joint.is" "L_Veil1_joint_orientConstraint1.is";
connectAttr "L_Veil_ctrl.r" "L_Veil1_joint_orientConstraint1.tg[0].tr";
connectAttr "L_Veil_ctrl.ro" "L_Veil1_joint_orientConstraint1.tg[0].tro";
connectAttr "L_Veil_ctrl.pm" "L_Veil1_joint_orientConstraint1.tg[0].tpm";
connectAttr "L_Veil1_joint_orientConstraint1.w0" "L_Veil1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "C_Bell_joint.s" "R_Veil1_joint.is";
connectAttr "R_Veil1_joint_orientConstraint1.crx" "R_Veil1_joint.rx";
connectAttr "R_Veil1_joint_orientConstraint1.cry" "R_Veil1_joint.ry";
connectAttr "R_Veil1_joint_orientConstraint1.crz" "R_Veil1_joint.rz";
connectAttr "R_Veil1_joint.s" "R_Veil2_End_joint.is";
connectAttr "R_Veil1_joint.ro" "R_Veil1_joint_orientConstraint1.cro";
connectAttr "R_Veil1_joint.pim" "R_Veil1_joint_orientConstraint1.cpim";
connectAttr "R_Veil1_joint.jo" "R_Veil1_joint_orientConstraint1.cjo";
connectAttr "R_Veil1_joint.is" "R_Veil1_joint_orientConstraint1.is";
connectAttr "R_Veil_ctrl.r" "R_Veil1_joint_orientConstraint1.tg[0].tr";
connectAttr "R_Veil_ctrl.ro" "R_Veil1_joint_orientConstraint1.tg[0].tro";
connectAttr "R_Veil_ctrl.pm" "R_Veil1_joint_orientConstraint1.tg[0].tpm";
connectAttr "R_Veil1_joint_orientConstraint1.w0" "R_Veil1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "C_Bell_joint.s" "F_Veil1_joint.is";
connectAttr "F_Veil1_joint_orientConstraint1.crx" "F_Veil1_joint.rx";
connectAttr "F_Veil1_joint_orientConstraint1.cry" "F_Veil1_joint.ry";
connectAttr "F_Veil1_joint_orientConstraint1.crz" "F_Veil1_joint.rz";
connectAttr "F_Veil1_joint.s" "F_Veil2_End_joint.is";
connectAttr "F_Veil1_joint.ro" "F_Veil1_joint_orientConstraint1.cro";
connectAttr "F_Veil1_joint.pim" "F_Veil1_joint_orientConstraint1.cpim";
connectAttr "F_Veil1_joint.jo" "F_Veil1_joint_orientConstraint1.cjo";
connectAttr "F_Veil1_joint.is" "F_Veil1_joint_orientConstraint1.is";
connectAttr "Bell_ctrl1.r" "F_Veil1_joint_orientConstraint1.tg[0].tr";
connectAttr "Bell_ctrl1.ro" "F_Veil1_joint_orientConstraint1.tg[0].tro";
connectAttr "Bell_ctrl1.pm" "F_Veil1_joint_orientConstraint1.tg[0].tpm";
connectAttr "F_Veil1_joint_orientConstraint1.w0" "F_Veil1_joint_orientConstraint1.tg[0].tw"
		;
connectAttr "Root_joint.ro" "Root_joint_parentConstraint1.cro";
connectAttr "Root_joint.pim" "Root_joint_parentConstraint1.cpim";
connectAttr "Root_joint.rp" "Root_joint_parentConstraint1.crp";
connectAttr "Root_joint.rpt" "Root_joint_parentConstraint1.crt";
connectAttr "Root_joint.jo" "Root_joint_parentConstraint1.cjo";
connectAttr "Root_ctrl.t" "Root_joint_parentConstraint1.tg[0].tt";
connectAttr "Root_ctrl.rp" "Root_joint_parentConstraint1.tg[0].trp";
connectAttr "Root_ctrl.rpt" "Root_joint_parentConstraint1.tg[0].trt";
connectAttr "Root_ctrl.r" "Root_joint_parentConstraint1.tg[0].tr";
connectAttr "Root_ctrl.ro" "Root_joint_parentConstraint1.tg[0].tro";
connectAttr "Root_ctrl.s" "Root_joint_parentConstraint1.tg[0].ts";
connectAttr "Root_ctrl.pm" "Root_joint_parentConstraint1.tg[0].tpm";
connectAttr "Root_joint_parentConstraint1.w0" "Root_joint_parentConstraint1.tg[0].tw"
		;
connectAttr "Ctrl_layer.di" "Root_ctrl.do";
connectAttr "Ctrl_layer.di" "Bell_ctrl.do";
connectAttr "Ctrl_layer.di" "Bell_ctrl1.do";
connectAttr "Ctrl_layer.di" "L_Veil_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Veil_ctrl.do";
connectAttr "Ctrl_layer.di" "Pelvis_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Hip_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Knee_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Foot_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Hip_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Knee_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Foot_ctrl.do";
connectAttr "Ctrl_layer.di" "Back1_ctrl.do";
connectAttr "Ctrl_layer.di" "Chest_ctrl.do";
connectAttr "Ctrl_layer.di" "Neck_ctrl.do";
connectAttr "Ctrl_layer.di" "Head_ctrl1.do";
connectAttr "Ctrl_layer.di" "R_Cav_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Shoulder_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Elbow_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Hand_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Mid1_ctrl.do";
connectAttr "Ctrl_layer.di" "basemesh_Rigging:R_Mid2_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Thumb1_ctrl.do";
connectAttr "Ctrl_layer.di" "R_Thumb2_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Cav_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Shoulder_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Elbow_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Hand_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Mid1_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Mid2_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Thumb1_ctrl.do";
connectAttr "Ctrl_layer.di" "L_Thumb2_ctrl.do";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Sheild_guardUV1_1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "Shield_pCube_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "R_hip_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "R_shoulder_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "Body_polySurface_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "head_belt_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "helmet_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "R_Knee_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "L_Shoulder_pCube_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "cape_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "L_knee_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "L_Veil_pCube_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "Bell_F_Veil_FShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "Sheild_guardUV1_1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "Sheild_guardUV1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Sheild_guardUV1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Sheild_guardUV1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Sheild_guardUV1_1.ws";
connectAttr "place2dTexture1.c" "Sheild_guardUV1_1.c";
connectAttr "place2dTexture1.tf" "Sheild_guardUV1_1.tf";
connectAttr "place2dTexture1.rf" "Sheild_guardUV1_1.rf";
connectAttr "place2dTexture1.mu" "Sheild_guardUV1_1.mu";
connectAttr "place2dTexture1.mv" "Sheild_guardUV1_1.mv";
connectAttr "place2dTexture1.s" "Sheild_guardUV1_1.s";
connectAttr "place2dTexture1.wu" "Sheild_guardUV1_1.wu";
connectAttr "place2dTexture1.wv" "Sheild_guardUV1_1.wv";
connectAttr "place2dTexture1.re" "Sheild_guardUV1_1.re";
connectAttr "place2dTexture1.of" "Sheild_guardUV1_1.of";
connectAttr "place2dTexture1.r" "Sheild_guardUV1_1.ro";
connectAttr "place2dTexture1.n" "Sheild_guardUV1_1.n";
connectAttr "place2dTexture1.vt1" "Sheild_guardUV1_1.vt1";
connectAttr "place2dTexture1.vt2" "Sheild_guardUV1_1.vt2";
connectAttr "place2dTexture1.vt3" "Sheild_guardUV1_1.vt3";
connectAttr "place2dTexture1.vc1" "Sheild_guardUV1_1.vc1";
connectAttr "place2dTexture1.o" "Sheild_guardUV1_1.uv";
connectAttr "place2dTexture1.ofs" "Sheild_guardUV1_1.fs";
connectAttr "imagePlaneShape3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Sheild_guardUV1_1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "layerManager.dli[10]" "Ctrl_layer.id";
connectAttr "layerManager.dli[11]" "Model_layer.id";
connectAttr "layerManager.dli[12]" "Shield_layer.id";
connectAttr "layerManager.dli[1]" "Joint_layer.id";
connectAttr "Body_polySurface_FShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "Body_polySurface_FShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Back1_joint.wm" "skinCluster1.ma[0]";
connectAttr "Chest_joint.wm" "skinCluster1.ma[1]";
connectAttr "Neck_joint.wm" "skinCluster1.ma[2]";
connectAttr "Head1_joint.wm" "skinCluster1.ma[3]";
connectAttr "R_Cav_joint.wm" "skinCluster1.ma[4]";
connectAttr "R_Shoulder_joint.wm" "skinCluster1.ma[5]";
connectAttr "R_Elbow_joint.wm" "skinCluster1.ma[6]";
connectAttr "R_Hand_joint.wm" "skinCluster1.ma[7]";
connectAttr "R_Thumb1_joint.wm" "skinCluster1.ma[8]";
connectAttr "R_Mid1_joint.wm" "skinCluster1.ma[9]";
connectAttr "R_Thumb2_joint.wm" "skinCluster1.ma[10]";
connectAttr "R_Mid2_joint.wm" "skinCluster1.ma[11]";
connectAttr "L_Cav_joint.wm" "skinCluster1.ma[12]";
connectAttr "L_Shoulder_joint.wm" "skinCluster1.ma[13]";
connectAttr "L_Hand_joint.wm" "skinCluster1.ma[14]";
connectAttr "L_Elbow_joint.wm" "skinCluster1.ma[15]";
connectAttr "L_Thumb1_joint.wm" "skinCluster1.ma[16]";
connectAttr "L_Mid1_joint.wm" "skinCluster1.ma[17]";
connectAttr "L_Thumb2_joint.wm" "skinCluster1.ma[18]";
connectAttr "L_Mid2_joint.wm" "skinCluster1.ma[19]";
connectAttr "C_Bell_joint.wm" "skinCluster1.ma[20]";
connectAttr "Pelvis_joint.wm" "skinCluster1.ma[21]";
connectAttr "L_Hip_joint.wm" "skinCluster1.ma[22]";
connectAttr "R_Hip_joint.wm" "skinCluster1.ma[23]";
connectAttr "L_Knee_joint.wm" "skinCluster1.ma[24]";
connectAttr "R_Knee_joint.wm" "skinCluster1.ma[25]";
connectAttr "L_Ankie_joint.wm" "skinCluster1.ma[26]";
connectAttr "R_Ankie_joint.wm" "skinCluster1.ma[27]";
connectAttr "Back1_joint.liw" "skinCluster1.lw[0]";
connectAttr "Chest_joint.liw" "skinCluster1.lw[1]";
connectAttr "Neck_joint.liw" "skinCluster1.lw[2]";
connectAttr "Head1_joint.liw" "skinCluster1.lw[3]";
connectAttr "R_Cav_joint.liw" "skinCluster1.lw[4]";
connectAttr "R_Shoulder_joint.liw" "skinCluster1.lw[5]";
connectAttr "R_Elbow_joint.liw" "skinCluster1.lw[6]";
connectAttr "R_Hand_joint.liw" "skinCluster1.lw[7]";
connectAttr "R_Thumb1_joint.liw" "skinCluster1.lw[8]";
connectAttr "R_Mid1_joint.liw" "skinCluster1.lw[9]";
connectAttr "R_Thumb2_joint.liw" "skinCluster1.lw[10]";
connectAttr "R_Mid2_joint.liw" "skinCluster1.lw[11]";
connectAttr "L_Cav_joint.liw" "skinCluster1.lw[12]";
connectAttr "L_Shoulder_joint.liw" "skinCluster1.lw[13]";
connectAttr "L_Hand_joint.liw" "skinCluster1.lw[14]";
connectAttr "L_Elbow_joint.liw" "skinCluster1.lw[15]";
connectAttr "L_Thumb1_joint.liw" "skinCluster1.lw[16]";
connectAttr "L_Mid1_joint.liw" "skinCluster1.lw[17]";
connectAttr "L_Thumb2_joint.liw" "skinCluster1.lw[18]";
connectAttr "L_Mid2_joint.liw" "skinCluster1.lw[19]";
connectAttr "C_Bell_joint.liw" "skinCluster1.lw[20]";
connectAttr "Pelvis_joint.liw" "skinCluster1.lw[21]";
connectAttr "L_Hip_joint.liw" "skinCluster1.lw[22]";
connectAttr "R_Hip_joint.liw" "skinCluster1.lw[23]";
connectAttr "L_Knee_joint.liw" "skinCluster1.lw[24]";
connectAttr "R_Knee_joint.liw" "skinCluster1.lw[25]";
connectAttr "L_Ankie_joint.liw" "skinCluster1.lw[26]";
connectAttr "R_Ankie_joint.liw" "skinCluster1.lw[27]";
connectAttr "Back1_joint.obcc" "skinCluster1.ifcl[0]";
connectAttr "Chest_joint.obcc" "skinCluster1.ifcl[1]";
connectAttr "Neck_joint.obcc" "skinCluster1.ifcl[2]";
connectAttr "Head1_joint.obcc" "skinCluster1.ifcl[3]";
connectAttr "R_Cav_joint.obcc" "skinCluster1.ifcl[4]";
connectAttr "R_Shoulder_joint.obcc" "skinCluster1.ifcl[5]";
connectAttr "R_Elbow_joint.obcc" "skinCluster1.ifcl[6]";
connectAttr "R_Hand_joint.obcc" "skinCluster1.ifcl[7]";
connectAttr "R_Thumb1_joint.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_Mid1_joint.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_Thumb2_joint.obcc" "skinCluster1.ifcl[10]";
connectAttr "R_Mid2_joint.obcc" "skinCluster1.ifcl[11]";
connectAttr "L_Cav_joint.obcc" "skinCluster1.ifcl[12]";
connectAttr "L_Shoulder_joint.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_Hand_joint.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_Elbow_joint.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_Thumb1_joint.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_Mid1_joint.obcc" "skinCluster1.ifcl[17]";
connectAttr "L_Thumb2_joint.obcc" "skinCluster1.ifcl[18]";
connectAttr "L_Mid2_joint.obcc" "skinCluster1.ifcl[19]";
connectAttr "C_Bell_joint.obcc" "skinCluster1.ifcl[20]";
connectAttr "Pelvis_joint.obcc" "skinCluster1.ifcl[21]";
connectAttr "L_Hip_joint.obcc" "skinCluster1.ifcl[22]";
connectAttr "R_Hip_joint.obcc" "skinCluster1.ifcl[23]";
connectAttr "L_Knee_joint.obcc" "skinCluster1.ifcl[24]";
connectAttr "R_Knee_joint.obcc" "skinCluster1.ifcl[25]";
connectAttr "L_Ankie_joint.obcc" "skinCluster1.ifcl[26]";
connectAttr "R_Ankie_joint.obcc" "skinCluster1.ifcl[27]";
connectAttr "Pelvis_joint.msg" "skinCluster1.ptt";
connectAttr "Root_joint.msg" "bindPose1.m[0]";
connectAttr "Back1_joint.msg" "bindPose1.m[1]";
connectAttr "Chest_joint.msg" "bindPose1.m[2]";
connectAttr "Neck_joint.msg" "bindPose1.m[3]";
connectAttr "Head1_joint.msg" "bindPose1.m[4]";
connectAttr "R_Cav_joint.msg" "bindPose1.m[5]";
connectAttr "R_Shoulder_joint.msg" "bindPose1.m[6]";
connectAttr "R_Elbow_joint.msg" "bindPose1.m[7]";
connectAttr "R_Hand_joint.msg" "bindPose1.m[8]";
connectAttr "R_Thumb1_joint.msg" "bindPose1.m[9]";
connectAttr "R_Mid1_joint.msg" "bindPose1.m[10]";
connectAttr "R_Thumb2_joint.msg" "bindPose1.m[11]";
connectAttr "R_Mid2_joint.msg" "bindPose1.m[12]";
connectAttr "L_Cav_joint.msg" "bindPose1.m[13]";
connectAttr "L_Shoulder_joint.msg" "bindPose1.m[14]";
connectAttr "L_Elbow_joint.msg" "bindPose1.m[15]";
connectAttr "L_Hand_joint.msg" "bindPose1.m[16]";
connectAttr "L_Thumb1_joint.msg" "bindPose1.m[17]";
connectAttr "L_Mid1_joint.msg" "bindPose1.m[18]";
connectAttr "L_Thumb2_joint.msg" "bindPose1.m[19]";
connectAttr "L_Mid2_joint.msg" "bindPose1.m[20]";
connectAttr "C_Bell_joint.msg" "bindPose1.m[21]";
connectAttr "Pelvis_joint.msg" "bindPose1.m[22]";
connectAttr "L_Hip_joint.msg" "bindPose1.m[23]";
connectAttr "R_Hip_joint.msg" "bindPose1.m[24]";
connectAttr "L_Knee_joint.msg" "bindPose1.m[25]";
connectAttr "R_Knee_joint.msg" "bindPose1.m[26]";
connectAttr "L_Ankie_joint.msg" "bindPose1.m[27]";
connectAttr "R_Ankie_joint.msg" "bindPose1.m[28]";
connectAttr "F_Veil1_joint.msg" "bindPose1.m[29]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[2]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[8]" "bindPose1.p[10]";
connectAttr "bindPose1.m[9]" "bindPose1.p[11]";
connectAttr "bindPose1.m[10]" "bindPose1.p[12]";
connectAttr "bindPose1.m[2]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[16]" "bindPose1.p[18]";
connectAttr "bindPose1.m[17]" "bindPose1.p[19]";
connectAttr "bindPose1.m[18]" "bindPose1.p[20]";
connectAttr "bindPose1.m[0]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[22]" "bindPose1.p[24]";
connectAttr "bindPose1.m[23]" "bindPose1.p[25]";
connectAttr "bindPose1.m[24]" "bindPose1.p[26]";
connectAttr "bindPose1.m[25]" "bindPose1.p[27]";
connectAttr "bindPose1.m[26]" "bindPose1.p[28]";
connectAttr "bindPose1.m[21]" "bindPose1.p[29]";
connectAttr "Root_joint.bps" "bindPose1.wm[0]";
connectAttr "Back1_joint.bps" "bindPose1.wm[1]";
connectAttr "Chest_joint.bps" "bindPose1.wm[2]";
connectAttr "Neck_joint.bps" "bindPose1.wm[3]";
connectAttr "Head1_joint.bps" "bindPose1.wm[4]";
connectAttr "R_Cav_joint.bps" "bindPose1.wm[5]";
connectAttr "R_Shoulder_joint.bps" "bindPose1.wm[6]";
connectAttr "R_Elbow_joint.bps" "bindPose1.wm[7]";
connectAttr "R_Hand_joint.bps" "bindPose1.wm[8]";
connectAttr "R_Thumb1_joint.bps" "bindPose1.wm[9]";
connectAttr "R_Mid1_joint.bps" "bindPose1.wm[10]";
connectAttr "R_Thumb2_joint.bps" "bindPose1.wm[11]";
connectAttr "R_Mid2_joint.bps" "bindPose1.wm[12]";
connectAttr "L_Cav_joint.bps" "bindPose1.wm[13]";
connectAttr "L_Shoulder_joint.bps" "bindPose1.wm[14]";
connectAttr "L_Elbow_joint.bps" "bindPose1.wm[15]";
connectAttr "L_Hand_joint.bps" "bindPose1.wm[16]";
connectAttr "L_Thumb1_joint.bps" "bindPose1.wm[17]";
connectAttr "L_Mid1_joint.bps" "bindPose1.wm[18]";
connectAttr "L_Thumb2_joint.bps" "bindPose1.wm[19]";
connectAttr "L_Mid2_joint.bps" "bindPose1.wm[20]";
connectAttr "C_Bell_joint.bps" "bindPose1.wm[21]";
connectAttr "Pelvis_joint.bps" "bindPose1.wm[22]";
connectAttr "L_Hip_joint.bps" "bindPose1.wm[23]";
connectAttr "R_Hip_joint.bps" "bindPose1.wm[24]";
connectAttr "L_Knee_joint.bps" "bindPose1.wm[25]";
connectAttr "R_Knee_joint.bps" "bindPose1.wm[26]";
connectAttr "L_Ankie_joint.bps" "bindPose1.wm[27]";
connectAttr "R_Ankie_joint.bps" "bindPose1.wm[28]";
connectAttr "F_Veil1_joint.bps" "bindPose1.wm[29]";
connectAttr "Bell_F_Veil_FShapeOrig.w" "skinCluster2.ip[0].ig";
connectAttr "Bell_F_Veil_FShapeOrig.o" "skinCluster2.orggeom[0]";
connectAttr "C_Bell_joint.wm" "skinCluster2.ma[0]";
connectAttr "F_Veil1_joint.wm" "skinCluster2.ma[1]";
connectAttr "C_Bell_joint.liw" "skinCluster2.lw[0]";
connectAttr "F_Veil1_joint.liw" "skinCluster2.lw[1]";
connectAttr "C_Bell_joint.obcc" "skinCluster2.ifcl[0]";
connectAttr "F_Veil1_joint.obcc" "skinCluster2.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "F_Veil1_joint.msg" "skinCluster2.ptt";
connectAttr "L_Shoulder_pCube_FShapeOrig.w" "skinCluster3.ip[0].ig";
connectAttr "L_Shoulder_pCube_FShapeOrig.o" "skinCluster3.orggeom[0]";
connectAttr "L_Shoulder_joint.wm" "skinCluster3.ma[0]";
connectAttr "L_Shoulder_joint.liw" "skinCluster3.lw[0]";
connectAttr "L_Shoulder_joint.obcc" "skinCluster3.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "L_Shoulder_joint.msg" "skinCluster3.ptt";
connectAttr "L_knee_FShapeOrig.w" "skinCluster4.ip[0].ig";
connectAttr "L_knee_FShapeOrig.o" "skinCluster4.orggeom[0]";
connectAttr "L_Knee_joint.wm" "skinCluster4.ma[0]";
connectAttr "L_Knee_joint.liw" "skinCluster4.lw[0]";
connectAttr "L_Knee_joint.obcc" "skinCluster4.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "head_belt_FShapeOrig.w" "skinCluster5.ip[0].ig";
connectAttr "head_belt_FShapeOrig.o" "skinCluster5.orggeom[0]";
connectAttr "C_Bell_joint.wm" "skinCluster5.ma[0]";
connectAttr "C_Bell_joint.liw" "skinCluster5.lw[0]";
connectAttr "C_Bell_joint.obcc" "skinCluster5.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "R_Knee_FShapeOrig.w" "skinCluster6.ip[0].ig";
connectAttr "R_Knee_FShapeOrig.o" "skinCluster6.orggeom[0]";
connectAttr "R_Knee_joint.wm" "skinCluster6.ma[0]";
connectAttr "R_Knee_joint.liw" "skinCluster6.lw[0]";
connectAttr "R_Knee_joint.obcc" "skinCluster6.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster6.bp";
connectAttr "L_Veil_pCube_FShapeOrig.w" "skinCluster7.ip[0].ig";
connectAttr "L_Veil_pCube_FShapeOrig.o" "skinCluster7.orggeom[0]";
connectAttr "bindPose2.msg" "skinCluster7.bp";
connectAttr "L_Veil1_joint.wm" "skinCluster7.ma[0]";
connectAttr "L_Veil1_joint.liw" "skinCluster7.lw[0]";
connectAttr "L_Veil1_joint.obcc" "skinCluster7.ifcl[0]";
connectAttr "Root_joint.msg" "bindPose2.m[0]";
connectAttr "C_Bell_joint.msg" "bindPose2.m[1]";
connectAttr "L_Veil1_joint.msg" "bindPose2.m[2]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "helmet_FShapeOrig.w" "skinCluster8.ip[0].ig";
connectAttr "helmet_FShapeOrig.o" "skinCluster8.orggeom[0]";
connectAttr "Head1_joint.wm" "skinCluster8.ma[0]";
connectAttr "Head1_joint.liw" "skinCluster8.lw[0]";
connectAttr "Head1_joint.obcc" "skinCluster8.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "R_hip_FShapeOrig.w" "skinCluster9.ip[0].ig";
connectAttr "R_hip_FShapeOrig.o" "skinCluster9.orggeom[0]";
connectAttr "bindPose3.msg" "skinCluster9.bp";
connectAttr "R_Veil1_joint.wm" "skinCluster9.ma[0]";
connectAttr "R_Veil1_joint.liw" "skinCluster9.lw[0]";
connectAttr "R_Veil1_joint.obcc" "skinCluster9.ifcl[0]";
connectAttr "Root_joint.msg" "bindPose3.m[0]";
connectAttr "C_Bell_joint.msg" "bindPose3.m[1]";
connectAttr "R_Veil1_joint.msg" "bindPose3.m[2]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "R_shoulder_FShapeOrig.w" "skinCluster10.ip[0].ig";
connectAttr "R_shoulder_FShapeOrig.o" "skinCluster10.orggeom[0]";
connectAttr "R_Shoulder_joint.wm" "skinCluster10.ma[0]";
connectAttr "R_Shoulder_joint.liw" "skinCluster10.lw[0]";
connectAttr "R_Shoulder_joint.obcc" "skinCluster10.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster10.bp";
connectAttr "cape_FShapeOrig.w" "skinCluster11.ip[0].ig";
connectAttr "cape_FShapeOrig.o" "skinCluster11.orggeom[0]";
connectAttr "bindPose4.msg" "skinCluster11.bp";
connectAttr "Cape1_joint.wm" "skinCluster11.ma[0]";
connectAttr "Cape2_joint.wm" "skinCluster11.ma[1]";
connectAttr "Cape3_joint.wm" "skinCluster11.ma[2]";
connectAttr "Cape4_joint.wm" "skinCluster11.ma[3]";
connectAttr "Cape1_joint.liw" "skinCluster11.lw[0]";
connectAttr "Cape2_joint.liw" "skinCluster11.lw[1]";
connectAttr "Cape3_joint.liw" "skinCluster11.lw[2]";
connectAttr "Cape4_joint.liw" "skinCluster11.lw[3]";
connectAttr "Cape1_joint.obcc" "skinCluster11.ifcl[0]";
connectAttr "Cape2_joint.obcc" "skinCluster11.ifcl[1]";
connectAttr "Cape3_joint.obcc" "skinCluster11.ifcl[2]";
connectAttr "Cape4_joint.obcc" "skinCluster11.ifcl[3]";
connectAttr "Cape2_joint.msg" "skinCluster11.ptt";
connectAttr "Root_joint.msg" "bindPose4.m[0]";
connectAttr "Back1_joint.msg" "bindPose4.m[1]";
connectAttr "Chest_joint.msg" "bindPose4.m[2]";
connectAttr "Neck_joint.msg" "bindPose4.m[3]";
connectAttr "Cape1_joint.msg" "bindPose4.m[4]";
connectAttr "Cape2_joint.msg" "bindPose4.m[5]";
connectAttr "Cape3_joint.msg" "bindPose4.m[6]";
connectAttr "Cape4_joint.msg" "bindPose4.m[7]";
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bindPose4.m[0]" "bindPose4.p[1]";
connectAttr "bindPose4.m[1]" "bindPose4.p[2]";
connectAttr "bindPose4.m[2]" "bindPose4.p[3]";
connectAttr "bindPose4.m[3]" "bindPose4.p[4]";
connectAttr "bindPose4.m[4]" "bindPose4.p[5]";
connectAttr "bindPose4.m[5]" "bindPose4.p[6]";
connectAttr "bindPose4.m[6]" "bindPose4.p[7]";
connectAttr "Shield_pCube_FShapeOrig.w" "skinCluster12.ip[0].ig";
connectAttr "Shield_pCube_FShapeOrig.o" "skinCluster12.orggeom[0]";
connectAttr "bindPose5.msg" "skinCluster12.bp";
connectAttr "Shield_joint.wm" "skinCluster12.ma[0]";
connectAttr "Shield_joint.liw" "skinCluster12.lw[0]";
connectAttr "Shield_joint.obcc" "skinCluster12.ifcl[0]";
connectAttr "Root_joint.msg" "bindPose5.m[0]";
connectAttr "Back1_joint.msg" "bindPose5.m[1]";
connectAttr "Chest_joint.msg" "bindPose5.m[2]";
connectAttr "R_Cav_joint.msg" "bindPose5.m[3]";
connectAttr "R_Shoulder_joint.msg" "bindPose5.m[4]";
connectAttr "R_Elbow_joint.msg" "bindPose5.m[5]";
connectAttr "R_Hand_joint.msg" "bindPose5.m[6]";
connectAttr "Shield_joint.msg" "bindPose5.m[7]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "bindPose5.m[3]" "bindPose5.p[4]";
connectAttr "bindPose5.m[4]" "bindPose5.p[5]";
connectAttr "bindPose5.m[5]" "bindPose5.p[6]";
connectAttr "bindPose5.m[6]" "bindPose5.p[7]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Sheild_guardUV1_1.msg" ":defaultTextureList1.tx" -na;
// End of Shield guard_F.ma
