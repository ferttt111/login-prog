#include <iostream>
#include <locale.h> 
#include <clocale>
#include <string>

using namespace std;

int main() {
    setlocale(LC_ALL, "Russian");

    string ses, pas;
    int choice;
    int choicePol;

    bool a = true;
    while (a) {
        cout << "Введи логин не больше 8 символов: " << endl;
        cin >> ses;
        int count = 0;
        for (int i = 0; i < ses.length(); ++i) {
            count++;
        }
        if (count > 8) {
            cout << "Ваш логин длинее 8 символов, пожалуйста введите логин меньше 8 символов" << endl;
        }

        else {
            cout << "Логин введен успешно" << endl;
            a = false;
        }
    }

    bool b = true;
    while (b) {
        cout << "Введи пароль не более 16 символов: " << endl;
        cin >> pas;
        int countt = 0;
        for (int e = 0; e < pas.length(); ++e) {
            countt++;
        }
        if (countt > 16) {
            cout << "Ваш пароль длинее 16 символов, пожалуйста введите логин меньше 8 символов" << endl;
        }

        else {
            cout << "пароль введен успешно" << endl;
            b = false;
        }
    }
    

    while (true) {
        cout << "\nМеню:\n";
        cout << "1. Просмотреть информацию о пользователе\n";
        cout << "2. Изменить данные\n";
        cout << "3. Выйти\n";
        cout << "Выберите пункт меню: ";
        cin >> choice;

        switch (choice) {
        case 1:
            cout << "Логин: " << ses << " Пароль: " <<pas<<endl;
            break;

        case 2:
            cout << "\nИзменить Логин - 1\n\nИзменить пароль - 2\n\nВыйти из пункта 2 - 3\n\n" << endl;
            cout << "Выберите пункт: ";
            cin >> choicePol;

            switch (choicePol) {
            case 1:
                cout << "Введите логин на который хотите поменять: " << endl;
                cin >> ses;
                break;

            case 2:
                cout << "Введите пароль на который хотите поменять: " << endl;
                cin >> pas;
                break;

            case 3:
                cout << "Возврат в главное меню." << endl;
                break; 

            default:
                cout << "Неверный выбор. Пожалуйста, выберите пункт меню от 1 до 3." << endl;
                break;
            }
            break;
        case 3:
            cout << "Выход из программы." << endl;
            return 0; 
        default:
            cout << "Неверный выбор. Пожалуйста, выберите пункт меню от 1 до 3." << endl;
        }
    }

    return 0;
}
