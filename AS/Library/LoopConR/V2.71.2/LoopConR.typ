
TYPE
	lcrtemp_tune_internal_typ : 	STRUCT 
		cool_tuning : BOOL;
		disable_heating : BOOL;
		mode : UDINT;
		Temp_amb : REAL;
		dRatio_heat : REAL;
		cnt_tp_heat : REAL;
		delta_T_heat : REAL;
		dT_min_heat : REAL;
		dRatio_free : REAL;
		cnt_tp_free : REAL;
		delta_T_free : REAL;
		dT_min_free : REAL;
		dRatio_cool : REAL;
		cnt_tp_cool : REAL;
		delta_T_cool : REAL;
		dT_min_cool : REAL;
		delta_T_sync_heat : REAL;
		delta_dT_sync_heat : REAL;
		cnt_wait_heat : REAL;
		delta_T_sync_free : REAL;
		delta_dT_sync_free : REAL;
		cnt_wait_free : REAL;
		delta_T_sync_cool : REAL;
		delta_dT_sync_cool : REAL;
		cnt_wait_cool : REAL;
		filter_base_T : REAL;
		t_ignore_dT_heat : REAL;
		t_ignore_dT_free : REAL;
		t_ignore_dT_cool : REAL;
		delta_T_sync_stop : REAL;
	END_STRUCT;
	lcrtemp_pid_internal_typ : 	STRUCT 
		enable_cooling : BOOL;
		disable_heating : BOOL;
		hyst : REAL;
		delay : REAL;
		Kw : REAL;
		Kfbk : REAL;
		Kp_h : REAL;
		Tn_h : REAL;
		Tv_h : REAL;
		Kp_c : REAL;
		Tn_c : REAL;
		Tv_c : REAL;
		dynGeneral : REAL;
		dynHeat : REAL;
		dynCool : REAL;
		mem01 : REAL;
		mem02 : REAL;
		mem10 : REAL;
		mem20 : REAL;
		exp_mem : REAL;
	END_STRUCT;
	lcrtemp_pid_opt_typ : 	STRUCT 
		Kp_h : REAL;
		Tn_h : REAL;
		Tv_h : REAL;
		Kp_c : REAL;
		Tn_c : REAL;
		Tv_c : REAL;
		dynGeneral : REAL;
		dynHeat : REAL;
		dynCool : REAL;
	END_STRUCT;
	lcrtemp_tune_set_typ : 	STRUCT 
		mode : UDINT;
		Temp_amb : REAL;
		dRatio_heat : REAL;
		cnt_tp_heat : REAL;
		delta_T_heat : REAL;
		dT_min_heat : REAL;
		dRatio_free : REAL;
		cnt_tp_free : REAL;
		delta_T_free : REAL;
		dT_min_free : REAL;
		dRatio_cool : REAL;
		cnt_tp_cool : REAL;
		delta_T_cool : REAL;
		dT_min_cool : REAL;
		delta_T_sync_heat : REAL;
		delta_dT_sync_heat : REAL;
		cnt_wait_heat : REAL;
		delta_T_sync_free : REAL;
		delta_dT_sync_free : REAL;
		cnt_wait_free : REAL;
		delta_T_sync_cool : REAL;
		delta_dT_sync_cool : REAL;
		cnt_wait_cool : REAL;
		filter_base_T : REAL;
		delta_T_sync_stop : REAL;
	END_STRUCT;
	lcrtemp_pid_set_typ : 	STRUCT 
		hyst : REAL;
		delay : REAL;
		Kw : REAL;
		Kfbk : REAL;
	END_STRUCT;
	lcrtemp_add_typ : 	STRUCT 
		mem01 : REAL;
		mem02 : REAL;
		mem10 : REAL;
		mem20 : REAL;
		exp_mem : REAL;
		cnt01 : REAL;
		cnt02 : REAL;
		cnt10 : REAL;
		cnt20 : REAL;
		cnt03 : REAL;
		cnt30 : REAL;
		cnt00 : REAL;
		t_ignore_dT_heat : REAL;
		t_ignore_dT_free : REAL;
		t_ignore_dT_cool : REAL;
		reserved3 : UDINT;
		reserved4 : UDINT;
		reserved5 : BOOL;
		reserved6 : BOOL;
	END_STRUCT;
	lcrtemp_set_typ : 	STRUCT 
		enable_cooling : BOOL;
		disable_heating : BOOL;
		PIDpara : lcrtemp_pid_opt_typ;
		TuneSet : lcrtemp_tune_set_typ;
		PIDSet : lcrtemp_pid_set_typ;
		Internal : lcrtemp_add_typ;
	END_STRUCT;
	lcrslimpid_par_typ : 	STRUCT 
		Y_max : REAL;
		Y_min : REAL;
		Kp : REAL;
		Tn : REAL;
		Tv : REAL;
		Kfbk : REAL;
	END_STRUCT;
	lcrdblpid_par_typ : 	STRUCT 
		Y_max : REAL;
		Y_min : REAL;
		K_fact : INT;
		Kp : REAL;
		Tn : REAL;
		Tv : REAL;
	END_STRUCT;
	lcrpid_tune_osc_options_typ : 	STRUCT 
		osc_minAmplitude : REAL;
		Q_min : REAL;
	END_STRUCT;
	lcrpid_tune_step_options_typ : 	STRUCT 
		eqDeltaX : REAL;
		eqDeltaWX : REAL;
		eqDeltat : REAL;
		evalDeltaX : REAL;
		evalNfilter : UINT;
		exitNotMaxdXCount : UINT;
		exitdXRatio : REAL;
	END_STRUCT;
	lcrdblpid_tune_typ : 	STRUCT 
		P1_manualAdjust : INT;
		I1_manualAdjust : INT;
		D1_manualAdjust : INT;
		P2_manualAdjust : INT;
		I2_manualAdjust : INT;
		D2_manualAdjust : INT;
		X_min : REAL;
		X_max : REAL;
		X0 : REAL;
		de_min : REAL;
		Y0 : REAL;
		Y1step : REAL;
		Y2step : REAL;
		tuneY1_opt : UDINT;
		tuneY2_opt : UDINT;
		tune_first : USINT;
		hyst : REAL;
		measDelta : REAL;
		osc_opt : lcrpid_tune_osc_options_typ;
		step_opt : lcrpid_tune_step_options_typ;
	END_STRUCT;
	lcrpid_tune_addpar_typ : 	STRUCT 
		t_max_tune : REAL;
		WX_min : REAL;
		WX_max : REAL;
		dY_max : REAL;
		Tf_Tv : REAL;
		Kw : REAL;
		Kfbk : REAL;
		fbk_mode : USINT;
		d_mode : USINT;
		deadband : REAL;
		invert : BOOL;
	END_STRUCT;
	lcrpid_procPar_typ : 	STRUCT 
		size : UINT;
		valid : BOOL;
		stepResp_valid : BOOL;
		stepResp_v : REAL;
		stepResp_t_u : REAL;
		stepResp_t_g : REAL;
		osc_valid : BOOL;
		osc_amplitudeRatio : REAL;
		osc_tPeriod : REAL;
		force_params : BOOL;
		Kp : REAL;
		Kp_tune : REAL;
		Tn : REAL;
		Tn_tune : REAL;
		Tv : REAL;
		Tv_tune : REAL;
	END_STRUCT;
	lcrpid_old_typ : 	STRUCT 
		processPar : lcrpid_procPar_typ;
		P_manualAdjust : INT;
		I_manualAdjust : INT;
		D_manualAdjust : INT;
		Y_min : REAL;
		Y_max : REAL;
		dY_max : REAL;
		Tf_Tv : REAL;
		Kw : REAL;
		Kfbk : REAL;
		deadband : REAL;
		W : REAL;
		request : UDINT;
		fbk_mode : USINT;
		d_mode : USINT;
		invert : BOOL;
		enable : BOOL;
	END_STRUCT;
	lcrpid_tune_step_typ : 	STRUCT 
		options : lcrpid_tune_step_options_typ;
		Y0 : REAL;
		Y1 : REAL;
		t_jump : REAL;
		W : REAL;
		X0 : REAL;
		Xmax : REAL;
		Xmin : REAL;
		Xfiltered : REAL;
		deltaXok : BOOL;
		deltaWXok : BOOL;
		eqTime : REAL;
		dir : SINT;
		deltaX : REAL;
		X1 : REAL;
		t1 : REAL;
		t1set : BOOL;
		dX_dt : REAL;
		dX_dt_max : REAL;
		XmaxGrad : REAL;
		maxX1 : REAL;
		maxX2 : REAL;
		maxt1 : REAL;
		maxt2 : REAL;
		tmaxGrad : REAL;
		gainFactor : REAL;
		deadTime : REAL;
		riseTime : REAL;
		notMaxCount : UINT;
		gradientRatio : REAL;
	END_STRUCT;
	lcrpid_osc_val_typ : 	STRUCT 
		X : REAL;
		t : REAL;
	END_STRUCT;
	lcrpid_osc_per_typ : 	STRUCT 
		max : lcrpid_osc_val_typ;
		min : lcrpid_osc_val_typ;
	END_STRUCT;
	lcrpid_tune_osc_typ : 	STRUCT 
		options : lcrpid_tune_osc_options_typ;
		oscPhase : UINT;
		dir : SINT;
		enHi : BOOL;
		enLo : BOOL;
		Y_hi : REAL;
		Y_lo : REAL;
		i_maxPeriod : UINT;
		i_period : UINT;
		X_ampl : REAL;
		X_avg : REAL;
		X_min_avg : REAL;
		X_max_avg : REAL;
		Y_avg : REAL;
		deltaY : REAL;
		t_Ylohi : ARRAY[0..4] OF REAL;
		t_Yhilo : ARRAY[0..4] OF REAL;
		Q_act : REAL;
		a_wx : REAL;
		amplitudeRatio : REAL;
		Ku : REAL;
		tPeriod : REAL;
		period : ARRAY[0..4] OF lcrpid_osc_per_typ;
	END_STRUCT;
	lcrCurveByPoints_TabEntry_type : 	STRUCT 
		x : REAL;
		y : REAL;
	END_STRUCT;
	lcrpid_internal_typ : 	STRUCT 
		size : UINT;
		valid : BOOL;
		WX_max : REAL;
		WX_min : REAL;
		invert : BOOL;
		deadband : REAL;
		dY_max : REAL;
		Kp : REAL;
		Kp_Tn : REAL;
		Tv_Tf : REAL;
		Tf_reciproc : REAL;
		Kw : REAL;
		Kfbk_Kp : REAL;
		fbk_mode : USINT;
		d_mode : USINT;
		force_mode : USINT;
		Y_force : REAL;
		W : REAL;
		X : REAL;
		pid_init : USINT;
		Yp1 : DINT;
		Yp2 : DINT;
		dYi1 : DINT;
		dYi2 : DINT;
		Yi1 : DINT;
		Yi2 : DINT;
		dt_Tf : REAL;
		a11 : DINT;
		a12 : DINT;
		a21 : DINT;
		a22 : DINT;
		Yd1 : DINT;
		Yd2 : DINT;
		Ytotal1 : DINT;
		Ytotal2 : DINT;
		Ylim1 : DINT;
		Ylim2 : DINT;
		Y1 : DINT;
		Y2 : DINT;
		e_fbk : REAL;
	END_STRUCT;
	lcrpt2o_Internal_typ : 	STRUCT 
		Ts : DINT;
		Ts_dbl_1 : UDINT;
		Ts_dbl_2 : UDINT;
		V_old : REAL;
		D_old : REAL;
		Tf_old : REAL;
		Set_y_old : USINT;
		Set_y_2 : USINT;
		x1_dbl_1 : UDINT;
		x1_dbl_2 : UDINT;
		x2_dbl_1 : UDINT;
		x2_dbl_2 : UDINT;
		Sqrt_D_1_dbl_1 : UDINT;
		Sqrt_D_1_dbl_2 : UDINT;
		Ts_Tf_dbl_1 : UDINT;
		Ts_Tf_dbl_2 : UDINT;
		Exp_D_Ts_Tf_dbl_1 : UDINT;
		Exp_D_Ts_Tf_dbl_2 : UDINT;
		a0_dbl_1 : UDINT;
		a0_dbl_2 : UDINT;
		a1_dbl_1 : UDINT;
		a1_dbl_2 : UDINT;
		b0_dbl_1 : UDINT;
		b0_dbl_2 : UDINT;
		b1_dbl_1 : UDINT;
		b1_dbl_2 : UDINT;
		Bootkey : UDINT;
	END_STRUCT;
END_TYPE
