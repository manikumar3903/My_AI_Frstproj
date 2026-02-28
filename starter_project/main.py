import sys

def main():
    msg = "Hello from your starter AI project!"
    if "--gui" in sys.argv:
        try:
            import tkinter as tk
            from tkinter import messagebox
            root = tk.Tk()
            root.withdraw()
            messagebox.showinfo("Starter Message", msg)
            root.destroy()
        except Exception as e:
            print("GUI not available:", e)
            print(msg)
    else:
        print(msg)


if __name__ == "__main__":
    main()
