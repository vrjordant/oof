#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM a */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((nr_leaders==0)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !((((int)now.nr_leaders)==0))))
			continue;
		/* merge: assert(!(!((nr_leaders==0))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !((((int)now.nr_leaders)==0))), " !( !((nr_leaders==0)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - dkr-lea-ltl2.pml:69 - [nr_leaders = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.nr_leaders);
		now.nr_leaders = 0;
#ifdef VAR_RANGES
		logval("nr_leaders", ((int)now.nr_leaders));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - dkr-lea-ltl2.pml:71 - [I = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.I);
		now.I = 1;
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - dkr-lea-ltl2.pml:73 - [((I<=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)now.I)<=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - dkr-lea-ltl2.pml:75 - [(((Ini[0]==0)&&(5>=1)))] (21:0:2 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(((((int)((P1 *)this)->Ini[0])==0)&&(5>=1))))
			continue;
		/* merge: Ini[0] = I(21, 5, 21) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[0]);
		((P1 *)this)->Ini[0] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[0]", ((int)((P1 *)this)->Ini[0]));
#endif
		;
		/* merge: .(goto)(21, 17, 21) */
		reached[1][17] = 1;
		;
		/* merge: I = (I+1)(21, 18, 21) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 9: // STATE 6 - dkr-lea-ltl2.pml:76 - [(((Ini[1]==0)&&(5>=2)))] (21:0:2 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(((((int)((P1 *)this)->Ini[1])==0)&&(5>=2))))
			continue;
		/* merge: Ini[1] = I(21, 7, 21) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[1]);
		((P1 *)this)->Ini[1] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[1]", ((int)((P1 *)this)->Ini[1]));
#endif
		;
		/* merge: .(goto)(21, 17, 21) */
		reached[1][17] = 1;
		;
		/* merge: I = (I+1)(21, 18, 21) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 10: // STATE 8 - dkr-lea-ltl2.pml:77 - [(((Ini[2]==0)&&(5>=3)))] (21:0:2 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(((((int)((P1 *)this)->Ini[2])==0)&&(5>=3))))
			continue;
		/* merge: Ini[2] = I(21, 9, 21) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[2]);
		((P1 *)this)->Ini[2] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[2]", ((int)((P1 *)this)->Ini[2]));
#endif
		;
		/* merge: .(goto)(21, 17, 21) */
		reached[1][17] = 1;
		;
		/* merge: I = (I+1)(21, 18, 21) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 11: // STATE 10 - dkr-lea-ltl2.pml:78 - [(((Ini[3]==0)&&(5>=4)))] (21:0:2 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(((((int)((P1 *)this)->Ini[3])==0)&&(5>=4))))
			continue;
		/* merge: Ini[3] = I(21, 11, 21) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[3]);
		((P1 *)this)->Ini[3] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[3]", ((int)((P1 *)this)->Ini[3]));
#endif
		;
		/* merge: .(goto)(21, 17, 21) */
		reached[1][17] = 1;
		;
		/* merge: I = (I+1)(21, 18, 21) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 12: // STATE 12 - dkr-lea-ltl2.pml:79 - [(((Ini[4]==0)&&(5>=5)))] (21:0:2 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(((((int)((P1 *)this)->Ini[4])==0)&&(5>=5))))
			continue;
		/* merge: Ini[4] = I(21, 13, 21) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[4]);
		((P1 *)this)->Ini[4] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[4]", ((int)((P1 *)this)->Ini[4]));
#endif
		;
		/* merge: .(goto)(21, 17, 21) */
		reached[1][17] = 1;
		;
		/* merge: I = (I+1)(21, 18, 21) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 13: // STATE 14 - dkr-lea-ltl2.pml:80 - [(((Ini[5]==0)&&(5>=6)))] (21:0:2 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!(((((int)((P1 *)this)->Ini[5])==0)&&(5>=6))))
			continue;
		/* merge: Ini[5] = I(21, 15, 21) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[5]);
		((P1 *)this)->Ini[5] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[5]", ((int)((P1 *)this)->Ini[5]));
#endif
		;
		/* merge: .(goto)(21, 17, 21) */
		reached[1][17] = 1;
		;
		/* merge: I = (I+1)(21, 18, 21) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 14: // STATE 18 - dkr-lea-ltl2.pml:82 - [I = (I+1)] (0:21:1 - 7)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 15: // STATE 19 - dkr-lea-ltl2.pml:83 - [((I>5))] (30:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!((((int)now.I)>5)))
			continue;
		/* merge: goto :b1(30, 20, 30) */
		reached[1][20] = 1;
		;
		/* merge: proc = 1(30, 24, 30) */
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = 1;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 24 - dkr-lea-ltl2.pml:88 - [proc = 1] (0:30:1 - 3)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = 1;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[1][31] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 17: // STATE 25 - dkr-lea-ltl2.pml:90 - [((proc<=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((((int)((P1 *)this)->proc)<=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 26 - dkr-lea-ltl2.pml:91 - [(run nnode(q[(proc-1)],q[(proc%5)],Ini[(proc-1)]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!(addproc(II, 1, 0, now.q[ Index((((int)((P1 *)this)->proc)-1), 5) ], now.q[ Index((((int)((P1 *)this)->proc)%5), 5) ], ((int)((P1 *)this)->Ini[ Index((((int)((P1 *)this)->proc)-1), 6) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 27 - dkr-lea-ltl2.pml:92 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = (((int)((P1 *)this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 28 - dkr-lea-ltl2.pml:93 - [((proc>5))] (32:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((((int)((P1 *)this)->proc)>5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.oval = ((P1 *)this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->proc = 0;
		/* merge: goto :b2(0, 29, 32) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 34 - dkr-lea-ltl2.pml:97 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC nnode */
	case 22: // STATE 1 - dkr-lea-ltl2.pml:17 - [printf(' MSC : %d\\n',mynumber)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf(" MSC : %d\n", ((int)((P0 *)this)->mynumber));
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 2 - dkr-lea-ltl2.pml:18 - [out!one,mynumber] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->mynumber)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 3, ((int)((P0 *)this)->mynumber), 2);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 3 - dkr-lea-ltl2.pml:20 - [inp?one,nr] (0:0:1 - 1)
		reached[0][3] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->inp]&1)
		{	q_R_check(((P0 *)this)->inp, II);
		}
