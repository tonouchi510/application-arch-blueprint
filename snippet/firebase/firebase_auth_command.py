import firebase_admin
from firebase_admin import credentials
from firebase_admin import auth

import os
import fire
import time
import requests
import json


cred = credentials.Certificate(os.getenv("FIREBASE_ADMIN_SDK_JSON"))
firebase_app = firebase_admin.initialize_app(cred)
ALLOWED_ROLES = ["freemium", "premium", "admin"]


def set_custom_claims(uid: str, role: str):
    if role not in ALLOWED_ROLES:
        raise ValueError(f"Invalid role: {role}, allowed: {ALLOWED_ROLES}")

    customClaims = {
        "admin": True if role == "admin" else False,
        "https://hasura.io/jwt/claims": {
            "x-hasura-default-role": role,
            "x-hasura-allowed-roles": ALLOWED_ROLES,
            "x-hasura-user-id": uid
        }
    }
    auth.set_custom_user_claims(uid, customClaims)

    # wait
    time.sleep(10)

    # check
    user = auth.get_user(uid)
    print("check claims:")
    print(f"admin: {user.custom_claims.get('admin')}")
    print(f"https://hasura.io/jwt/claims: {user.custom_claims.get('https://hasura.io/jwt/claims')}")


def get_idtoken_with_password(
    api_key: str,
    email: str = "hoge@hoge.com",
    password: str = "password"
):
    # api_keyはFirebaseプロジェクトの設定から取得できます。
    url = f"https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key={api_key}"
    payload = {"email": email, "password": password, "returnSecureToken": True}
    response = requests.post(url, params=payload)
    json_data = json.loads(response.text)
    print(json_data["idToken"])


def get_user_claims(uid):
    user = auth.get_user(uid)
    print(user.custom_claims)


def verify_id_token(id_token: str):
    decoded_token = auth.verify_id_token(id_token)
    print(decoded_token)


def main(operation, **args):

    if operation == "set-custom-claims":
        if "uid" not in args:
            raise ValueError("uid has to be supplied.")
        uid = args["uid"]

        role = "freemium"
        if "role" in args:
            role = args["role"]
        set_custom_claims(uid, role)

    elif operation == "get-idtoken-with-password":
        if "api_key" not in args:
            raise ValueError("api_key has to be supplied.")
        api_key = args["api_key"]
        email = args["email"] if "email" in args else "hoge@hoge.com"
        password = args["password"] if "password" in args else "password"
        get_idtoken_with_password(api_key, email, password)

    elif operation == "get-user-claims":
        if "uid" not in args:
            raise ValueError("uid has to be supplied.")
        uid = args["uid"]
        get_user_claims(uid)

    elif operation == "verify-id-token":
        if "id_token" not in args:
            raise ValueError("id_token has to be supplied.")
        id_token = args["id_token"]
        verify_id_token(id_token)

    else:
        raise ValueError(f"Invalid operation name: {operation}.")


if __name__ == "__main__":
    fire.Fire(main)
