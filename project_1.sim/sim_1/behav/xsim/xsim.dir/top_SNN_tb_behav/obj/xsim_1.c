/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2908(char*, char *);
IKI_DLLESPEC extern void execute_2909(char*, char *);
IKI_DLLESPEC extern void execute_2910(char*, char *);
IKI_DLLESPEC extern void execute_2911(char*, char *);
IKI_DLLESPEC extern void execute_2905(char*, char *);
IKI_DLLESPEC extern void execute_2906(char*, char *);
IKI_DLLESPEC extern void execute_2907(char*, char *);
IKI_DLLESPEC extern void execute_2398(char*, char *);
IKI_DLLESPEC extern void execute_2399(char*, char *);
IKI_DLLESPEC extern void execute_47(char*, char *);
IKI_DLLESPEC extern void execute_2902(char*, char *);
IKI_DLLESPEC extern void execute_2903(char*, char *);
IKI_DLLESPEC extern void execute_2904(char*, char *);
IKI_DLLESPEC extern void execute_2405(char*, char *);
IKI_DLLESPEC extern void execute_2404(char*, char *);
IKI_DLLESPEC extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[18] = {(funcp)execute_2908, (funcp)execute_2909, (funcp)execute_2910, (funcp)execute_2911, (funcp)execute_2905, (funcp)execute_2906, (funcp)execute_2907, (funcp)execute_2398, (funcp)execute_2399, (funcp)execute_47, (funcp)execute_2902, (funcp)execute_2903, (funcp)execute_2904, (funcp)execute_2405, (funcp)execute_2404, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_18};
const int NumRelocateId= 18;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_SNN_tb_behav/xsim.reloc",  (void **)funcTab, 18);
	iki_vhdl_file_variable_register(dp + 4226312);
	iki_vhdl_file_variable_register(dp + 4226368);
	iki_vhdl_file_variable_register(dp + 4230176);
	iki_vhdl_file_variable_register(dp + 4232064);
	iki_vhdl_file_variable_register(dp + 5778136);
	iki_vhdl_file_variable_register(dp + 5799064);
	iki_vhdl_file_variable_register(dp + 5819992);
	iki_vhdl_file_variable_register(dp + 5840920);
	iki_vhdl_file_variable_register(dp + 5861848);
	iki_vhdl_file_variable_register(dp + 5882776);
	iki_vhdl_file_variable_register(dp + 5903704);
	iki_vhdl_file_variable_register(dp + 5924632);
	iki_vhdl_file_variable_register(dp + 5945560);
	iki_vhdl_file_variable_register(dp + 5966488);
	iki_vhdl_file_variable_register(dp + 5987416);
	iki_vhdl_file_variable_register(dp + 6008344);
	iki_vhdl_file_variable_register(dp + 6029272);
	iki_vhdl_file_variable_register(dp + 6050200);
	iki_vhdl_file_variable_register(dp + 6071128);
	iki_vhdl_file_variable_register(dp + 6092056);
	iki_vhdl_file_variable_register(dp + 6112984);
	iki_vhdl_file_variable_register(dp + 6133912);
	iki_vhdl_file_variable_register(dp + 6154840);
	iki_vhdl_file_variable_register(dp + 6175768);
	iki_vhdl_file_variable_register(dp + 6196696);
	iki_vhdl_file_variable_register(dp + 6217624);
	iki_vhdl_file_variable_register(dp + 6238552);
	iki_vhdl_file_variable_register(dp + 6259480);
	iki_vhdl_file_variable_register(dp + 6280408);
	iki_vhdl_file_variable_register(dp + 6301336);
	iki_vhdl_file_variable_register(dp + 6322264);
	iki_vhdl_file_variable_register(dp + 6343192);
	iki_vhdl_file_variable_register(dp + 6364120);
	iki_vhdl_file_variable_register(dp + 6385048);
	iki_vhdl_file_variable_register(dp + 6405976);
	iki_vhdl_file_variable_register(dp + 6426904);
	iki_vhdl_file_variable_register(dp + 6447832);
	iki_vhdl_file_variable_register(dp + 6468760);
	iki_vhdl_file_variable_register(dp + 6489688);
	iki_vhdl_file_variable_register(dp + 6510616);
	iki_vhdl_file_variable_register(dp + 6531544);
	iki_vhdl_file_variable_register(dp + 6552472);
	iki_vhdl_file_variable_register(dp + 6573400);
	iki_vhdl_file_variable_register(dp + 6594328);
	iki_vhdl_file_variable_register(dp + 6615256);
	iki_vhdl_file_variable_register(dp + 6636184);
	iki_vhdl_file_variable_register(dp + 6657112);
	iki_vhdl_file_variable_register(dp + 6678040);
	iki_vhdl_file_variable_register(dp + 6698968);
	iki_vhdl_file_variable_register(dp + 6719896);
	iki_vhdl_file_variable_register(dp + 6740824);
	iki_vhdl_file_variable_register(dp + 6761752);
	iki_vhdl_file_variable_register(dp + 6782680);
	iki_vhdl_file_variable_register(dp + 6803608);
	iki_vhdl_file_variable_register(dp + 6824536);
	iki_vhdl_file_variable_register(dp + 6845464);
	iki_vhdl_file_variable_register(dp + 6866392);
	iki_vhdl_file_variable_register(dp + 6887320);
	iki_vhdl_file_variable_register(dp + 6908248);
	iki_vhdl_file_variable_register(dp + 6929176);
	iki_vhdl_file_variable_register(dp + 6950104);
	iki_vhdl_file_variable_register(dp + 6971032);
	iki_vhdl_file_variable_register(dp + 6991960);
	iki_vhdl_file_variable_register(dp + 7012888);
	iki_vhdl_file_variable_register(dp + 7033816);
	iki_vhdl_file_variable_register(dp + 7054744);
	iki_vhdl_file_variable_register(dp + 7075672);
	iki_vhdl_file_variable_register(dp + 7096600);
	iki_vhdl_file_variable_register(dp + 7117528);
	iki_vhdl_file_variable_register(dp + 7138456);
	iki_vhdl_file_variable_register(dp + 7159384);
	iki_vhdl_file_variable_register(dp + 7180312);
	iki_vhdl_file_variable_register(dp + 7201240);
	iki_vhdl_file_variable_register(dp + 7222168);
	iki_vhdl_file_variable_register(dp + 7243096);
	iki_vhdl_file_variable_register(dp + 7264024);
	iki_vhdl_file_variable_register(dp + 7284952);
	iki_vhdl_file_variable_register(dp + 7305880);
	iki_vhdl_file_variable_register(dp + 7326808);
	iki_vhdl_file_variable_register(dp + 7347736);
	iki_vhdl_file_variable_register(dp + 7368664);
	iki_vhdl_file_variable_register(dp + 7389592);
	iki_vhdl_file_variable_register(dp + 7410520);
	iki_vhdl_file_variable_register(dp + 7431448);
	iki_vhdl_file_variable_register(dp + 7452376);
	iki_vhdl_file_variable_register(dp + 7473304);
	iki_vhdl_file_variable_register(dp + 7494232);
	iki_vhdl_file_variable_register(dp + 7515160);
	iki_vhdl_file_variable_register(dp + 7536088);
	iki_vhdl_file_variable_register(dp + 7557016);
	iki_vhdl_file_variable_register(dp + 7577944);
	iki_vhdl_file_variable_register(dp + 7598872);
	iki_vhdl_file_variable_register(dp + 7619800);
	iki_vhdl_file_variable_register(dp + 7640728);
	iki_vhdl_file_variable_register(dp + 7661656);
	iki_vhdl_file_variable_register(dp + 7682584);
	iki_vhdl_file_variable_register(dp + 7703512);
	iki_vhdl_file_variable_register(dp + 7724440);
	iki_vhdl_file_variable_register(dp + 7745368);
	iki_vhdl_file_variable_register(dp + 7766296);
	iki_vhdl_file_variable_register(dp + 7787224);
	iki_vhdl_file_variable_register(dp + 7808152);
	iki_vhdl_file_variable_register(dp + 7829080);
	iki_vhdl_file_variable_register(dp + 7850008);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_SNN_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_SNN_tb_behav/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/top_SNN_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_SNN_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_SNN_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
