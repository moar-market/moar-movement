module moar::lens {
    use aptos_framework::fungible_asset::{Metadata};
    use aptos_framework::object::{Object};

    use std::option::{Option};

    use moar::utils::{DebtData, AssetData};

    #[view]
    public fun get_credit_account_assets(_credit_account_address: address): vector<Object<Metadata>> {
        abort 0
    }

    #[view]
    public fun get_credit_account_debt_pools(_credit_account_address: address): vector<u64> {
        abort 0
    }

    #[view]
    public fun lp_token_metadata(_pool_id: u64): Object<Metadata> {
        abort 0
    }

    #[view]
    // returns (total_lp_shares, total_amount, unbonding_shares, unbonding_amount, unbonding_time)
    public fun get_lp_shares_and_deposited_amount(_pool_id: u64, _user: address): (u64, u64, u64, u64, u64) {
        abort 0
    }

    #[view]
    public fun get_min_asset_required(_credit_account_address: address): u64 {
        abort 0
    }

    #[view]
    public fun get_health_metrics(
        _credit_account_address: address, _trade_token: Object<Metadata>, _is_long: bool
    ): (Option<u64>, Option<u64>) {
        abort 0
    }

    #[view]
    public fun get_estimated_health_metrics(
        _credit_account_address: address,
        _trade_token: Object<Metadata>,
        _is_long: bool,
        _ca_assets: vector<Object<Metadata>>,
        _ca_assets_amounts: vector<u64>,
        _ca_debt_pools: vector<u64>,
        _ca_debt_amounts: vector<u64>,
        _trade_token_amount: u64
    ): (Option<u64>, Option<u64>) {
        abort 0
    }

    #[view]
    public fun get_unhealthy_credit_accounts(_credit_account_addresses: vector<address>): (vector<address>, vector<address>) {
        abort 0
    }

    #[view]
    public fun get_credit_account_debt_and_asset_amounts(_credit_account_address: address): (vector<DebtData>, vector<AssetData>) {
        abort 0
    }

    #[view]
    public fun get_credit_account_debt_and_asset_values(_credit_account_address: address): (u64, u64) {
        abort 0
    }
}
