package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.pojo.*;
import cn.edu.nwpu.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ControlStageImpl implements ControlStage {
    @Autowired
    PlanMissileArmyService planMissileArmyService;
    @Autowired
    PlanMissileEnemyService planMissileEnemyService;
    @Autowired
    PointImpl point;
    @Autowired
    BattlefieldSituationArmyService battlefieldSituationArmyService;
    @Autowired
    BattlefieldSituationEnemyService battlefieldSituationEnemyService;

    @Override
    public ArmyBaseWithMissile findArmyBaseWithMissile(Integer id, String basename) {
        //将传入的参数封装到bs里
        BattlefieldSituationArmy bs = new BattlefieldSituationArmy();
        bs.setBaseNmae(basename);
        bs.setId(id);
        //将bs中的point分开
        String l = point.getArmyL(bs);
        String b = point.getArmyB(bs);
        //通过bs查询出missile
        List<String> missile = planMissileArmyService.selectMissileByBase(bs);
        //封装到ab中
        ArmyBaseWithMissile ab = new ArmyBaseWithMissile(l, b, missile);
        return ab;
    }

    @Override
    public EnemyBaseWithMissile findEnemyBaseWithMissile(Integer id, String basename) {

        BattlefieldSituationEnemy be = new BattlefieldSituationEnemy();
        be.setId(id);
        be.setBaseName(basename);
        String l = point.getEnemyL(be);
        String b = point.getEnemyB(be);
        List<String> missile = planMissileEnemyService.selectMissileByBase(be);
        EnemyBaseWithMissile eb = new EnemyBaseWithMissile(l, b, missile);
        return eb;
    }

    @Override
    public List<PlanMissileArmy> selectByArmyAttackBase(Integer id, String attackbase) {
        BattlefieldSituationArmy bs = new BattlefieldSituationArmy();
        bs.setId(id);
        bs.setBaseNmae(attackbase);
        List<PlanMissileArmy> army_result = planMissileArmyService.selectByAttackBase(bs);
        return army_result;
    }

    @Override
    public List<PlanMissileEnemy> selectByEnemyAttackBase(Integer id, String attackbase) {
        BattlefieldSituationEnemy be = new BattlefieldSituationEnemy();
        be.setId(id);
        be.setBaseName(attackbase);
        List<PlanMissileEnemy> enemy_result = planMissileEnemyService.selectByAttackBase(be);
        return enemy_result;
    }

    @Override
    public BattlefieldSituationArmy selectAllArmyByIdName(Integer id, String basename) {
        BattlefieldSituationArmy bs = new BattlefieldSituationArmy();
        bs.setId(id);
        bs.setBaseNmae(basename);
        BattlefieldSituationArmy result = battlefieldSituationArmyService.selectAllByIdName(bs);
        return result;
    }

    @Override
    public BattlefieldSituationEnemy selectAllEnemyByIdName(Integer id, String basename) {
        BattlefieldSituationEnemy be = new BattlefieldSituationEnemy();
        be.setId(id);
        be.setBaseName(basename);
        BattlefieldSituationEnemy result = battlefieldSituationEnemyService.selectAllByIdName(be);
        return result;
    }

    @Override
    public MixBaseSituation findAllPoints(Integer id) {
        List<BattlefieldSituationArmy> lista = battlefieldSituationArmyService.selectSituationsById(id);
        List<ArmyBaseWithMissile> result_army = new ArrayList<ArmyBaseWithMissile>(10);
        for (BattlefieldSituationArmy ba : lista) {
            ArmyBaseWithMissile armyBaseWithMissile = new ArmyBaseWithMissile();
            armyBaseWithMissile.setHp(ba.getLastHp());
            armyBaseWithMissile.setL(point.getArmyL(ba));
            armyBaseWithMissile.setB(point.getArmyB(ba));
            result_army.add(armyBaseWithMissile);
        }
        List<BattlefieldSituationEnemy> liste = battlefieldSituationEnemyService.selectByBaseId(id);
        List<EnemyBaseWithMissile> result_enemy = new ArrayList<EnemyBaseWithMissile>(10);
        for (BattlefieldSituationEnemy be : liste) {
            EnemyBaseWithMissile enemyBaseWithMissile = new EnemyBaseWithMissile();
            enemyBaseWithMissile.setHp(be.getLastHp());
            enemyBaseWithMissile.setL(point.getEnemyL(be));
            enemyBaseWithMissile.setB(point.getEnemyB(be));
            result_enemy.add(enemyBaseWithMissile);
        }
        MixBaseSituation mix_result = new MixBaseSituation();
        mix_result.setId(id);
        mix_result.setArmyBaseWithMissile(result_army);
        mix_result.setEnemyBaseWithMissile(result_enemy);
        return mix_result;
    }

    @Override
    public MixBaseSituation findAllBase(Integer id) {
        List<BattlefieldSituationArmy> lista = battlefieldSituationArmyService.selectSituationsById(id);
        List<ArmyBaseWithMissile> result_army = new ArrayList<ArmyBaseWithMissile>(10);
        for (BattlefieldSituationArmy ba : lista) {
            ArmyBaseWithMissile armyBaseWithMissile = new ArmyBaseWithMissile();
            String s = ba.getBaseNmae().substring(5);
            String baseName = s + "号基地";
            armyBaseWithMissile.setBase_name(baseName);
            armyBaseWithMissile.setHp(ba.getLastHp());
            armyBaseWithMissile.setL(point.getArmyL(ba));
            armyBaseWithMissile.setB(point.getArmyB(ba));
            armyBaseWithMissile.setMissile(planMissileArmyService.selectMissileByBase(ba));
            result_army.add(armyBaseWithMissile);
        }
        List<BattlefieldSituationEnemy> liste = battlefieldSituationEnemyService.selectByBaseId(id);
        List<EnemyBaseWithMissile> result_enemy = new ArrayList<EnemyBaseWithMissile>(10);
        for (BattlefieldSituationEnemy be : liste) {
            EnemyBaseWithMissile enemyBaseWithMissile = new EnemyBaseWithMissile();
            String s = be.getBaseName().substring(5);
            String baseName = s + "号基地";
            enemyBaseWithMissile.setBasename(baseName);
            enemyBaseWithMissile.setHp(be.getLastHp());
            enemyBaseWithMissile.setL(point.getEnemyL(be));
            enemyBaseWithMissile.setB(point.getEnemyB(be));
            enemyBaseWithMissile.setMissile(planMissileEnemyService.selectMissileByBase(be));
            result_enemy.add(enemyBaseWithMissile);
        }
        MixBaseSituation mix_result = new MixBaseSituation();
        mix_result.setId(id);
        mix_result.setArmyBaseWithMissile(result_army);
        mix_result.setEnemyBaseWithMissile(result_enemy);
        return mix_result;
    }

}
