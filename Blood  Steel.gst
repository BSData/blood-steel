<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="3eb5-b432-c9db-d045" name="Blood &amp; Steel" revision="1" battleScribeVersion="2.03" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <publications>
    <publication id="b05a-c665-aec4-1564" name="Blood &amp; Steel Victorian Age Combat 1837-1901"/>
  </publications>
  <costTypes>
    <costType id="2a05-fb94-9a98-c9c0" name="Force Points" defaultCostLimit="-1.0" hidden="false"/>
    <costType id="017a-ec37-7db2-a342" name="Iniative" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="3332-b503-9905-37d2" name="Leader Unit">
      <characteristicTypes>
        <characteristicType id="83e2-b712-3bb5-300c" name="Move"/>
        <characteristicType id="b303-a47d-19b6-7016" name="Shoot"/>
        <characteristicType id="b673-9078-b9b7-ada9" name="Melee"/>
        <characteristicType id="6e89-b424-f70e-080d" name="Shoot Save"/>
        <characteristicType id="d2e5-53a0-b6d7-1361" name="Melee Save"/>
        <characteristicType id="b5c9-557a-a243-48a8" name="Resolve"/>
        <characteristicType id="b4e1-6d29-7a02-16ed" name="Command Range"/>
        <characteristicType id="48a9-a289-19fd-69e4" name="Command Points"/>
      </characteristicTypes>
    </profileType>
    <profileType id="e068-3dba-eedd-b131" name="Unit">
      <characteristicTypes>
        <characteristicType id="80ef-ec38-8760-6b0a" name="Move"/>
        <characteristicType id="f2c2-5727-d5f6-8b86" name="Shoot"/>
        <characteristicType id="eb23-6d5b-76d1-43c5" name="Melee"/>
        <characteristicType id="32c4-7eaf-641c-3f9b" name="Shoot Save"/>
        <characteristicType id="3dd2-0fb5-c408-024d" name="Melee Save"/>
        <characteristicType id="bb14-b0d2-7d1f-fcb3" name="Resolve"/>
      </characteristicTypes>
    </profileType>
    <profileType id="c9cd-57c8-3205-dd49" name="Weapon">
      <characteristicTypes>
        <characteristicType id="8869-9257-22d2-3dce" name="Max Range"/>
        <characteristicType id="dff3-a276-cbdb-d3c7" name="Notes"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="3185-bbe6-86ce-96a4" name="Leader" hidden="false">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0756-f1d5-b0a5-52bd" type="min"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="899e-a847-87fc-375a" type="max"/>
      </constraints>
    </categoryEntry>
    <categoryEntry id="fe26-ffb2-897a-7556" name="Core" hidden="false"/>
    <categoryEntry id="5c7e-0dec-8c5c-c7c8" name="Support" hidden="false">
      <modifierGroups>
        <modifierGroup>
          <repeats>
            <repeat field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="fe26-ffb2-897a-7556" repeats="1" roundUp="false"/>
          </repeats>
          <modifiers>
            <modifier type="increment" field="4198-b7a6-486e-e0c9" value="1.0"/>
          </modifiers>
        </modifierGroup>
      </modifierGroups>
      <constraints>
        <constraint field="selections" scope="force" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4198-b7a6-486e-e0c9" type="max"/>
      </constraints>
    </categoryEntry>
    <categoryEntry id="0389-64d4-2bab-e128" name="Upgrades" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="871a-168d-fd99-52c1" name="Force List" hidden="false">
      <categoryLinks>
        <categoryLink id="5690-d0d6-1839-211d" name="Core" hidden="false" targetId="fe26-ffb2-897a-7556" primary="false"/>
        <categoryLink id="833d-f06d-ef8a-df0f" name="Leader" hidden="false" targetId="3185-bbe6-86ce-96a4" primary="false"/>
        <categoryLink id="2c27-21dd-1f7e-aeba" name="Upgrades" hidden="false" targetId="0389-64d4-2bab-e128" primary="false"/>
        <categoryLink id="4e24-bd7f-c654-29ff" name="Support" hidden="false" targetId="5c7e-0dec-8c5c-c7c8" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedRules>
    <rule id="a836-bf2f-2cdc-1a81" name="Advanced Breechloaders (ABL)" hidden="false">
      <description>These weapons act the same way as BL weapons. However, due to improvements in ammunition, targets hit by units armed with ABL weapons gain a +1 penalty to Shoot Saves as the rounds are deadlier than in previous times.</description>
    </rule>
    <rule id="37c8-c7e5-66bf-955c" name="Big Target" hidden="false">
      <description>Shoot tests against this unit gain a -1 bonus to hit.</description>
    </rule>
    <rule id="00b5-d7cc-fcf8-1ebd" name="Blood Curdling Charge" hidden="false">
      <description> -1 to Melee test during Charge actions while mounted.</description>
    </rule>
    <rule id="b0e7-f6f5-dc1e-9365" name="Cautious" hidden="false">
      <description>Must give Rally orders to Shaken units when possible.</description>
    </rule>
    <rule id="1b66-027f-b8e7-a2be" name="Cavalry" hidden="false">
      <description>May take a free Advance action at any point during their activation. Mounted units suffer a +1 penalty to their Shoot Save and Shoot skills. This unit may mount or dismount as part of an Advance action. One model may be used as a horse holder after dismounting. Otherwise, the horses leave the battlefield and the unit loses this trait for the rest of the game. Horses can also be used as Hard Cover when taking the Take Cover action and the unit loses this trait as they cannot mount again when the horses are removed from the game.</description>
    </rule>
    <rule id="c4f4-2732-d1c1-fe38" name="Close Combat Specialists" hidden="false">
      <description>This unit may reroll failed Melee tests.</description>
    </rule>
    <rule id="1eba-7fb8-113c-0050" name="Drilled" hidden="false">
      <description>If all the models in a unit of 5 or more models with this trait are in base to base contact with each other, the unit is considered to be In Formation. While In Formation, the unit gains the Big Target trait, the Intimidating trait, and a -1 bonus to its Melee Save tests. When the unit includes a Non-Commissioned Officer, it also gains a -1 bonus to its Resolve tests.</description>
    </rule>
    <rule id="14d9-205b-157b-bdbc" name="Elusive" hidden="false">
      <description>Unit gains a -1 bonus to Shoot Saves while in cover from terrain.</description>
    </rule>
    <rule id="45fd-adf5-3106-0f47" name="Engineers" hidden="false">
      <description>Unit’s target number to Start Fires is 8 instead of 10. It may use explosives (pg. 30) once a game.</description>
    </rule>
    <rule id="251c-0620-96ef-a048" name="Furious Assault" hidden="false">
      <description>May charge from 6” during Charge actions.</description>
    </rule>
    <rule id="ba15-66c1-b2bb-4cd9" name="Glory Hound" hidden="false">
      <description>Must give a Charge order to units in command and Charge range of an opposing unit when this unit is activated.</description>
    </rule>
    <rule id="f87e-c0d2-e50b-7d04" name="Hidden Setup" hidden="false">
      <description>When the unit begins the game deployed, it cannot be attacked until it moves or shoots.</description>
    </rule>
    <rule id="30cb-7082-8dcd-d2c9" name="High Rate of Fire" hidden="false">
      <description>Unit rolls 6d10 for Shoot tests when using the main weapon and loses the Repeater trait when down to 1 model.</description>
    </rule>
    <rule id="e629-d109-154b-988b" name="Inspiring" hidden="false">
      <description>Units in command may reroll failed Rally tests during this Leader’s activation</description>
    </rule>
    <rule id="f65a-0fb6-fb94-5081" name="Intimidating" hidden="false">
      <description>Opponents hit by this unit must add an extra 1d10 to the Resolve test.</description>
    </rule>
    <rule id="17d0-25ba-632a-8439" name="Large Unit" hidden="false">
      <description>This unit may have up to 10 models.</description>
    </rule>
    <rule id="0856-0531-ed88-318a" name="Marksman" hidden="false">
      <description>This unit may target specific models within range and line of sight when shooting. If any hits are scored, the targeted model must perform the Shoot Save test, and is removed as a casualty if it fails.</description>
    </rule>
    <rule id="9b33-3a83-874d-a899" name="Quick Reload" hidden="false">
      <description>This unit receives 1 Reload marker after shooting.</description>
    </rule>
    <rule id="1be5-9954-33fc-5911" name="Ruthless" hidden="false">
      <description>Unit gains a -1 bonus to Shoot and Melee tests if this unit has fewer Fatigue Points than its target.</description>
    </rule>
    <rule id="19d8-fa2b-5f53-6bdf" name="Scouts" hidden="false">
      <description>This unit ignores movement penalties from difficult terrain.</description>
    </rule>
    <rule id="c4dc-ae4d-61dd-5e70" name="Slow Reload" hidden="false">
      <description>This unit receives 2 Reload markers after shooting.</description>
    </rule>
    <rule id="190c-9f9d-004c-6d6f" name="Steadfast" hidden="false">
      <description>Unit may reroll failed Resolve tests results.</description>
    </rule>
    <rule id="7654-35c9-cf27-02f0" name="Tactician" hidden="false">
      <description>After resolving the Calamity and Fortune step of the Initiative Phase, this leader’s player may change the value of 1 Initiative Die up or down by one.</description>
    </rule>
    <rule id="1b6a-15dc-b74f-9fce" name="Tough" hidden="false">
      <description>Remove 1 Fatigue Point from this unit before resolving a Rally action.</description>
    </rule>
    <rule id="1c76-25b4-ccb0-2282" name="True Grit" hidden="false">
      <description>May reroll failed results during Melee Save tests.</description>
    </rule>
    <rule id="d086-892b-9a6c-98b3" name="Assault" hidden="false">
      <description>May reroll all failed results during Shoot Saves from Defensive Fire.</description>
    </rule>
    <rule id="b29e-8350-c862-5513" name="Explosives" hidden="false">
      <description>Units with the Engineers special rule may use 2 actions to Set Explosives on one objective, building, bridge, fence, or wall. For the explosives to be set, the unit takes a successful Set Fire action (modified to a target number of 8 by the Engineers trait). At the end of their next turn’s activation, the explosives detonate and the structure is destroyed. Any models within  4” of the structure are eliminated and any affected units  must make a Resolve test as usual (1d10 for being hit  by the explosion, + 1d10 per casualty suffered, against  their Resolve value).</description>
    </rule>
    <rule id="d92d-5ce0-a600-e96a" name="Thrown Weapons" hidden="false">
      <description>A unit armed with thrown weapons may reroll all of their failed Melee rolls made when taking a Charge action.</description>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile id="6ac8-e8cf-eec3-b7ea" name="Pistol (BL)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">10&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Reroll failed Melee tests.
