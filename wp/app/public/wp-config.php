<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'B0J4LlFrgxtF3QuD+y0kdjhrrVwjJpr4XV6ildY+0xIc8e7bhwIgctnKVJB8OxRC7SpmGf2d8YUdoH1Tor/TNg==');
define('SECURE_AUTH_KEY',  'g6a0ANwUvdJl1FQZ19B8FDdtPACmgEeTQ6/ZQUVbfvJD7iYJOO3E1O9UV81twnrQ+CM4WLlAUcTX/W1COFnIZw==');
define('LOGGED_IN_KEY',    'Utl5pJtLhoIgVykwNEFuVc2r6Vn3xtN9dFCQrkw6ANm1D+1zsN8H77btICfMBkL0GArFo9LLOf6+0d30AC2SIg==');
define('NONCE_KEY',        'MLxMoS3SqMYc5Q2Ye7bHki4ZlDfSLFWu+bEL9q7RGnIvy49b6cb35G5Z/ZhmvCVzk0a8LAnu7yDw9CPLB/9E2Q==');
define('AUTH_SALT',        'bdqMaM4vsZrofSCzqCiCRWOJfQ7ZWcmLut+lUJ/V6MXEllRrq8GkVUd46FIhAChSyLAn32MESFiXVfDHcrGurw==');
define('SECURE_AUTH_SALT', 'pqn4lMtTxkVayHzcRTOGYYUAeCIljLDRwXUSLm7X9dOifdUBygb4kQlXtaSm/Z5RoFoQfqZF2xFOQRXg7j+eNA==');
define('LOGGED_IN_SALT',   'r2vqz4cDrOyEBqH3ADds5w+f7agR7vnzca4UWBL0T/DznT7N+bsEQYgYaXIQdgENjn+mF4JtSTOi+ZQCZXdTxw==');
define('NONCE_SALT',       'JigOL52WqWUd/HJ0JOssFnFHtE/wObDvZw9uXaTMiqnkK2SCmhbP3yDMm2oEGHkWf9dx6xbsLGusLCs2n20d4Q==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
