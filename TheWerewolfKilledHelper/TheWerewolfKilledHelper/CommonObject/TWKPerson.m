//
//  TWKPerson.m
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/28.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import "TWKPerson.h"

@implementation TWKPerson

+ (instancetype)personWithIdentity:(TKIDType)idType {
    TWKPerson *person = [TWKPerson new];
    person.idType = idType;
    
    [person defaultSettingsWithIDType:idType];
    
    return person;
}

- (void)defaultSettingsWithIDType:(TKIDType)idType {
    
    NSString        *name       = nil;
    TKPositionType  Postype     = TKPositionTypeNormal;
    NSInteger       number      = 0;
    TKLifeState     lifeState   = TKLifeStateGood;
    TKSkillsType    skillsType  = TKSkillsTypeNo;
    
    switch (idType) {
        case TKIDTypeCivilians:{
            name        = TKID_civilians;
            Postype     = TKPositionTypeNormal;
            skillsType  = TKSkillsTypeNo;
        }
            break;
            
        case TKIDTypeWerewolf:{
            name        = TKID_werewolf;
            Postype     = TKPositionTypeWerewolf;
            skillsType  = TKSkillsTypeNightToKill;
        }
            break;
            
        case TKIDTypeProphet:{
            name        = TKID_prophet;
            Postype     = TKPositionTypePriest;
            skillsType  = TKSkillsTypeVerifyIdentity;
        }
            break;
            
        case TKIDTypeWitch:{
            name        = TKID_witch;
            Postype     = TKPositionTypePriest;
            skillsType  = TKSkillsTypeAntidoteAndPoison;
        }
            break;
            
        case TKIDTypeHunter:{
            name        = TKID_hunter;
            Postype     = TKPositionTypePriest;
            skillsType  = TKSkillsTypeShoot;
        }
            break;
            
        case TKIDTypeIdiot:{
            name        = TKID_idiot;
            Postype     = TKPositionTypeMiddleman;
            skillsType  = TKSkillsTypeAvoidToDie;
        }
            break;
            
        case TKIDTypeGuards:{
            name        = TKID_guards;
            Postype     = TKPositionTypePriest;
            skillsType  = TKSkillsTypeGuardian;
        }
            break;
            
        default:
            break;
    }
    
    self.identityName   = name;
    self.positionType   = Postype;
    self.number         = number;
    self.lifeState      = lifeState;
    self.skillsType     = skillsType;
}


@end
