import sqlite3

if __name__ == "__main__":
	with open("script.sql") as f:
		s = f.read()
	conn = sqlite3.connect("school_v1.sqlite3")
	c = conn.cursor()
	try:
		c.execute(s)

		r = c.fetchall()

		print("---SCRIPT\n" + s.replace("--Пишем код на SQL ниже", '').replace('--Не забываем про ";"" на конце :)', '') + "\n---RESULT")
		
		table_values = ["\t\t".join([str(value) for value in values]) for values in r]
		table_values.insert(0, "\t".join([description[0] for description in c.description]))
		d = "\n".join(table_values)
		print(d)

		print("\n---ANSWER\n\n---")
	except Exception as e:
		raise e
		print("SQL код написан с ошибками! Проверьте его на ошибки. Не забудьте перед началом работы запустить init.py")
	finally:
		conn.close()
