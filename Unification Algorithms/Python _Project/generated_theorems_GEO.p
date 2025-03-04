cnf(generated_0, conjecture, (~between(X,Y,X) | X=Y)).
cnf(generated_1, conjecture, (~between(X,Y,V) | between(X,Y,Z) | ~between(Y,Z,V))).
cnf(generated_2, conjecture, (between(X,V,Z) | between(X,Z,V) | ~between(X,Y,Z) | ~between(X,Y,V) | X=Y)).
cnf(generated_3, conjecture, (~equidistant(X,Y,Z,Z) | X=Y)).
cnf(generated_4, conjecture, (~equidistant(X,Y,V2,W) | equidistant(Z,V,V2,W) | ~equidistant(X,Y,Z,V))).
cnf(generated_5, conjecture, (between(X,outer_pasch(W,X,Y,Z,V),Y) | ~between(X,W,V) | ~between(Y,V,Z))).
cnf(generated_6, conjecture, (between(Z,W,outer_pasch(W,X,Y,Z,V)) | ~between(X,W,V) | ~between(Y,V,Z))).
cnf(generated_7, conjecture, (X=V | ~between(X,V,W) | between(X,Z,euclid1(W,X,Y,Z,V)) | ~between(Y,V,Z))).
cnf(generated_8, conjecture, (between(X,Y,euclid2(W,X,Y,Z,V)) | X=V | ~between(X,V,W) | ~between(Y,V,Z))).
cnf(generated_9, conjecture, (X=V | between(euclid1(W,X,Y,Z,V),W,euclid2(W,X,Y,Z,V)) | ~between(X,V,W) | ~between(Y,V,Z))).
cnf(generated_10, conjecture, (~equidistant(X,V,X1,V1) | ~equidistant(Y,V,Y1,V1) | X=Y | ~equidistant(Y,Z,Y1,Z1) | ~equidistant(X,Y,X1,Y1) | equidistant(Z,V,Z1,V1) | ~between(X1,Y1,Z1) | ~between(X,Y,Z))).
cnf(generated_11, conjecture, (~equidistant(X,W,X,V) | between(Y,Z,X) | between(Z,X,Y) | ~equidistant(Y,W,Y,V) | between(X,Y,Z) | W=V | ~equidistant(Z,W,Z,V))).
cnf(generated_12, conjecture, (~equidistant(V,Z,V,Z1) | equidistant(V,Y,V,continuous(X,Y,Z,X1,Z1,V)) | ~equidistant(V,X,V,X1) | ~between(V,X,Z) | ~between(X,Y,Z))).
cnf(generated_13, conjecture, (~equidistant(V,Z,V,Z1) | ~equidistant(V,X,V,X1) | between(X1,continuous(X,Y,Z,X1,Z1,V),Z1) | ~between(V,X,Z) | ~between(X,Y,Z))).
cnf(generated_14, conjecture, (between(X,Y,Z) | ~colinear(X,Y,Z) | between(X,Z,Y) | between(Y,X,Z))).
cnf(generated_15, conjecture, (colinear(X,Y,Z) | ~between(X,Y,Z))).
cnf(generated_16, conjecture, (colinear(X,Y,Z) | ~between(Y,X,Z))).
cnf(generated_17, conjecture, (~between(X,Z,Y) | colinear(X,Y,Z))).
cnf(generated_18, conjecture, (~equidistant(X,Y,V2,W) | equidistant(Z,V,V2,W) | ~equidistant(X,Y,Z,V))).
cnf(generated_19, conjecture, (~equidistant(X,Y,Z,Z) | X=Y)).
cnf(generated_20, conjecture, (~equidistant(X,V,X1,V1) | ~equidistant(Y,V,Y1,V1) | X=Y | ~equidistant(Y,Z,Y1,Z1) | ~equidistant(X,Y,X1,Y1) | equidistant(Z,V,Z1,V1) | ~between(X1,Y1,Z1) | ~between(X,Y,Z))).
cnf(generated_21, conjecture, (~between(X,Y,X) | X=Y)).
cnf(generated_22, conjecture, (~between(U,V,W) | between(V,inner_pasch(U,V,W,X,Y),Y) | ~between(Y,X,W))).
cnf(generated_23, conjecture, (~between(U,V,W) | ~between(Y,X,W) | between(X,inner_pasch(U,V,W,X,Y),U))).
cnf(generated_24, conjecture, (~equidistant(X,W,X,V) | between(Y,Z,X) | between(Z,X,Y) | ~equidistant(Y,W,Y,V) | between(X,Y,Z) | W=V | ~equidistant(Z,W,Z,V))).
cnf(generated_25, conjecture, (U=W | ~between(U,W,Y) | ~between(V,W,X) | between(U,V,euclid1(U,V,W,X,Y)))).
cnf(generated_26, conjecture, (U=W | ~between(U,W,Y) | between(U,X,euclid2(U,V,W,X,Y)) | ~between(V,W,X))).
cnf(generated_27, conjecture, (U=W | ~between(U,W,Y) | between(euclid1(U,V,W,X,Y),Y,euclid2(U,V,W,X,Y)) | ~between(V,W,X))).
cnf(generated_28, conjecture, (~between(V,W,X) | between(V1,continuous(U,V,V1,W,X,X1),X1) | ~equidistant(U,X,U,X1) | ~between(U,V,X) | ~equidistant(U,V,U,V1))).
cnf(generated_29, conjecture, (~between(V,W,X) | ~equidistant(U,X,U,X1) | ~between(U,V,X) | equidistant(U,W,U,continuous(U,V,V1,W,X,X1)) | ~equidistant(U,V,U,V1))).
cnf(generated_30, conjecture, (colinear(X,Y,Z) | ~between(X,Y,Z))).
cnf(generated_31, conjecture, (~between(Y,Z,X) | colinear(X,Y,Z))).
cnf(generated_32, conjecture, (~between(Z,X,Y) | colinear(X,Y,Z))).
cnf(generated_33, conjecture, (between(Z,X,Y) | between(X,Y,Z) | ~colinear(X,Y,Z) | between(Y,Z,X))).
cnf(generated_34, conjecture, (Z1=Z2 | ~point(Z1) | on(Z1,line_from_to(Z1,Z2)) | ~point(Z2))).
cnf(generated_35, conjecture, (on(Z2,line_from_to(Z1,Z2)) | Z1=Z2 | ~point(Z1) | ~point(Z2))).
cnf(generated_36, conjecture, (Z1=Z2 | ~point(Z1) | line(line_from_to(Z1,Z2)) | ~point(Z2))).
cnf(generated_37, conjecture, (~point(Z2) | ~on(Z2,Y3) | ~line(Y4) | Y3=Y4 | ~point(Z1) | ~on(Z1,Y3) | Z1=Z2 | ~line(Y3) | ~on(Z2,Y4) | ~on(Z1,Y4))).
cnf(generated_38, conjecture, (~line(Y1) | on(point_1_on_line(Y1),Y1))).
cnf(generated_39, conjecture, (on(point_2_on_line(Y1),Y1) | ~line(Y1))).
cnf(generated_40, conjecture, (~line(Y1) | point(point_1_on_line(Y1)))).
cnf(generated_41, conjecture, (~line(Y1) | point(point_2_on_line(Y1)))).
cnf(generated_42, conjecture, (point_1_on_line(Y1)!=point_2_on_line(Y1) | ~line(Y1))).
cnf(generated_43, conjecture, (~line(Y1) | ~on(point_not_on_line(Y1),Y1))).
cnf(generated_44, conjecture, (~line(Y1) | point(point_not_on_line(Y1)))).
cnf(generated_45, conjecture, (~plane(Z1) | on(point_on_plane(Z1),Z1))).
cnf(generated_46, conjecture, (~plane(Z1) | point(point_on_plane(Z1)))).
cnf(generated_47, conjecture, (~plane(Z1) | ~on(point_not_on_plane(Z1),Z1))).
cnf(generated_48, conjecture, (~plane(Z1) | point(point_not_on_plane(Z1)))).
cnf(generated_49, conjecture, (X2=X3 | ~point(X3) | on(X1,plane_for_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_50, conjecture, (X2=X3 | ~point(X3) | ~point(X1) | X1=X3 | on(X2,plane_for_points(X1,X2,X3)) | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_51, conjecture, (X2=X3 | ~point(X3) | on(X3,plane_for_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_52, conjecture, (X2=X3 | ~point(X3) | ~point(X1) | X1=X3 | ~point(X2) | plane(plane_for_points(X1,X2,X3)) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_53, conjecture, (~plane(Z1) | ~on(X2,Z1) | X2=X3 | ~on(X1,Z2) | ~point(X3) | ~plane(Z2) | ~on(X2,Z2) | Z1=Z2 | ~on(X1,Z1) | ~point(X1) | X1=X3 | ~on(X3,Z2) | ~point(X2) | X1=X2 | collinear(X1,X2,X3) | ~on(X3,Z1))).
cnf(generated_54, conjecture, (~plane(Z1) | ~on(X2,Z1) | ~line(Y1) | ~on(X1,Y1) | on(Y1,Z1) | ~on(X1,Z1) | ~on(X2,Y1) | ~point(X1) | ~point(X2) | X1=X2)).
cnf(generated_55, conjecture, (~plane(Z1) | ~on(X1,Z2) | on(common_point_on_planes(Z1,Z2,X1),Z1) | ~plane(Z2) | Z1=Z2 | ~on(X1,Z1) | ~point(X1))).
cnf(generated_56, conjecture, (~plane(Z1) | ~on(X1,Z2) | on(common_point_on_planes(Z1,Z2,X1),Z2) | ~plane(Z2) | Z1=Z2 | ~on(X1,Z1) | ~point(X1))).
cnf(generated_57, conjecture, (~plane(Z1) | ~on(X1,Z2) | ~plane(Z2) | Z1=Z2 | ~on(X1,Z1) | ~point(X1) | point(common_point_on_planes(Z1,Z2,X1)))).
cnf(generated_58, conjecture, (~plane(Z1) | ~on(X1,Z2) | ~plane(Z2) | Z1=Z2 | ~on(X1,Z1) | X1!=common_point_on_planes(Z1,Z2,X1) | ~point(X1))).
cnf(generated_59, conjecture, (X2=X3 | ~point(X3) | on(X1,line_through_3_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3))).
cnf(generated_60, conjecture, (X2=X3 | on(X2,line_through_3_points(X1,X2,X3)) | ~point(X3) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3))).
cnf(generated_61, conjecture, (X2=X3 | on(X3,line_through_3_points(X1,X2,X3)) | ~point(X3) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3))).
cnf(generated_62, conjecture, (X2=X3 | ~point(X3) | line(line_through_3_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3))).
cnf(generated_63, conjecture, (X2=X3 | ~point(X3) | ~line(Y) | ~on(X1,Y) | ~on(X3,Y) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3) | ~on(X2,Y))).
cnf(generated_64, conjecture, (~incident_c(C,A) | incident_c(C,B) | ~part_of(A,B))).
cnf(generated_65, conjecture, (incident_c(ax0_sk1(A,B),A) | part_of(A,B))).
cnf(generated_66, conjecture, (~incident_c(ax0_sk1(A,B),B) | part_of(A,B))).
cnf(generated_67, conjecture, (incident_c(D,B) | ~incident_c(D,A) | incident_c(D,C) | A!=sum(B,C))).
cnf(generated_68, conjecture, (incident_c(D,A) | ~incident_c(D,B) | A!=sum(B,C))).
cnf(generated_69, conjecture, (~incident_c(D,C) | incident_c(D,A) | A!=sum(B,C))).
cnf(generated_70, conjecture, (incident_c(ax0_sk2(A,B,C),C) | incident_c(ax0_sk2(A,B,C),A) | C=sum(B,A) | incident_c(ax0_sk2(A,B,C),B))).
cnf(generated_71, conjecture, (incident_c(ax0_sk2(A,B,C),C) | ~incident_c(ax0_sk2(A,B,C),C) | C=sum(B,A))).
cnf(generated_72, conjecture, (incident_c(ax0_sk2(A,B,C),A) | ~incident_c(ax0_sk2(A,B,C),B) | incident_c(ax0_sk2(A,B,C),B) | C=sum(B,A))).
cnf(generated_73, conjecture, (incident_c(ax0_sk2(A,B,C),A) | ~incident_c(ax0_sk2(A,B,C),A) | C=sum(B,A) | incident_c(ax0_sk2(A,B,C),B))).
cnf(generated_74, conjecture, (~incident_c(ax0_sk2(A,B,C),C) | ~incident_c(ax0_sk2(A,B,C),B) | C=sum(B,A))).
cnf(generated_75, conjecture, (~incident_c(ax0_sk2(A,B,C),C) | ~incident_c(ax0_sk2(A,B,C),A) | C=sum(B,A))).
cnf(generated_76, conjecture, (~end_point(A,B) | incident_c(A,B))).
cnf(generated_77, conjecture, (~part_of(D,B) | ~part_of(C,B) | ~incident_c(A,D) | ~incident_c(A,C) | part_of(D,C) | ~end_point(A,B) | part_of(C,D))).
cnf(generated_78, conjecture, (end_point(A,B) | part_of(ax0_sk3(B,A),B) | ~incident_c(A,B))).
cnf(generated_79, conjecture, (end_point(A,B) | ~incident_c(A,B) | part_of(ax0_sk4(B,A),B))).
cnf(generated_80, conjecture, (end_point(A,B) | incident_c(A,ax0_sk3(B,A)) | ~incident_c(A,B))).
cnf(generated_81, conjecture, (end_point(A,B) | incident_c(A,ax0_sk4(B,A)) | ~incident_c(A,B))).
cnf(generated_82, conjecture, (~part_of(ax0_sk3(B,A),ax0_sk4(B,A)) | end_point(A,B) | ~incident_c(A,B))).
cnf(generated_83, conjecture, (end_point(A,B) | ~part_of(ax0_sk4(B,A),ax0_sk3(B,A)) | ~incident_c(A,B))).
cnf(generated_84, conjecture, (incident_c(A,B) | ~inner_point(A,B))).
cnf(generated_85, conjecture, (~end_point(A,B) | ~inner_point(A,B))).
cnf(generated_86, conjecture, (end_point(A,B) | ~incident_c(A,B) | inner_point(A,B))).
cnf(generated_87, conjecture, (incident_c(A,B) | ~meet(A,B,C))).
cnf(generated_88, conjecture, (incident_c(A,C) | ~meet(A,B,C))).
cnf(generated_89, conjecture, (~incident_c(D,C) | end_point(D,B) | ~incident_c(D,B) | ~meet(A,B,C))).
cnf(generated_90, conjecture, (~incident_c(D,C) | end_point(D,C) | ~incident_c(D,B) | ~meet(A,B,C))).
cnf(generated_91, conjecture, (~incident_c(A,C) | meet(A,B,C) | ~incident_c(A,B) | incident_c(ax0_sk5(C,B,A),B))).
cnf(generated_92, conjecture, (~incident_c(A,C) | meet(A,B,C) | incident_c(ax0_sk5(C,B,A),C) | ~incident_c(A,B))).
cnf(generated_93, conjecture, (~end_point(ax0_sk5(C,B,A),B) | meet(A,B,C) | ~end_point(ax0_sk5(C,B,A),C) | ~incident_c(A,B) | ~incident_c(A,C))).
cnf(generated_94, conjecture, (~end_point(B,A) | ~closed(A))).
cnf(generated_95, conjecture, (end_point(ax0_sk6(A),A) | closed(A))).
cnf(generated_96, conjecture, (~open(A) | end_point(ax0_sk7(A),A))).
cnf(generated_97, conjecture, (~end_point(A,B) | open(B))).
cnf(generated_98, conjecture, (A=B | open(A) | ~part_of(A,B))).
cnf(generated_99, conjecture, (~part_of(D,B) | part_of(C,A) | ~part_of(C,B) | ~end_point(E,A) | part_of(A,C) | ~end_point(E,D) | ~part_of(A,B) | part_of(D,C) | part_of(D,A) | ~end_point(E,C) | part_of(C,D) | part_of(A,D))).
cnf(generated_100, conjecture, (meet(A,ax0_sk9(A,B),ax0_sk10(A,B)) | ~inner_point(A,B))).
cnf(generated_101, conjecture, (B=sum(ax0_sk9(A,B),ax0_sk10(A,B)) | ~inner_point(A,B))).
cnf(generated_102, conjecture, (~end_point(C,B) | A=D | ~end_point(D,B) | ~end_point(A,B) | A=C | C=D)).
cnf(generated_103, conjecture, (~end_point(A,B) | end_point(ax0_sk11(A,B),B))).
cnf(generated_104, conjecture, (~end_point(A,B) | A!=ax0_sk11(A,B))).
cnf(generated_105, conjecture, (meet(E,C,D) | ~meet(B,C,D) | A!=sum(C,D) | ~end_point(E,C) | ~closed(A))).
cnf(generated_106, conjecture, (ax0_sk12(C,B)=sum(B,C) | ~meet(A,B,C))).
cnf(generated_107, conjecture, (incident_c(ax0_sk13(A,B),A) | B=A | incident_c(ax0_sk13(A,B),B))).
cnf(generated_108, conjecture, (B=A | incident_c(ax0_sk13(A,B),B) | ~incident_c(ax0_sk13(A,B),B))).
cnf(generated_109, conjecture, (incident_c(ax0_sk13(A,B),A) | B=A | ~incident_c(ax0_sk13(A,B),A))).
cnf(generated_110, conjecture, (B=A | ~incident_c(ax0_sk13(A,B),A) | ~incident_c(ax0_sk13(A,B),B))).
cnf(generated_111, conjecture, (~between_c(A,B,C,D) | B!=D)).
cnf(generated_112, conjecture, (~between_c(A,B,C,D) | part_of(ax1_sk1(D,C,B,A),A))).
cnf(generated_113, conjecture, (end_point(B,ax1_sk1(D,C,B,A)) | ~between_c(A,B,C,D))).
cnf(generated_114, conjecture, (~between_c(A,B,C,D) | end_point(D,ax1_sk1(D,C,B,A)))).
cnf(generated_115, conjecture, (~between_c(A,B,C,D) | inner_point(C,ax1_sk1(D,C,B,A)))).
cnf(generated_116, conjecture, (~part_of(C,D) | between_c(D,A,E,B) | ~end_point(A,C) | ~end_point(B,C) | A=B | ~inner_point(E,C))).
cnf(generated_117, conjecture, (ordered_by(A,B,C) | ordered_by(A,D,C) | ~between_o(A,B,C,D))).
cnf(generated_118, conjecture, (ordered_by(A,B,C) | ~between_o(A,B,C,D) | ordered_by(A,C,B))).
cnf(generated_119, conjecture, (ordered_by(A,D,C) | ~between_o(A,B,C,D) | ordered_by(A,C,D))).
cnf(generated_120, conjecture, (ordered_by(A,C,B) | ~between_o(A,B,C,D) | ordered_by(A,C,D))).
cnf(generated_121, conjecture, (~ordered_by(A,B,C) | ~ordered_by(A,C,D) | between_o(A,B,C,D))).
cnf(generated_122, conjecture, (~ordered_by(A,B,C) | ~ordered_by(A,C,D) | between_o(A,D,C,B))).
cnf(generated_123, conjecture, (~start_point(A,B) | incident_o(A,B))).
cnf(generated_124, conjecture, (A=C | ~start_point(A,B) | ~incident_o(C,B) | ordered_by(B,A,C))).
cnf(generated_125, conjecture, (A!=ax2_sk1(B,A) | start_point(A,B) | ~incident_o(A,B))).
cnf(generated_126, conjecture, (incident_o(ax2_sk1(B,A),B) | start_point(A,B) | ~incident_o(A,B))).
cnf(generated_127, conjecture, (~ordered_by(B,A,ax2_sk1(B,A)) | start_point(A,B) | ~incident_o(A,B))).
cnf(generated_128, conjecture, (incident_o(A,B) | ~finish_point(A,B))).
cnf(generated_129, conjecture, (A=C | ~incident_o(C,B) | ordered_by(B,C,A) | ~finish_point(A,B))).
cnf(generated_130, conjecture, (A!=ax2_sk2(B,A) | finish_point(A,B) | ~incident_o(A,B))).
cnf(generated_131, conjecture, (incident_o(ax2_sk2(B,A),B) | finish_point(A,B) | ~incident_o(A,B))).
cnf(generated_132, conjecture, (finish_point(A,B) | ~incident_o(A,B) | ~ordered_by(B,ax2_sk2(B,A),A))).
cnf(generated_133, conjecture, (incident_o(B,A) | ~ordered_by(A,B,C))).
cnf(generated_134, conjecture, (~ordered_by(A,B,C) | incident_o(C,A))).
cnf(generated_135, conjecture, (~incident_o(A,B) | incident_c(A,ax2_sk3(B)))).
cnf(generated_136, conjecture, (~incident_c(A,ax2_sk3(B)) | incident_o(A,B))).
cnf(generated_137, conjecture, (incident_c(E,ax2_sk4(A,D,C,B)) | ~between_o(A,B,C,D) | ~incident_o(E,A))).
cnf(generated_138, conjecture, (incident_o(E,A) | ~between_o(A,B,C,D) | ~incident_c(E,ax2_sk4(A,D,C,B)))).
cnf(generated_139, conjecture, (~between_o(A,B,C,D) | between_c(ax2_sk4(A,D,C,B),B,C,D))).
cnf(generated_140, conjecture, (between_o(B,E,D,C) | incident_o(ax2_sk5(A,B,C,D,E),B) | incident_c(ax2_sk5(A,B,C,D,E),A) | ~between_c(A,E,D,C))).
cnf(generated_141, conjecture, (between_o(B,E,D,C) | incident_o(ax2_sk5(A,B,C,D,E),B) | ~incident_o(ax2_sk5(A,B,C,D,E),B) | ~between_c(A,E,D,C))).
cnf(generated_142, conjecture, (~incident_c(ax2_sk5(A,B,C,D,E),A) | incident_c(ax2_sk5(A,B,C,D,E),A) | ~between_c(A,E,D,C) | between_o(B,E,D,C))).
cnf(generated_143, conjecture, (~incident_c(ax2_sk5(A,B,C,D,E),A) | ~incident_o(ax2_sk5(A,B,C,D,E),B) | ~between_c(A,E,D,C) | between_o(B,E,D,C))).
cnf(generated_144, conjecture, (~open(A) | B=C | ~incident_o(D,ax2_sk7(A,C,B)) | incident_c(D,A) | ~incident_c(C,A) | ~incident_c(B,A))).
cnf(generated_145, conjecture, (~open(A) | B=C | incident_o(D,ax2_sk7(A,C,B)) | ~incident_c(D,A) | ~incident_c(C,A) | ~incident_c(B,A))).
cnf(generated_146, conjecture, (~open(A) | B=C | ordered_by(ax2_sk7(A,C,B),B,C) | ~incident_c(C,A) | ~incident_c(B,A))).
cnf(generated_147, conjecture, (ordered_by(A,ax2_sk8(B,A),ax2_sk9(B,A)) | ordered_by(B,ax2_sk8(B,A),ax2_sk9(B,A)) | A=B)).
cnf(generated_148, conjecture, (ordered_by(A,ax2_sk8(B,A),ax2_sk9(B,A)) | A=B | ~ordered_by(A,ax2_sk8(B,A),ax2_sk9(B,A)))).
cnf(generated_149, conjecture, (~ordered_by(A,ax2_sk8(A,B),ax2_sk9(A,B)) | B=A | ordered_by(A,ax2_sk8(A,B),ax2_sk9(A,B)))).
cnf(generated_150, conjecture, (~ordered_by(A,ax2_sk8(A,B),ax2_sk9(A,B)) | B=A | ~ordered_by(B,ax2_sk8(A,B),ax2_sk9(A,B)))).
cnf(generated_151, conjecture, (~incident_o(C,B) | incident_c(C,A) | A!=underlying_curve(B))).
cnf(generated_152, conjecture, (incident_o(C,B) | ~incident_c(C,A) | A!=underlying_curve(B))).
cnf(generated_153, conjecture, (incident_o(ax2_sk10(A,B),A) | B=underlying_curve(A) | incident_c(ax2_sk10(A,B),B))).
cnf(generated_154, conjecture, (incident_o(ax2_sk10(A,B),A) | B=underlying_curve(A) | ~incident_o(ax2_sk10(A,B),A))).
cnf(generated_155, conjecture, (B=underlying_curve(A) | incident_c(ax2_sk10(A,B),B) | ~incident_c(ax2_sk10(A,B),B))).
cnf(generated_156, conjecture, (B=underlying_curve(A) | ~incident_c(ax2_sk10(A,B),B) | ~incident_o(ax2_sk10(A,B),A))).
cnf(generated_157, conjecture, (once(at_the_same_time(at(A,C),at(B,C))) | ~connect(A,B,C))).
cnf(generated_158, conjecture, (~once(at_the_same_time(at(A,B),at(C,B))) | connect(A,C,B))).
cnf(generated_159, conjecture, (~once(at_the_same_time(A,B)) | once(at_the_same_time(B,A)))).
cnf(generated_160, conjecture, (~once(at_the_same_time(A,B)) | once(at_the_same_time(B,A)))).
cnf(generated_161, conjecture, (~once(at_the_same_time(at_the_same_time(A,B),C)) | once(at_the_same_time(A,at_the_same_time(B,C))))).
cnf(generated_162, conjecture, (~once(at_the_same_time(A,at_the_same_time(B,C))) | once(at_the_same_time(at_the_same_time(A,B),C)))).
cnf(generated_163, conjecture, (once(at_the_same_time(A,A)) | ~once(A))).
cnf(generated_164, conjecture, (~once(at_the_same_time(A,B)) | once(A))).
cnf(generated_165, conjecture, (~once(at_the_same_time(A,B)) | once(B))).
cnf(generated_166, conjecture, (~once(at(A,B)) | incident_o(B,trajectory_of(A)))).
cnf(generated_167, conjecture, (once(at(B,A)) | ~incident_o(A,trajectory_of(B)))).
cnf(generated_168, conjecture, (~once(at_the_same_time(at(A,E),at(C,F))) | ~ordered_by(trajectory_of(A),B,E) | ~once(at_the_same_time(at(A,B),at(C,D))) | ~ordered_by(trajectory_of(C),F,D))).
cnf(generated_169, conjecture, (once(at_the_same_time(A,at(B,ax3_sk2(B,A)))) | ~once(A))).
cnf(generated_170, conjecture, (point_on_line(Z1,line_from_to(Z1,Z2)) | ~point(Z1) | Z1=Z2 | ~point(Z2))).
cnf(generated_171, conjecture, (Z1=Z2 | ~point(Z1) | point_on_line(Z2,line_from_to(Z1,Z2)) | ~point(Z2))).
cnf(generated_172, conjecture, (Z1=Z2 | ~point(Z1) | line(line_from_to(Z1,Z2)) | ~point(Z2))).
cnf(generated_173, conjecture, (~point_on_line(Z1,Y3) | ~point_on_line(Z2,Y3) | ~point_on_line(Z2,Y4) | ~point(Z2) | ~line(Y4) | Y3=Y4 | ~point(Z1) | Z1=Z2 | ~point_on_line(Z1,Y4) | ~line(Y3))).
cnf(generated_174, conjecture, (~line(Y1) | point_on_line(point_1_on_line(Y1),Y1))).
cnf(generated_175, conjecture, (point_on_line(point_2_on_line(Y1),Y1) | ~line(Y1))).
cnf(generated_176, conjecture, (~line(Y1) | point(point_1_on_line(Y1)))).
cnf(generated_177, conjecture, (~line(Y1) | point(point_2_on_line(Y1)))).
cnf(generated_178, conjecture, (point_1_on_line(Y1)!=point_2_on_line(Y1) | ~line(Y1))).
cnf(generated_179, conjecture, (~point_on_line(a_point_not_on_line(Y1),Y1) | ~line(Y1))).
cnf(generated_180, conjecture, (~line(Y1) | point(a_point_not_on_line(Y1)))).
cnf(generated_181, conjecture, (~plane(Z1) | point_on_plane(a_point_on_plane(Z1),Z1))).
cnf(generated_182, conjecture, (~plane(Z1) | point(a_point_on_plane(Z1)))).
cnf(generated_183, conjecture, (~plane(Z1) | ~point_on_plane(a_point_not_on_plane(Z1),Z1))).
cnf(generated_184, conjecture, (~plane(Z1) | point(a_point_not_on_plane(Z1)))).
cnf(generated_185, conjecture, (X2=X3 | point_on_plane(X1,plane_for_points(X1,X2,X3)) | ~point(X3) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_186, conjecture, (X2=X3 | ~point(X3) | point_on_plane(X2,plane_for_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_187, conjecture, (X2=X3 | ~point(X3) | point_on_plane(X3,plane_for_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_188, conjecture, (X2=X3 | ~point(X3) | ~point(X1) | X1=X3 | ~point(X2) | plane(plane_for_points(X1,X2,X3)) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_189, conjecture, (~plane(Z1) | X2=X3 | ~point_on_plane(X2,Z1) | ~point(X3) | ~point_on_plane(X3,Z1) | ~point_on_plane(X3,Z2) | ~plane(Z2) | ~point_on_plane(X1,Z2) | ~point_on_plane(X1,Z1) | Z1=Z2 | ~point_on_plane(X2,Z2) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
cnf(generated_190, conjecture, (~plane(Z1) | ~point_on_line(X2,Y1) | ~point_on_plane(X2,Z1) | ~line(Y1) | ~point_on_plane(X1,Z1) | line_on_plane(Y1,Z1) | ~point(X1) | ~point(X2) | X1=X2 | ~point_on_line(X1,Y1))).
cnf(generated_191, conjecture, (~plane(Z1) | point_on_plane(common_point_on_planes(Z1,Z2,X1),Z1) | ~plane(Z2) | ~point_on_plane(X1,Z2) | Z1=Z2 | ~point_on_plane(X1,Z1) | ~point(X1))).
cnf(generated_192, conjecture, (~plane(Z1) | point_on_plane(common_point_on_planes(Z1,Z2,X1),Z2) | ~plane(Z2) | ~point_on_plane(X1,Z2) | Z1=Z2 | ~point_on_plane(X1,Z1) | ~point(X1))).
cnf(generated_193, conjecture, (~plane(Z1) | ~plane(Z2) | ~point_on_plane(X1,Z2) | Z1=Z2 | ~point_on_plane(X1,Z1) | ~point(X1) | point(common_point_on_planes(Z1,Z2,X1)))).
cnf(generated_194, conjecture, (~plane(Z1) | ~plane(Z2) | ~point_on_plane(X1,Z2) | Z1=Z2 | ~point_on_plane(X1,Z1) | X1!=common_point_on_planes(Z1,Z2,X1) | ~point(X1))).
cnf(generated_195, conjecture, (X2=X3 | ~point(X3) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3) | point_on_line(X1,line_through_3_points(X1,X2,X3)))).
cnf(generated_196, conjecture, (X2=X3 | ~point(X3) | point_on_line(X2,line_through_3_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3))).
cnf(generated_197, conjecture, (X2=X3 | ~point(X3) | ~point(X1) | X1=X3 | point_on_line(X3,line_through_3_points(X1,X2,X3)) | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3))).
cnf(generated_198, conjecture, (X2=X3 | ~point(X3) | line(line_through_3_points(X1,X2,X3)) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | ~collinear(X1,X2,X3))).
cnf(generated_199, conjecture, (~point_on_line(X3,Y) | X2=X3 | ~point_on_line(X1,Y) | ~point_on_line(X2,Y) | ~point(X3) | ~line(Y) | ~point(X1) | X1=X3 | ~point(X2) | X1=X2 | collinear(X1,X2,X3))).
