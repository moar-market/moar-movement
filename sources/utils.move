module moar::utils {
    use aptos_framework::object::{Object};
    use aptos_framework::fungible_asset::{Metadata};

    struct DebtData has drop, store, copy {
        pool_id: u64,
        debt: u64,
    }

    struct AssetData has drop, store, copy {
        asset: Object<Metadata>,
        amount: u64,
    }

    public fun create_debt_data(pool_id: u64, debt: u64): DebtData {
        DebtData {
            pool_id,
            debt,
        }
    }

    public fun debt_data_debt(data: &DebtData): u64 {
        data.debt
    }

    public fun debt_data_pool_id(data: &DebtData): u64 {
        data.pool_id
    }

    public fun create_asset_data(asset: Object<Metadata>, amount: u64): AssetData {
        AssetData {
            asset,
            amount,
        }
    }

    public fun asset_data_amount(data: &AssetData): u64 {
        data.amount
    }

    public fun asset_data_asset(data: &AssetData): Object<Metadata> {
        data.asset
    }
}
