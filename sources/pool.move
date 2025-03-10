module moar::pool {
    use aptos_framework::fungible_asset::{ Metadata, BurnRef, MintRef, TransferRef, MutateMetadataRef };
    use aptos_framework::object::{ Object, ExtendRef };

    use aptos_std::smart_table::{SmartTable};

    use std::option::{Option};
    use std::string::{String};


    struct LPTokenRefs has store {
        burn_ref: BurnRef,
        mint_ref: MintRef,
        transfer_ref: TransferRef,
        mutate_metadata_ref: MutateMetadataRef,
    }

    #[resource_group_member(group = aptos_framework::object::ObjectGroup)]
    struct Pool has key {
        name: String,
        underlying_asset: Object<Metadata>,
        borrow_shares_map: SmartTable<address, u64>,
        lp_token_refs: LPTokenRefs,
        deposit_cap: u128,
        borrow_cap: u128,
        fee_on_interest_bps: u64,
        origination_fee_bps: u64,
        is_paused: bool,
        total_borrows: u128,
        total_borrow_shares: u128,
        total_deposited: u128,
        pool_owner: address,
        extend_ref: ExtendRef,
        withdraw_period: u64,
        unbond_period: u64,
    }

    struct PoolView {
        name: String,
        underlying_asset: Object<Metadata>,
        deposit_cap: u128,
        borrow_cap: u128,
        fee_on_interest_bps: u64,
        origination_fee_bps: u64,
        is_paused: bool,
        total_borrows: u128,
        total_borrow_shares: u128,
        total_deposited: u128,
        pool_owner: address,
        interest_accrued: u64,
        total_lp_token_supply: u128,
        interest_rate: u64,
        unbond_period: u64,
        withdraw_period: u64,
    }


    #[view]
    public fun total_number_of_pools(): u64 {
        abort 0
    }

    #[view]
    public fun get_all_pools(): vector<PoolView> {
        abort 0
    }

    #[view]
    public fun get_pool_by_id(_pool_id: u64): Object<Pool> {
        abort 0
    }

    #[view]
    public fun get_interest_rate(_pool_id: u64): (u64, u64) {
        abort 0
    }

    #[view]
    public fun get_unbonding_info(_user: address, _pool_id: u64): (u64, u64, u64) {
        abort 0
    }

    #[view]
    public fun get_borrows_of(_pool_id: u64, _credit_account: address): (u64, Object<Metadata>) {
        abort 0
    }

    #[view]
    public fun get_pool_asset(_pool_id: u64): Object<Metadata> {
        abort 0
    }

    #[view]
    public fun lp_token_supply(_pool_id: u64): u128 {
        abort 0
    }

    #[view]
    public fun pool_reserve(_pool_id: u64): u64 {
        abort 0
    }

    #[view]
    public fun pool_total_borrows(_pool_id: u64): u128 {
        abort 0
    }

    #[view]
    public fun pool_total_deposited(_pool_id: u64): u128 {
        abort 0
    }

    #[view]
    public fun convert_lp_shares_to_amount(_pool_id: u64, _shares: u64): u64 {
        abort 0
    }

    #[view]
    public fun convert_amount_to_lp_shares(_pool_id: u64, _amount: u64): u64 {
        abort 0
    }

    #[view]
    public fun simulate_accrue_public(_pool_id: u64): (u64, u64) {
        abort 0
    }

    //////////////////////////////////////// Liquidity Providers (LPs) ///////////////////////////////////////////////

    public entry fun deposit_entry<CoinType>(
        _user: &signer,
        _pool_id: u64,
        _asset_metadata: Object<Metadata>,
        _amount: u64,
        _receiver: address,
    ) {
        abort 0
    }

    public entry fun start_unbonding(
        _lp: &signer,
        _pool_id: u64,
        _amount: Option<u64>,
    ) {
        abort 0
    }

    public entry fun withdraw(
        _lp: &signer,
        _pool_id: u64,
        _amount: Option<u64>,
        _receiver: address,
    ) {
        abort 0
    }

    public entry fun accrue(_pool_id: u64) {
        abort 0
    }

}
