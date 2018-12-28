//
//  GlobalVariable.h
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/28.
//  Copyright © 2018 yinyao. All rights reserved.
//

#ifndef GlobalVariable_h
#define GlobalVariable_h

///身份牌定义
static  NSString *TKID_civilians     = @"平民";
static  NSString *TKID_werewolf      = @"狼人";
static  NSString *TKID_prophet       = @"预言家";
static  NSString *TKID_witch         = @"女巫";
static  NSString *TKID_hunter        = @"猎人";
static  NSString *TKID_idiot         = @"白痴";
static  NSString *TKID_guards        = @"守卫";

///身份牌类型
typedef enum : NSUInteger {
    
    TKIDTypeCivilians,      //平民职位
    TKIDTypeWerewolf,       //狼人职位
    TKIDTypeProphet,        //预言家
    TKIDTypeWitch,          //女巫
    TKIDTypeHunter,         //猎人
    TKIDTypeIdiot,          //白痴
    TKIDTypeGuards,         //守卫
    
} TKIDType;

///职位类型
typedef enum : NSUInteger {
    
    TKPositionTypeNormal,       //平民职位
    TKPositionTypeWerewolf,     //狼人职位
    TKPositionTypeMiddleman,    //拥有平民职位 神职 两者
    TKPositionTypePriest,       //神职
    
} TKPositionType;

///生命状态
typedef enum : NSUInteger {
    
    TKLifeStateGood,            //活着状态
    TKLifeStateDisability,      //残疾状态
    TKLifeStateDeath,           //死亡状态
    
} TKLifeState;

///技能类型
typedef enum : NSUInteger {
    
    TKSkillsTypeNo,                     //无技能
    TKSkillsTypeNightToKill,            //夜晚杀人技能
    TKSkillsTypeVerifyIdentity,         //验明身份好坏的技能
    TKSkillsTypeAntidoteAndPoison,      //解药和毒药的技能
    TKSkillsTypeShoot,                  //被狼人杀或白天被票死后,发动开枪带走一人的技能
    TKSkillsTypeAvoidToDie,             //白天被票死后,翻开身份牌免一死的技能
    TKSkillsTypeGuardian,               //每晚可以守卫一名玩家,但不能连续两晚守卫同一名玩家的技能
    
} TKSkillsType;

#endif /* GlobalVariable_h */