#endif
		if (q_len(((P0 *)this)->inp) == 0) continue;

		XX=1;
		if (3 != qrecv(((P0 *)this)->inp, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->nr);
		;
		((P0 *)this)->nr = qrecv(((P0 *)this)->inp, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("nnode:nr", ((int)((P0 *)this)->nr));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->inp);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 4 - dkr-lea-ltl2.pml:22 - [(Active)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((int)((P0 *)this)->Active)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 5 - dkr-lea-ltl2.pml:24 - [((nr!=maximum))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->nr)!=((int)((P0 *)this)->maximum))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 6 - dkr-lea-ltl2.pml:25 - [out!two,nr] (46:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 2, ((int)((P0 *)this)->nr), 2);
		/* merge: neighbourR = nr(0, 7, 46) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->neighbourR);
		((P0 *)this)->neighbourR = ((int)((P0 *)this)->nr);
#ifdef VAR_RANGES
		logval("nnode:neighbourR", ((int)((P0 *)this)->neighbourR));
#endif
		;
		/* merge: .(goto)(0, 12, 46) */
		reached[0][12] = 1;
		;
		/* merge: .(goto)(0, 16, 46) */
		reached[0][16] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[0][47] = 1;
		;
		_m = 2; goto P999; /* 4 */
	case 28: // STATE 9 - dkr-lea-ltl2.pml:28 - [know_winner = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->know_winner);
		((P0 *)this)->know_winner = 1;
#ifdef VAR_RANGES
		logval("nnode:know_winner", ((int)((P0 *)this)->know_winner));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 10 - dkr-lea-ltl2.pml:29 - [out!winner,nr] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 1, ((int)((P0 *)this)->nr), 2);
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 14 - dkr-lea-ltl2.pml:32 - [out!one,nr] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 3, ((int)((P0 *)this)->nr), 2);
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 17 - dkr-lea-ltl2.pml:35 - [inp?two,nr] (0:0:1 - 1)
		reached[0][17] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->inp]&1)
		{	q_R_check(((P0 *)this)->inp, II);
		}
