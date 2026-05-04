-- ============================================================
-- Связи между таблицами (Foreign Keys)
-- Выполните ПОСЛЕ создания всех таблиц
-- ============================================================

-- tovar → articul
ALTER TABLE tovar
ADD CONSTRAINT FK_tovar_articul
FOREIGN KEY (articul_id) REFERENCES articul(id);

-- tovar → naim
ALTER TABLE tovar
ADD CONSTRAINT FK_tovar_naim
FOREIGN KEY (naim_id) REFERENCES naim(id);

-- tovar → postavshik
ALTER TABLE tovar
ADD CONSTRAINT FK_tovar_postavshik
FOREIGN KEY (postavshik_id) REFERENCES postavshik(id);

-- tovar → proizvod
ALTER TABLE tovar
ADD CONSTRAINT FK_tovar_proizvod
FOREIGN KEY (proizvoid_id) REFERENCES proizvod(id);

-- tovar → category_tovar
ALTER TABLE tovar
ADD CONSTRAINT FK_tovar_category
FOREIGN KEY (category_id) REFERENCES category_tovar(id);

-- user → role_sotrudnik
ALTER TABLE [user]
ADD CONSTRAINT FK_user_role
FOREIGN KEY (id_role) REFERENCES role_sotrudnik(id);

-- user → FIO_user
ALTER TABLE [user]
ADD CONSTRAINT FK_user_FIO
FOREIGN KEY (id_FIO) REFERENCES FIO_user(id);

-- zakaz → punkti_vidachi
ALTER TABLE zakaz
ADD CONSTRAINT FK_zakaz_punkt
FOREIGN KEY (address_punkt_vidachi) REFERENCES punkti_vidachi(id);

-- zakaz → FIO_avtoriz
ALTER TABLE zakaz
ADD CONSTRAINT FK_zakaz_FIO
FOREIGN KEY (id_FIO) REFERENCES FIO_avtoriz(id);

-- zakaz → status_zakaza
ALTER TABLE zakaz
ADD CONSTRAINT FK_zakaz_status
FOREIGN KEY (id_status_zakaza) REFERENCES status_zakaza(id);
