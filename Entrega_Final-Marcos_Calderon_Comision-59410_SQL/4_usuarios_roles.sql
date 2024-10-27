USE distribuidora;

DROP USER IF EXISTS 'db_user_admin'@'%';
DROP USER IF EXISTS 'db_consumer_user'@'%';
DROP USER IF EXISTS 'bk_user'@'%';

-- Crear usuarios

CREATE USER 'db_user_admin'@'%' IDENTIFIED BY 'pass_111!';
CREATE USER 'db_consumer_user'@'%' IDENTIFIED BY 'pass_222!';
CREATE USER 'bk_user'@'%' IDENTIFIED BY 'pass_333!';

-- --------------------------------------------------------------------------------------------------------------------------------------

-- Asignar permisos a db_user_admin

GRANT SELECT, INSERT, UPDATE ON distribuidora.* TO 'db_user_admin'@'%';
GRANT SELECT ON distribuidora.vw_cantidad_ventas_por_vendedor TO 'db_user_admin'@'%';
GRANT SELECT ON distribuidora.vw_cantidad_envios_por_cliente TO 'db_user_admin'@'%';
SHOW GRANTS FOR 'db_user_admin'@'%';

-- Asignar permisos a db_consumer_user

GRANT SELECT ON distribuidora.vw_cantidad_ventas_por_vendedor TO 'db_consumer_user'@'%';
GRANT SELECT ON distribuidora.vw_cantidad_envios_por_cliente TO 'db_consumer_user'@'%';
SHOW GRANTS FOR 'db_consumer_user'@'%';

-- Asignar permisos a bk_user

GRANT USAGE ON distribuidora.* TO 'bk_user'@'%';
GRANT PROCESS, RELOAD ON *.* TO 'bk_user'@'%';
GRANT SELECT, LOCK TABLES, SHOW VIEW, EVENT, TRIGGER ON distribuidora.* TO 'bk_user'@'%';
SHOW GRANTS FOR 'bk_user'@'%';