#endif
		if (q_len(((P0 *)this)->inp) == 0) continue;

		XX=1;
		if (2 != qrecv(((P0 *)this)->inp, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->nr);
		;
		((P0 *)this)->nr = qrecv(((P0 *)this)->inp, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("nnode:nr", ((int)((P0 *)this)->nr));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->inp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 18 - dkr-lea-ltl2.pml:37 - [(Active)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((int)((P0 *)this)->Active)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 19 - dkr-lea-ltl2.pml:39 - [(((neighbourR>nr)&&(neighbourR>maximum)))] (21:0:3 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(((((int)((P0 *)this)->neighbourR)>((int)((P0 *)this)->nr))&&(((int)((P0 *)this)->neighbourR)>((int)((P0 *)this)->maximum)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nr */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->nr;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->nr = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: maximum */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->maximum;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->maximum = 0;
		/* merge: maximum = neighbourR(0, 20, 21) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)this)->maximum);
		((P0 *)this)->maximum = ((int)((P0 *)this)->neighbourR);
#ifdef VAR_RANGES
		logval("nnode:maximum", ((int)((P0 *)this)->maximum));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 34: // STATE 21 - dkr-lea-ltl2.pml:41 - [out!one,neighbourR] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->neighbourR)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 3, ((int)((P0 *)this)->neighbourR), 2);
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 23 - dkr-lea-ltl2.pml:43 - [Active = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->Active);
		((P0 *)this)->Active = 0;
#ifdef VAR_RANGES
		logval("nnode:Active", ((int)((P0 *)this)->Active));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 27 - dkr-lea-ltl2.pml:46 - [out!two,nr] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 2, ((int)((P0 *)this)->nr), 2);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 30 - dkr-lea-ltl2.pml:48 - [inp?winner,nr] (0:0:1 - 1)
		reached[0][30] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->inp]&1)
		{	q_R_check(((P0 *)this)->inp, II);
		}
#endif
		if (q_len(((P0 *)this)->inp) == 0) continue;

		XX=1;
		if (1 != qrecv(((P0 *)this)->inp, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->nr);
		;
		((P0 *)this)->nr = qrecv(((P0 *)this)->inp, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("nnode:nr", ((int)((P0 *)this)->nr));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->inp);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 38: // STATE 31 - dkr-lea-ltl2.pml:50 - [((nr!=mynumber))] (43:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!((((int)((P0 *)this)->nr)!=((int)((P0 *)this)->mynumber))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: mynumber */  (trpt+1)->bup.oval = ((P0 *)this)->mynumber;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->mynumber = 0;
		/* merge: printf(' MSC : LOST \\n')(0, 32, 43) */
		reached[0][32] = 1;
		Printf(" MSC : LOST \n");
		/* merge: .(goto)(0, 39, 43) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 34 - dkr-lea-ltl2.pml:53 - [printf(' MSC : LEADER \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		Printf(" MSC : LEADER \n");
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 35 - dkr-lea-ltl2.pml:54 - [nr_leaders = (nr_leaders+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = ((int)now.nr_leaders);
		now.nr_leaders = (((int)now.nr_leaders)+1);
#ifdef VAR_RANGES
		logval("nr_leaders", ((int)now.nr_leaders));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 36 - dkr-lea-ltl2.pml:55 - [assert((mynumber==5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		spin_assert((((int)((P0 *)this)->mynumber)==5), "(mynumber==5)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 37 - dkr-lea-ltl2.pml:56 - [assert((nr_leaders==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		spin_assert((((int)now.nr_leaders)==1), "(nr_leaders==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 40 - dkr-lea-ltl2.pml:59 - [(know_winner)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!(((int)((P0 *)this)->know_winner)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: know_winner */  (trpt+1)->bup.oval = ((P0 *)this)->know_winner;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->know_winner = 0;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 42 - dkr-lea-ltl2.pml:60 - [out!winner,nr] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 1, ((int)((P0 *)this)->nr), 2);
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 49 - dkr-lea-ltl2.pml:64 - [-end-] (0:0:0 - 5)
		IfNotBlocked
		reached[0][49] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