When they are Breechloader Repeaters, they can shoot multiple times each turn and do  not gain Reload markers.</characteristic>
      </characteristics>
    </profile>
    <profile id="440b-fbc5-3aad-fd3b" name="Pistol (ML)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">10&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Reroll failed Melee tests.
Gain one Reload marker after shooting.</characteristic>
      </characteristics>
    </profile>
    <profile id="b296-f98d-001e-f626" name="Shotgun (ML)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">12&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Each natural roll of 10 adds one additional die to the Shoot test pool, but only once per attack.
Gain one Reload marker after shooting.</characteristic>
      </characteristics>
    </profile>
    <profile id="a50b-950d-8276-9a80" name="Bow (Repeater)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">20&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">-3 bonus to Shoot Save tests from bow attacks.</characteristic>
      </characteristics>
    </profile>
    <profile id="fa34-38cb-93f8-e86d" name="Smoothbore Musket (ML)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">30&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Gain one Reload marker after shooting.</characteristic>
      </characteristics>
    </profile>
    <profile id="078e-7b85-6bb2-85a2" name="Carbine (BL)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">30&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">No Reload marker after shooting.</characteristic>
      </characteristics>
    </profile>
    <profile id="f5e2-55a6-b075-f093" name="Carbine (Repeater)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">30&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">No Reload marker after shooting. May use two Shoot actions in an activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="fa1d-7faa-585c-5286" name="Gating Gun (Repeater)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">40&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">No Reload marker after shooting. May use two Shoot actions in an activation. Intimidating.</characteristic>
      </characteristics>
    </profile>
    <profile id="0eda-6214-3915-4fa5" name="Melee" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">Melee</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Included in unit&apos;s Melee value.</characteristic>
      </characteristics>
    </profile>
    <profile id="680b-5deb-3468-e870" name="Rifled Musket (ML)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">40&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Gain one Reload marker after shooting.
