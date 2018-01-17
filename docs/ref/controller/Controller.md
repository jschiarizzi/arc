# *contract* Controller ([source](https://github.com/daostack/daostack/tree/master/./contracts/controller/Controller.sol))
*Code deposit cost: **less than 2358800 gas.***

*Execution cost: **No bound available.***

*Total deploy cost(deposit + execution): **less than 2358800 gas.***

> Controller contract

The *Contoller* is the centeral part of a DAO, it glues together all other components in a single smart contract.

![Controller Illustration](../../images/controller.png)
## Reference
- [Constructors](#constructors)
    - [Controller(address)](#constructor-controlleraddress)
- [Events](#events)
    - [ExternalTokenTransfer](#event-externaltokentransfer)
    - [UpgradeController](#event-upgradecontroller)
    - [ExternalTokenTransferFrom](#event-externaltokentransferfrom)
    - [RegisterScheme](#event-registerscheme)
    - [RemoveGlobalConstraint](#event-removeglobalconstraint)
    - [SendEther](#event-sendether)
    - [UnregisterScheme](#event-unregisterscheme)
    - [MintTokens](#event-minttokens)
    - [MintReputation](#event-mintreputation)
    - [GenericAction](#event-genericaction)
    - [ExternalTokenIncreaseApproval](#event-externaltokenincreaseapproval)
    - [ExternalTokenDecreaseApproval](#event-externaltokendecreaseapproval)
    - [AddGlobalConstraint](#event-addglobalconstraint)
- [Fallback](#fallback)
- [Functions](#functions)
    - [unregisterSelf](#function-unregisterself)
    - [unregisterScheme](#function-unregisterscheme)
    - [upgradeController](#function-upgradecontroller)
    - [mintReputation](#function-mintreputation)
    - [newController](#function-newcontroller)
    - [removeGlobalConstraint](#function-removeglobalconstraint)
    - [registerScheme](#function-registerscheme)
    - [schemes](#function-schemes)
    - [sendEther](#function-sendether)
    - [getSchemePermissions](#function-getschemepermissions)
    - [mintTokens](#function-minttokens)
    - [nativeToken](#function-nativetoken)
    - [nativeReputation](#function-nativereputation)
    - [externalTokenTransfer](#function-externaltokentransfer)
    - [getSchemeParameters](#function-getschemeparameters)
    - [globalConstraintsCount](#function-globalconstraintscount)
    - [globalConstraints](#function-globalconstraints)
    - [globalConstraintsRegister](#function-globalconstraintsregister)
    - [isSchemeRegistered](#function-isschemeregistered)
    - [isGlobalConstraintRegister](#function-isglobalconstraintregister)
    - [genericAction](#function-genericaction)
    - [externalTokenTransferFrom](#function-externaltokentransferfrom)
    - [externalTokenIncreaseApproval](#function-externaltokenincreaseapproval)
    - [externalTokenDecreaseApproval](#function-externaltokendecreaseapproval)
    - [avatar](#function-avatar)
    - [addGlobalConstraint](#function-addglobalconstraint)
### Constructors
### *constructor* Controller(address)

*Execution cost: **No bound available.***

**nonpayable**

*Params:*
1. **_avatar** *of type address*


### Events
### *event* ExternalTokenTransfer
*Params:*
1. **_sender** *of type address*
2. **_externalToken** *of type address*
3. **_to** *of type address*
4. **_value** *of type uint256*


### *event* UpgradeController
*Params:*
1. **_oldController** *of type address*
2. **_newController** *of type address*


### *event* ExternalTokenTransferFrom
*Params:*
1. **_sender** *of type address*
2. **_externalToken** *of type address*
3. **_from** *of type address*
4. **_to** *of type address*
5. **_value** *of type uint256*


### *event* RegisterScheme
*Params:*
1. **_sender** *of type address*
2. **_scheme** *of type address*


### *event* RemoveGlobalConstraint
*Params:*
1. **_globalConstraint** *of type address*
2. **_index** *of type uint256*


### *event* SendEther
*Params:*
1. **_sender** *of type address*
2. **_amountInWei** *of type uint256*
3. **_to** *of type address*


### *event* UnregisterScheme
*Params:*
1. **_sender** *of type address*
2. **_scheme** *of type address*


### *event* MintTokens
*Params:*
1. **_sender** *of type address*
2. **_beneficiary** *of type address*
3. **_amount** *of type uint256*


### *event* MintReputation
*Params:*
1. **_sender** *of type address*
2. **_beneficiary** *of type address*
3. **_amount** *of type int256*


### *event* GenericAction
*Params:*
1. **_sender** *of type address*
2. **_params** *of type bytes32[]*


### *event* ExternalTokenIncreaseApproval
*Params:*
1. **_sender** *of type address*
2. **_externalToken** *of type address*
3. **_spender** *of type address*
4. **_value** *of type uint256*


### *event* ExternalTokenDecreaseApproval
*Params:*
1. **_sender** *of type address*
2. **_externalToken** *of type address*
3. **_spender** *of type address*
4. **_value** *of type uint256*


### *event* AddGlobalConstraint
*Params:*
1. **_globalconstraint** *of type address*
2. **_params** *of type bytes32*


### Fallback
*Execution cost: **less than 720 gas.***

**nonpayable**



### Functions
### *function* unregisterSelf
> unregister the caller's scheme

*Execution cost: **less than 28031 gas.***

**nonpayable**

*Inputs:*
1. **unnamed** *of type address*

bool which represents a success

### *function* unregisterScheme

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_scheme** *of type address*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* upgradeController

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_newController** *of type address*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* mintReputation

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_amount** *of type int256*
2. **_beneficiary** *of type address*
3. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* newController

*Execution cost: **less than 658 gas.***

**constant | view**

*Inputs:*
*Nothing*

*Returns:*
1. **unnamed** *of type address*


### *function* removeGlobalConstraint

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_globalConstraint** *of type address*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* registerScheme

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_scheme** *of type address*
2. **_paramsHash** *of type bytes32*
3. **_permissions** *of type bytes4*
4. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* schemes

*Execution cost: **less than 1433 gas.***

**constant | view**

*Inputs:*
1. **unnamed** *of type address*

*Returns:*
1. **paramsHash** *of type bytes32*
2. **permissions** *of type bytes4*


### *function* sendEther

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_amountInWei** *of type uint256*
2. **_to** *of type address*
3. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* getSchemePermissions

*Execution cost: **No bound available.***

**constant | view**

*Inputs:*
1. **_scheme** *of type address*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bytes4*


### *function* mintTokens

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_amount** *of type uint256*
2. **_beneficiary** *of type address*
3. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* nativeToken

*Execution cost: **less than 1076 gas.***

**constant | view**

*Inputs:*
*Nothing*

*Returns:*
1. **unnamed** *of type address*


### *function* nativeReputation

*Execution cost: **less than 944 gas.***

**constant | view**

*Inputs:*
*Nothing*

*Returns:*
1. **unnamed** *of type address*


### *function* externalTokenTransfer

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_externalToken** *of type address*
2. **_to** *of type address*
3. **_value** *of type uint256*
4. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* getSchemeParameters

*Execution cost: **No bound available.***

**constant | view**

*Inputs:*
1. **_scheme** *of type address*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bytes32*


### *function* globalConstraintsCount

*Execution cost: **less than 849 gas.***

**constant | view**

*Inputs:*
1. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type uint256*


### *function* globalConstraints

*Execution cost: **less than 1412 gas.***

**constant | view**

*Inputs:*
1. **unnamed** *of type uint256*

*Returns:*
1. **gcAddress** *of type address*
2. **params** *of type bytes32*


### *function* globalConstraintsRegister

*Execution cost: **less than 1082 gas.***

**constant | view**

*Inputs:*
1. **unnamed** *of type address*

*Returns:*
1. **register** *of type bool*
2. **index** *of type uint256*


### *function* isSchemeRegistered

*Execution cost: **No bound available.***

**constant | view**

*Inputs:*
1. **_scheme** *of type address*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* isGlobalConstraintRegister

*Execution cost: **No bound available.***

**constant | view**

*Inputs:*
1. **_globalConstraint** *of type address*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* genericAction

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_params** *of type bytes32[]*
2. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* externalTokenTransferFrom

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_externalToken** *of type address*
2. **_from** *of type address*
3. **_to** *of type address*
4. **_value** *of type uint256*
5. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* externalTokenIncreaseApproval

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_externalToken** *of type address*
2. **_spender** *of type address*
3. **_addedValue** *of type uint256*
4. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* externalTokenDecreaseApproval

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_externalToken** *of type address*
2. **_spender** *of type address*
3. **_subtractedValue** *of type uint256*
4. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*


### *function* avatar

*Execution cost: **less than 724 gas.***

**constant | view**

*Inputs:*
*Nothing*

*Returns:*
1. **unnamed** *of type address*


### *function* addGlobalConstraint

*Execution cost: **No bound available.***

**nonpayable**

*Inputs:*
1. **_globalConstraint** *of type address*
2. **_params** *of type bytes32*
3. **unnamed** *of type address*

*Returns:*
1. **unnamed** *of type bool*

