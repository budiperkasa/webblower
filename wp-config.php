<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'webbrcom_cloud');

/** MySQL database username */
define('DB_USER', 'webbrcom_cloud');

/** MySQL database password */
define('DB_PASSWORD', 'enteraja');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'T75=GJmRW^;$W1]&~a6+uc4A4$rL_h=qe7lYFA?Usa;`qG-Ly4u; g@>Wy<[@ghJ');
define('SECURE_AUTH_KEY',  'Q=L9pNNN;Xj7>%g^2.0JQg5]znKo5PESP/;Q2Tk5qDFzZh()]Bf*]ZeW-xDD[bx;');
define('LOGGED_IN_KEY',    '1J-f+mb;P0ll)5>^-p|A!l7M7=~xst>}*j(PgehgETsefPdz`P@Yj{>FXp$U*V@<');
define('NONCE_KEY',        'O;L15dNTz;K<:o0!YDZ`Q-9!/,E4J @~#<f}D$(CgFNrRXqc~Kx::^VLd`;Vz[ZK');
define('AUTH_SALT',        '>R?}}y9/S0pUO}>2_N./0=Q49%W6mu5}?#{@[@/qq[<loNSAjs%]N`WKunWU>,GP');
define('SECURE_AUTH_SALT', 'K> 3+TrP-36GRh*5+_MlXEqn>Vtc,k/wJhn ,5YXRA)1])WOQz2ngdr71:#h(5l]');
define('LOGGED_IN_SALT',   'vb]~O<U[.^e1q%dF{/>d;W%xg|wM!>D%9 v|eOQ`<NAOIhnYMhMe=JRDK-Hy!$ W');
define('NONCE_SALT',       ',^P]9T{}l*+%9K-b`3JL).ocK>WE_G#.dIQ<2|9<7VHETO9h)oJt,zCEQaz1jQ?c');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