</characteristic>
      </characteristics>
    </profile>
    <profile id="619d-6b46-5aa4-4547" name="Rifle (BL)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">Unlimited</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">No Reload marker after shooting.</characteristic>
      </characteristics>
    </profile>
    <profile id="9283-f86b-4baf-c0e4" name="Rifle (ABL)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">Unlimited</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">No Reload marker after shooting.</characteristic>
      </characteristics>
    </profile>
    <profile id="1b3e-197f-841c-a61d" name="Carbine (ML)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">30&quot;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Gain one Reload marker after shooting.</characteristic>
      </characteristics>
    </profile>
    <profile id="5024-dd4b-27a4-4854" name="Shotgun (BL)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">12&apos;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Each natural roll of 10 adds one additional die to the Shoot test pool, but only once per attack.</characteristic>
      </characteristics>
    </profile>
    <profile id="1d28-60f5-1a6d-e496" name="Shotgun (Repeater)" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">12&apos;</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Each natural roll of 10 adds one additional die to the Shoot test pool, but only once per attack.
When double-barreled, they  are Repeaters. Shotgun-armed units may take 2 Shoot actions per activation when the weapon is listed as a Repeater and do not gain Reload markers.</characteristic>
      </characteristics>
    </profile>
    <profile id="05f6-1f8f-e835-7de7" name="Artillery" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">Unlimited</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">Gain two Reload markers after shooting. Cannot Move and  Shoot. 90 degree arc of fire. Intimidating.</characteristic>
      </characteristics>
    </profile>
    <profile id="0fbe-9a19-6a3e-7134" name="Light Artillery" hidden="false" typeId="c9cd-57c8-3205-dd49" typeName="Weapon">
      <characteristics>
        <characteristic name="Max Range" typeId="8869-9257-22d2-3dce">Unlimited</characteristic>
        <characteristic name="Notes" typeId="dff3-a276-cbdb-d3c7">4d10 for Shoot tests, each natural 10 rolled yields an additional d10 roll to hit.
Gain two Reload markers after shooting. Cannot Move and  Shoot. 90 degree arc of fire. Intimidating.</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
</gameSystem>