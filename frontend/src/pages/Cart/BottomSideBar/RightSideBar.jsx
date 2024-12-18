import React from "react";
import styles from "./index.module.css";
import InputText from "../../../components/Inputs/InputText/InputText";

function BottomSideBar({
  totalQuantity,
  totalPrice,
  totalWeight,
  deliveryAddress,
  onDeliveryAddressChange,
  onOrderPlace,
}) {
  return (
    <div className={styles.bottomSideBarContainer}>
      <div className={styles.bottomSideBar}>
        <h3 className={styles.bottomSideBar__caption}>Shopping cart</h3>
        <p className={styles.bottomSideBar__totalQuantity}>
          {totalQuantity} items
        </p>
        <div>
          <p className={styles.total__caption}>Total:</p>
          <div className={styles.total__container}>
            <p className={styles.total__price}>${totalPrice.toFixed(2)}</p>
            <p className={styles.total__weight}>{totalWeight}g</p>
          </div>
        </div>
        <form>
        <InputText
          label="Delivery address"
          name="delivery_address"
          value={deliveryAddress}
          required="true"
          maxLength="40"
          onChange={(value) => onDeliveryAddressChange(value)}
        />
        <button
          type="submit"
          className={styles.bottomSideBar__placeOrderButton}
          onClick={() => onOrderPlace()}
        >
          Place an order
        </button>
        </form>
      </div>
    </div>
  );
}

export default BottomSideBar;
