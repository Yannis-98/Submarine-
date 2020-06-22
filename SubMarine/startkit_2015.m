%  ================================================================================
%                                                                                 %
%  Purpose : Hydrostatic simulation of the SEAPERCH ROV using MATLAB              %
%                                                                                 %
%  Comment : For more informations, see the Description of Work in HySeap_DoW.pdf %
%  Release : 0.3                                                                  %
%  LastMod : jan. 2015 (J-C Chassaing & D. Lucor, UPMC)                           %
%                                                                                 %
%  TODO    : 1. uncomment lines starting with %%                                  %
%            2. replace ? symbol by MATLAB instructions                           %
%            3. run the code and check the results                                %
%                                                                                 %
%  ================================================================================
   clear all;
%
%  header
   fprintf('                                                        \n' );
   fprintf('                                                        \n' );
   fprintf(' Program : HySeap_2013                                  \n' );
   fprintf(' Function: MATLAB Hydrostatic SEAPERCH simulator        \n' );
   fprintf(' Released: v0.3, jan. 2013 (UPMC)                       \n' );
   fprintf('                                                        \n' );
   fprintf('                                                        \n' );
%
%
%  Technical parameters of the ROV
%  -------------------------------
%% devic_mass   =  ?   ;     %   masse charge embarquee                                       [    g]
%% devic_vol    =  ?   ;     %   volume de la charge embarquee                                [   cl]
%% thrus_mass   =  ?   ;     %   masse d'un moteur                                            [    g]
%% thrus_vol    =  ?   ;     %   volume d'un moteur                                           [   cl]
%% PVC_diam_ext =  ?   ;     %   diametre exterieur du tube PVC                               [   mm]
%% PVC_diam_int =  ?   ;     %   diametre interieur du tube PVC                               [   mm]
%% PVC_mass     =  ?   ;     %   masse par metre des tubes PVC                                [kg/m ]
%% PVC_C_mass   =  ?   ;     %   masse d'un coude PVC                                         [    g]
%% PVC_T_mass   =  ?   ;     %   masse d'une jonction PVC en T                                [    g]
%% float_vol_cor=  ?   ;     %   facteur correctif pour le vol. d'un flotteur/vol. ellipsoide [    -]
%% float_nu     =  ?   ;     %   coefficient de poisson pour les flotteurs
%% float_E      =  ?   ;     %   module de Young pour le polyethylene (400<E<700)
%% rho_PVC      =  ?   ;     %   densite du PVC ( 1380<rho<1410)                              [kg/m3]
%% rho_pol      =  ?   ;     %   densite du polyethylene ( 890<rho<980)                       [kg/m3]
%% rho_water    =  ?   ;     %   [kg/m3]
%% gacc         =  ?   ;     %   [m/s2]
%% axis_a       =  ?   ;     %   [cm]
%
%  conversion to SI units
%  ----------------------
%% devic_mass   = devic_mass   * ? ;   %  [ kg]
%% devic_vol    = devic_vol    * ? ;   %  [ m3]
%% thrus_mass   = thrus_mass   * ? ;   %  [ kg]
%% thrus_vol    = thrus_vol    * ? ;   %  [ m3] 
%% PVC_diam_ext = PVC_diam_ext * ? ;   %  [ m ]
%% PVC_diam_int = PVC_diam_int * ? ;   %  [ m ]
%% PVC_C_mass   = PVC_C_mass   * ? ;   %  [ kg]
%% PVC_T_mass   = PVC_T_mass   * ? ;   %  [ kg]
%% axis_a       = axis_a       * ? ;   %  [ m ]
%
%
%  assemble the frame
%  ------------------
%% nb_PVC_C      =  ? ;
%% nb_PVC_T      =  ? ;
%% nb_PVC_tube1  =  ? ;
%% nb_PVC_tube2  =  ? ;
%% nb_PVC_tube3  =  ? ;
%% nb_PVC_tube4  =  ? ;
%% nb_PVC_tube5  =  ? ;  
%% PVC_C_length1 =  ? ;  % [m]
%% PVC_C_length2 =  ? ;  % [m]
%% PVC_C_length3 =  ? ;  % [m]
%% PVC_C_length4 =  ? ;  % [m]
%% PVC_C_length5 =  ? ;  % [m]

%% frame_mass    =   ? ;

%  WARNING: contributions due to the C- and T-junctions to frame_vol are neglected
%% frame_vol =  ? ;

%  engines
%  -------
%% nb_thrus   = ? ;
%% thrus_mass = ? ;
%% thrus_vol  = ? ;

%% nb_float  = ? ;

