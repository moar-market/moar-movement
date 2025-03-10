module moar::credit_manager {
    use aptos_framework::fungible_asset::{FungibleAsset, Metadata};
    use aptos_framework::object::{Object};
    use aptos_std::copyable_any::{Any};
    use std::option::{Option};

    use moar::utils::{DebtData, AssetData};

    struct LiquidationReceipt {
        credit_account_address: address,
        debt_data: vector<DebtData>,
        initial_health_factor: u64,
        is_bad_debt: bool,
    }

    // ----------------- DYNAMIC EXECUTION STRUCTS -----------------

    struct ExecStrategyData has drop, store, copy {
        protocol: u8,
        strategy: u8,
        calldata: Any,
    }

    struct WithdrawData has drop, store, copy {
        receiver: address,
        amount: Option<u64>,
        asset: Object<Metadata>,
    }

    struct DepositData has drop, store, copy {
        metadata: Object<Metadata>,
        amount: u64,
    }

    struct RepayData has drop, store, copy {
        pool_id: u64,
        amount: Option<u64>,
    }

    struct BorrowData has drop, store, copy {
        pool_id: u64,
        amount: u64,
    }

    struct TokenData has drop, store, copy {
        asset: Object<Metadata>,
    }

    // Define a new struct to hold all possible action data
    struct ActionData has drop, store, copy {
        op_type: u8,
        data: Any,
    }

    public entry fun execute_actions<
        T: drop + store + copy, T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16,
        T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30
    >(
        _user: &signer,
        _credit_account_address: address,
        _actions: vector<T>
    ) {
        abort 0
    }

    public entry fun create_account_and_execute_actions<
        T: drop + store + copy, T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
        T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30
    >(
        _user: &signer,
        _actions: vector<T>
    ) {
        abort 0
    }

    public fun create_credit_account(_user: &signer): address {
        abort 0
    }

    public entry fun deposit_collateral_entry<CoinType>(
        _user: &signer,
        _credit_account_address: address,
        _asset_metadata: Object<Metadata>,
        _amount: u64,
    ) {
        abort 0
    }

    public entry fun withdraw_entry(
        _user: &signer,
        _credit_account_address: address,
        _receiver: address,
        _amount: Option<u64>,
        _asset: Object<Metadata>,
    ) {
        abort 0
    }

    public entry fun add_credit_account_asset_entry(
        _user: &signer,
        _credit_account_address: address,
        _asset: Object<Metadata>,
    ) {
        abort 0
    }

    public entry fun remove_credit_account_asset_entry(
        _user: &signer,
        _credit_account_address: address,
        _asset: Object<Metadata>,
    ) {
        abort 0
    }

    public entry fun borrow_entry(
        _user: &signer,
        _credit_account_address: address,
        _pool_id: u64,
        _amount: u64,
    ) {
        abort 0
    }

    // no need for a separate entry function for repay, as we don't check for healthy position after repay, to allow for partial repayment
    public entry fun repay(
        _user: &signer,
        _credit_account_address: address,
        _pool_id: u64,
        _amount: Option<u64>
    ) {
        abort 0
    }

    public fun liquidate<T0, T1, T2, T3, CR0, CR1, CR2, CR3, CR4, CR5, CR6, CR7, CR8, CR9, CR10>(
        _liquidator: &signer,
        _credit_account_address: address,
        _staking_protocol: Option<u8>,
        _debt_data: vector<DebtData>,
        _asset_data: vector<AssetData>,
        _debt_assets: vector<FungibleAsset>,
        _claim_rewards_calldatas: vector<Any>,
    ): vector<FungibleAsset> {
        abort 0
    }

    public fun liquidation_start<T0, T1, T2, T3, CR0, CR1, CR2, CR3, CR4, CR5, CR6, CR7, CR8, CR9, CR10>(
        _liquidator: &signer,
        _credit_account_address: address,
        _staking_protocol: Option<u8>,
        _debt_data: vector<DebtData>,
        _asset_data: vector<AssetData>,
        _claim_rewards_calldatas: vector<Any>,
    ): (vector<FungibleAsset>, LiquidationReceipt) {
        abort 0
    }

    public fun liquidation_end(
        _liquidator: &signer,
        _debt: LiquidationReceipt,
        _repay_assets: vector<FungibleAsset>,
    ) {
        abort 0
    }

    public fun liquidate_bad_debt<T0, T1, T2, T3, CR0, CR1, CR2, CR3, CR4, CR5, CR6, CR7, CR8, CR9, CR10>(
        _liquidator: &signer,
        _credit_account_address: address,
        _staking_protocol: Option<u8>,
        _debt_amount_list: vector<Option<u64>>,
        _claim_rewards_calldatas: vector<Any>,
    ): vector<FungibleAsset> {
        abort 0
    }

    public fun bad_debt_liquidation_start<T0, T1, T2, T3, CR0, CR1, CR2, CR3, CR4, CR5, CR6, CR7, CR8, CR9, CR10>(
        _liquidator: &signer,
        _credit_account_address: address,
        _staking_protocol: Option<u8>,
        _debt_amount_list: vector<Option<u64>>,
        _claim_rewards_calldatas: vector<Any>,
    ): (vector<FungibleAsset>, LiquidationReceipt) {
        abort 0
    }

    public fun bad_debt_liquidation_end(
        _liquidator: &signer,
        _liquidation_receipt: LiquidationReceipt,
        _repay_assets: vector<FungibleAsset>,
    ) {
        abort 0
    }

    public fun execute_strategy_public<
        T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
        T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31,
    >(
        _user: &signer,
        _credit_account_address: address,
        _protocol: u8,
        _strategy: u8,
        _calldata: Any,
    ) {
        abort 0
    }


    /// Claim rewards for a credit account
    public fun claim_rewards<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        _user: &signer,
        _credit_account_address: address,
        _calldatas: vector<Any>
    ) {
        abort 0
    }

    public entry fun close_credit_account(
        _user: &signer,
        _credit_account_address: address
    ) {
        abort 0
    }

    public fun create_asset_data_public(
        _credit_account_address: address,
        _seize_asset_metadata_list: vector<Object<Metadata>>,
        _seize_asset_amount_list: vector<Option<u64>>
    ): vector<AssetData> {
        abort 0
    }

    public fun create_debt_data_public(
        _credit_account_address: address,
        _pool_id_list: vector<u64>,
        _debt_amount_list: vector<Option<u64>>
    ): vector<DebtData> {
        abort 0
    }


    // ------------------- VIEW FUNCTIONS -------------------
    #[view]
    public fun is_position_healthy(_credit_account_address: address): bool {
        abort 0
    }

    #[view]
    public fun is_bad_debt(_credit_account_address: address): bool {
        abort 0
    }

    #[view]
    public fun get_credit_account_debt_pools_and_assets(_credit_account_address: address): (vector<u64>, vector<Object<Metadata>>) {
        abort 0
    }

    #[view]
    public fun get_user_credit_accounts(_user: address): vector<address> {
        abort 0
    }

    #[view]
    public fun get_user_active_credit_accounts(_user: address): vector<address> {
        abort 0
    }

    #[view]
    public fun get_allowed_assets(): vector<Object<Metadata>> {
        abort 0
    }

    #[view]
    public fun get_last_reward_claim_time(_credit_account_address: address): u64 {
        abort 0
    }

    // ------------------- DYNAMIC EXECUTION HELPER FUNCTIONS -------------------

    public fun create_action_data(
        _op_type: u8,
        _data: Any,
    ): ActionData {
        abort 0
    }

    public fun new_exec_strategy_action_data(
        _protocol: u8,
        _strategy: u8,
        _calldata: Any,
    ): ActionData {
        abort 0
    }

    public fun new_withdraw_action_data(
        _receiver: address,
        _amount: Option<u64>,
        _asset: Object<Metadata>,
    ): ActionData {
        abort 0
    }

    public fun new_deposit_action_data(
        _metadata: Object<Metadata>,
        _amount: u64,
    ): ActionData {
        abort 0
    }

    public fun new_repay_action_data(
        _pool_id: u64,
        _amount: Option<u64>,
    ): ActionData {
        abort 0
    }

    public fun new_borrow_action_data(
        _pool_id: u64,
        _amount: u64,
    ): ActionData {
        abort 0
    }

    public fun new_add_token_action_data(_asset: Object<Metadata>): ActionData {
        abort 0
    }

    public fun new_remove_token_action_data(_asset: Object<Metadata>): ActionData {
        abort 0
    }

    public fun new_close_account_action_data(): ActionData {
        abort 0
    }
}
