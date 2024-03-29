/*
 ***********************************************************************************************
 * @file      gw1ns4c_syscon.c
 * @author    GowinSemiconductor
 * @device    Gowin_EMPU(GW1NS-4C)
 * @brief     This file contains all the functions prototypes for the SYSCON firmware library.
 ***********************************************************************************************
 */

/* Includes ------------------------------------------------------------------*/
#include "gw1ns4c_syscon.h"

/**
  * @param none
  * @return none
  * @brief Initializes SYSCON
  */
void SYSCON_Init(void)
{
  SYSCON->REMAP = 0;
  SYSCON->PMUCTRL = 0;
  SYSCON->RESETOP = 0;
  SYSCON->RSTINFO = 0;
}

/**
  * @param none
  * @return uint32_t
  * @brief Returns REMAP
  */
uint32_t SYSCON_GetRemap(void)
{
  return SYSCON->REMAP;
}

/**
  * @param none
  * @param uint32_t
  * @brief Returns PMUCTRL Enable
  */
uint32_t SYSCON_GetPmuctrlEnable(void)
{
  return SYSCON->PMUCTRL;
}

/**
  * @param none
  * @return uint32_t
  * @brief Returns RESETOP LOCKUPRST
  */
uint32_t SYSCON_GetResetopLockuprst(void)
{
  return SYSCON->RESETOP;
}

/**
  * @param none
  * @return FlagStatus
  *         @arg SET
  *         @arg RESET
  * @brief Returns RSTINFO SYSRESETREQ
  */
FlagStatus SYSCON_GetRstinfoSysresetreq(void)
{
  return (FlagStatus)((SYSCON->RSTINFO & SYSCON_RSTINFO_SYSRESETREQ) >> SYSCON_RSTINFO_SYSRESETREQ_Pos);
}

/**
  * @param none
  * @return FlagStatus
  *         @arg SET
  *         @arg RESET
  * @brief Returns RSTINFO WDOGRESETREQ
  */
FlagStatus SYSCON_GetRstinfoWdogresetreq(void)
{
  return (FlagStatus)((SYSCON->RSTINFO & SYSCON_RSTINFO_WDOGRESETREQ) >> SYSCON_RSTINFO_WDOGRESETREQ_Pos);
}

/**
  * @param none
  * @return FlagStatus
  *         @arg SET
  *         @arg RESET
  * @brief Returns RSTINFO LOCKRESET
  */
FlagStatus SYSCON_GetRstinfoLockreset(void)
{
  return (FlagStatus)((SYSCON->RSTINFO & SYSCON_RSTINFO_LOCKUPRESET) >> SYSCON_RSTINFO_LOCKUPRESET_Pos);
}

/************************GowinSemiconductor******END OF FILE*******************/