%  show results
%  ------------
%% fprintf(' frame_mass = %12.8f kg\n', frame_mass);
%% fprintf(' thrus_mass = %12.8f kg\n', thrus_mass);
%% fprintf(' devic_mass = %12.8f kg\n', devic_mass);
%% fprintf('                       \n'            );
%% fprintf(' frame_vol  = %12.8f m3\n', frame_vol );
%% fprintf(' thrus_vol  = %12.8f m3\n', thrus_vol );
%% fprintf(' devic_vol  = %12.8f m3\n', devic_vol );


% ================================================================================
% Question 1: compute b to ensure zero flottability in the case of zero float_mass 
%             and idealized floats (float_vol = float_ellipsoid)
% ================================================================================
% 
%% axis_b_Q1  =  ? ;
 
   fprintf('                       \n'            );
   fprintf(' QUESTION 1:           \n'            );
   fprintf(' -----------           \n'            );
%% fprintf(' b          = %12.8f m \n', axis_b_Q1 );


% ================================================================================
% Question 2: set float thickness to float_thick=1 mm. Compute the relative 
%             variation in vol_float compare those of Question 1.
% ================================================================================
% 
%  set the thickness of the float  [m]
%% float_thick= ? ; 

%% rhs        = ? ;
%% coef_a     = ? ;
%% coef_b     = ? ;
%% coef_c     = ? ;

%% polynome   = [coef_a coef_b coef_c] ;  % represents the polynomial expression: coef_a*x^2 + coef_b*x + coef_c =0
%% r          = roots(polynome) ;         %  return the roots of the polynomial in a column vector 
%% axis_b_Q2  = max(r) ;

%  variation du volume des flotteurs entre les questions 1 & 2
%% vol_Q1        = ? ;
%% vol_Q2        = ? ;
%% vol_variation = ? ;

   fprintf('                       \n'                );
   fprintf(' QUESTION 2:           \n'                );
   fprintf(' -----------           \n'                );
%% fprintf(' float_thick= %12.8f m \n',   float_thick );
%% fprintf(' b          = %12.8f m \n',     axis_b_Q2 );
%% fprintf(' delta(vol) = %12.2f %c\n', vol_variation,  '%' );


% ================================================================================
% Question 3:
%  
% ================================================================================
%% ellip_vol     =  ? ;
%% float_vol     =  ? ;
%% devic_mass_Q3 =  ? ;

   fprintf('                       \n'                   );
   fprintf(' QUESTION 3:           \n'                   );
   fprintf(' -----------           \n'                   );
%% fprintf(' float_vol_elli= %12.8f m3\n', nb_float*ellip_vol     );
%% fprintf(' float_vol_rov = %12.8f m3\n', float_vol     );
%% fprintf(' devic_mass_Q3 = %12.8f kg\n', devic_mass_Q3 );


% ================================================================================
% Question 5:
%  
% Comment: In Q5 & Q6  we assume that:
%          frame_mass = 0
%          float_mass = 0
%          y_d        = 0
% ================================================================================
   x1   = -0.045 ;  % [m] x-wise coord of the vertical thruster
   y1   =  0.11  ;  % [m] y-wise coord of the vertical thruster
   x2   =  0.075 ;  % [m] x-wise coord of the horizontal thruster
   y2   =  0.08  ;  % [m] y-wise coord of the horizontal thruster
%% m_e1 = ? ;
%% m_e2 = ? ;
   coef = 3. ;
%% x_d  = ? ;

   fprintf('                       \n'       ) ;
   fprintf(' QUESTION 5:           \n'       ) ;
   fprintf(' -----------           \n'       ) ;
%% fprintf(' x_d        = %12.8f  m\n', x_d  ) ;


% ================================================================================
% Question 6: Position of the centre of mass: G(x_g,y_g)
%  
% ================================================================================
%% x_g  = ? ;
%% y_g  = ? ;

   fprintf('                       \n'       );
   fprintf(' QUESTION 6:           \n'       );
   fprintf(' -----------           \n'       );
%% fprintf(' x_g        = %12.8f  m\n', x_g  );
%% fprintf(' y_g        = %12.8f  m\n', y_g  );


% ================================================================================
% Question 7: position of the centre of buoyancy: C(x_c,y_c)
%  
% Now we must account for nonzero values of float_vol (but we keep frame_vol=0)
% ================================================================================

   x_f  = x1    ;  %[m] 
   y_f  = 0.165 ;  %[m]
%% v_e1 = ? ;
%% v_e2 = ? ;
%% v_fl = ? ;

%% x_c  = ? ;
%% y_c  = ? ;

   fprintf('                       \n'       );
   fprintf(' QUESTION 7:           \n'       );
   fprintf(' -----------           \n'       );
%% fprintf(' x_c        = %12.8f  m\n', x_c  );
%% fprintf(' y_c        = %12.8f  m\n', y_c  );


%  End program
   fprintf('                          \n' );
   fprintf(' Normal end of execution  \n' );
   fprintf('                          \n' );
