<?php 

namespace App\DB;

class DbFactory {

    public static function create( array $options ) {
        
        // Create Dsn if not exist
        if(!array_key_exists('dsn', $options)) {
            if(!array_key_exists('charset', $options)) {
                $options['charset']='utf8';
            }
            if(!array_key_exists('driver', $options)) {
                throw new \InvalidArgumentException('no default driver');
            }

            $dsn = '';
            switch($options['driver']) {
                    case 'mysql':
                    case 'oracle':
                    case 'mssql':
                        $dsn = $options['driver'].':host='.$options['host'].';';
                        $dsn .= 'dbname='.$options['database'].';charset='.$options['charset'];
                        break;
                    case 'sqlite':
                        $dsn = 'sqllite:'.$options['database'];
                        break;
                    default:
                    throw new \InvalidArgumentException('Driver not set or unknown');

            }
            $options['dsn'] = $dsn;
            
        }
        return DbPdo::getInstance($options);
    }
}