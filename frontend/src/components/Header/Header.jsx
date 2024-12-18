import React, { useState, useEffect, useContext } from "react";
import styles from "./index.module.css";
import adminIcon from "./icons/admin.svg";
import catalogIcon from "./icons/catalog.svg";
import cartIcon from "./icons/cart.svg";
import signInIcon from "./icons/sign-in.svg";
import orderIcon from "./icons/order.svg";
import signOutIcon from "./icons/sign-out.svg";
import { NavLink, useLocation } from "react-router-dom";
import { AuthContext } from "../../AuthContext";

function Header() {
  const { roles, isAuthenticated, logout } = useContext(AuthContext);

  return (
    <header>
      <Navbar
        roles={roles}
        isAuthenticated={isAuthenticated}
        onLogout={logout}
      />
    </header>
  );
}

function Navbar({ roles, isAuthenticated }) {
  const location = useLocation();

  const isActive = (path) => {
    return location.pathname === path;
  };

  const isCustomer = roles.includes("ROLE_CUSTOMER");
  const isAdmin = roles.includes("ROLE_ADMIN");

  return (
    <nav className={styles.navigationContainer} id="navi-top-bar">
      <h1 className={styles.shopTitle}>FastFoodRestaurant</h1>
      {isAdmin && (
        <NavLink
          to="/admin-panel/product-panel"
          className={({ isActive }) =>
            isActive ? styles["navigationItem--active"] : styles.navigationItem
          }
          id="home-href"
        >
        <img
          src={adminIcon}
          className={styles["navigationItem__icon"]}
          alt="icon"
        />
        <p className={styles["navigationItem__text"]}>Admin panel</p>
        </NavLink>
      )}

      <NavLink
        to="/catalog"
        className={({ isActive }) =>
          isActive ? styles["navigationItem--active"] : styles.navigationItem
        }
        id="href"
      >
        <img
          src={catalogIcon}
          className={styles["navigationItem__icon"]}
          alt="icon"
        />
        <p className={styles["navigationItem__text"]}>Catalog</p>
      </NavLink>

      {isCustomer && (
        <NavLink
          to="/cart"
          className={({ isActive }) =>
            isActive ? styles["navigationItem--active"] : styles.navigationItem
          }
          id="cart-href"
        >
          <img
            src={cartIcon}
            className={styles["navigationItem__icon"]}
            alt="icon"
          />
          <p className={styles["navigationItem__text"]}>Cart</p>
        </NavLink>
      )}

      {!isCustomer && !isAdmin && (
        <NavLink
          to="/sign-in"
          className={({ isActive }) => isActive ? styles["navigationItem--active"] : styles.navigationItem}
          id="sign-in-href"
        >
          <img
            src={signInIcon}
            className={styles["navigationItem__icon"]}
            alt="icon"
          />
          <p className={styles["navigationItem__text"]}>Sign in</p>
        </NavLink>
      )}

      {isCustomer && (
        <NavLink
          to="/orders"
          className={({ isActive }) =>
            isActive ? styles["navigationItem--active"] : styles.navigationItem
          }
          id="user-profile-href"
        >
          <img
            src={orderIcon}
            className={styles["navigationItem__icon"]}
            alt="icon"
          />
          <p className={styles["navigationItem__text"]}>Orders</p>
        </NavLink>
      )}

      {(isAdmin || isCustomer) && (
        <NavLink
          to="/sign-out"
          className={({ isActive }) =>
            isActive ? styles["navigationItem--active"] : styles.navigationItem
          }
          id="sign-out-href"
        >
          <img
            src={signOutIcon}
            className={styles["navigationItem__icon"]}
            alt="icon"
          />
          <p className={styles["navigationItem__text"]}>Sign out</p>
        </NavLink>
      )}
    </nav>
  );
}

export default Header;
