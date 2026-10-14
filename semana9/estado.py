import shutil

total, usado, libre = shutil.disk_usage("/")
gb = 1024 ** 3

print("===== ESTADO DEL DISCO =====")
print(f"Espacio total: {total / gb:.2f} GB")
print(f"Espacio usado: {usado / gb:.2f} GB")
print(f"Espacio libre: {libre / gb:.2f} GB")

porcentaje = (usado / total) * 100
print(f"Uso del disco: {porcentaje:.2f}%")
