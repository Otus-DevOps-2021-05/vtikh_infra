#{
# "wg": false,
# "push_auth": false,
# "server_id": "60cd18d0ac1eddc79a6c0b46",
# "token_ttl": 172800,
# "user_id": "60cd181fac1eddc79a6c0a87",
# "sync_secret": "bw1gJxhsyaz2C5fKwqFdBpzMTtZNe9vn",
# "password_mode": "pin",
# "token": false,
# "server": "server",
# "organization_id": "60cd181eac1eddc79a6c0a81",
# "sync_token": "MuQO2fmzo4GWez5zjwbOydViMcVhUH0B",
# "disable_reconnect": false,
# "version": 1,
# "user": "test",
# "sync_hosts": [
#  "https://84.252.139.218"
# ],
# "server_box_public_key": "d1QXRetaz/3UtOWPHFKuf+p7sKlavHMcTdeh+v2fy08=",
# "organization": "otus",
# "sync_hash": "aee737d12b4e0dbff6bc323e6789fb11",
# "server_public_key": [
#  "-----BEGIN RSA PUBLIC KEY-----",
#  "MIICCgKCAgEAuZZzURkUw8I9cguW4TiDsItFarxTkikaVNUoJ3koj1zy6jC6Gqm6",
#  "TqNDUA4/hn1vvyc99nJNAg2BkXSUfv9vqW3soCekvObHAAII5zy6lmeR9O0/E0Pu",
#  "yv2pC/c0tx64mn8ou0JCQBFsUM54FxNLZeh77zqPAu2+X3kgmDkYoBjzuu915r7B",
#  "mrw66huJm5WeLNXZVsS9IPTthhg+JXSRnmoV3Dd4FhxS46E0pPtXmEyy1OPwJgNx",
#  "c49bVDDcdB7lhumkUbwFtiC+HWJZvStjyJ4Psl+yrQ6Ev9uKDRJUifrZrYRIkQNo",
#  "6Em/qkJHR+PoIUGRF7Hnx7jB4yNx8vcNEaQKxswDYJ/1DQnQZ7mzVGwxmzxiyv6G",
#  "ElnxMeL22iEBOiAZNRszr3bSS016SuOQF9Sk1dBV8N2aM8uSFv6F4KkxNUMycKDc",
#  "nRkJKn/Dr68W4eSz98rT1b15oHhdQPXOBrbkQHSv/d0osDM4S8ES5qkOTlI6+E/l",
#  "vfkMFf7sQ1CVGnzEqPMc3H7UBBs6WIad/5ZJeNKuYCyxL1xjvAGlF54cRxCuEbvj",
#  "9wbGbh4lGh0axO1qIVKaJNYRdz0afnetqttliDW1tmk7zqg4eNnNdgIWhelQNZAv",
#  "EUZzqjqLedRzyj5929f64hKC8cQIlVTKChwQCCcgr9JyZvC9dXqTTfkCAwEAAQ==",
#  "-----END RSA PUBLIC KEY-----"
# ],
# "push_auth_ttl": 172800
#}
setenv UV_ID 30c8c0521cc1491b9ef0a2e458278e75
setenv UV_NAME evening-skies-5473
client
dev tun
dev-type tun
remote 84.252.139.218 18680 udp
nobind
persist-tun
cipher AES-128-CBC
auth SHA1
verb 2
mute 3
push-peer-info
ping 10
ping-restart 60
hand-window 70
server-poll-timeout 4
reneg-sec 2592000
sndbuf 393216
rcvbuf 393216
max-routes 1000
remote-cert-tls server
comp-lzo no
auth-user-pass
key-direction 1
<ca>
-----BEGIN CERTIFICATE-----
MIIFcjCCA1qgAwIBAgIJAIB5nHAnqCiHMA0GCSqGSIb3DQEBCwUAMEYxITAfBgNV
BAoMGDYwY2QxODFlYWMxZWRkYzc5YTZjMGE4MTEhMB8GA1UEAwwYNjBjZDE4MWVh
YzFlZGRjNzlhNmMwYTgyMB4XDTIxMDYxODIyMDMxMVoXDTQxMDYxMzIyMDMxMVow
RjEhMB8GA1UECgwYNjBjZDE4MWVhYzFlZGRjNzlhNmMwYTgxMSEwHwYDVQQDDBg2
MGNkMTgxZWFjMWVkZGM3OWE2YzBhODIwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAw
ggIKAoICAQC1BBtR+Hd1Px7PbN1+HAmvY0nJX0tVaI+RU9Ll8wK3NzEdBUM6htk2
Ix4l/LxPcnaD1LRrDlhdXv0i1d1AFQ7boHSzYRsyZeyV2lqU1rbgMDkBUd6wIOIA
Vlg9pVZxA5xccnwfaM0GPin9JNkv8oj8lX53w7YW3uf3f0bckj03soP+tvNusuSE
bRoGS224Q4TmCAuJ718pSPaETK1ngoiaJxz85wbcztYqmPbLkAJrgLfiYnPL+Gym
uvXF8Ry+e/o8xfPYH30JVf24rEcFzkKMszqhr4mBRZgeqlQD+qslK5YiSEYM5VbH
asltlDn9PTWhqM8u7zzcNbnF/6sgX+oBhzkFETWj1tNBoYEQ6Ny19rGYWf24vlNW
GaHdWyTp62ffgIqOpuzf82wtyqXZfcwJ7iv0tY+pGPDIgCmeCMf/29j64qr2Eef+
IkLhcCdIQSfDS8yKnT+QId1Q9uvSOJdiu9+CaK8CWKtY96OcckzHtUftiqGz4prR
Ug09XYWTtuM8qWdpA8lbF+RIla13aN9j/uQiBQBfyCemVf2qLiavY8dXAqSX1H0D
jc8+0cyeFrWLKnn5grP0mZh659lVTKnJ8tNNGhbPYjMaacYFVgzVVvsKvQuwid26
8YHWtTZnV8nt4ALw+MAlgyjmHzBzLkB9crjjZIyg+N73xiZV8vQsuQIDAQABo2Mw
YTAOBgNVHQ8BAf8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU22hU
1ai/TJ2a9qYmtKyhh4v5y0YwHwYDVR0jBBgwFoAU22hU1ai/TJ2a9qYmtKyhh4v5
y0YwDQYJKoZIhvcNAQELBQADggIBAFeOqTsNKWLtZv65X2b8sWDHls1Pueudjkc8
umeH6PT7gap+uTNDJwhnCkLQAqR+g/ezbvnGxU24B+jnZCh4R0REWEn5psopPKKJ
RgdEkIxO6kH43LAMrrhWuS8sCVxmQ9CvaW70stJK4eSecGLK6LhRcH/WHOInxwyu
jXbAcyJTLI7+2gGs6Nl187qGFDAy4hl/4CZ9XzM9W8hDJxTvOGppiU1XU62RUfLT
4O0ITGhkkb2v6ptQ8drVAl+0EDccaYlV857oGedfgxad1y2i0sASp+VUqCyXXIRu
WpL5JeQB2YgsyxroHRms+WAtO6hVa13ymrdulbXD+ShX2wDnHj8VhOLdaTl71EeN
25IJHn8+DLc1N95qWawGvRMGcvKd35lsmb7sa5kkhdE42Ty4RJ5/xJwEaIXhMIeL
URh6aSi+Bj0nG4mylfKctroxEg0rkqt3wI4fQAZLr6IDs2tk0zV5YpGD6bd20e9g
dxusEWVPZIr8juIGnz3OQybN6U9P6T9ycsrAxtnhsubaHTjbnRJoGEADBOggGJo6
sMB3K+0j2ePJlEWVxoh+wTjz5IQLPczqL4FuR0PFK+QYgng6BppvnDPbDkauHzij
OhcWXANe5/PK4vgisAGgXtGFNGWMRB38XgvID+o2xJbqkK6NpbDWKqWKj8gWp45k
T98VFkt+
-----END CERTIFICATE-----
</ca>
<tls-auth>
#
# 2048 bit OpenVPN static key
#
-----BEGIN OpenVPN Static key V1-----
eea904240a7f67511f6d0f68449d094a
c630355ff0dc826343009f28b32f3fde
5b894d0fc4f924a6de016d76f35f8b2f
5694e31a77f65ea37ad8fc6e6dbf6aac
f2ef354ce6e87dac90c497885d31ea65
e623a3aa412e274d30427660e0427fb8
56b5781feac08a5bc7948da0cf1d6de8
3ba572650bcbbc62471497cdc982a451
323987518b7e246b053c5ceda1ffb3f1
357e3c37f333692a969c8c20edaebb88
84c2bb519d3ee63db79f948ef5375401
fb5483a52fe00d4fe464fc77ebd3dfa3
5e85c50e1de71f5aa7bb909f1763c992
49452e6c6f68272ddfaf2e5e6cd44ecc
19f56f33fecd2dd588521e7cf7a07bd4
93598e8541077949245d0f0569fd93ee
-----END OpenVPN Static key V1-----
</tls-auth>
<cert>
-----BEGIN CERTIFICATE-----
MIIFgTCCA2mgAwIBAgIJAOU7bw7ZvUE5MA0GCSqGSIb3DQEBCwUAMEYxITAfBgNV
BAoMGDYwY2QxODFlYWMxZWRkYzc5YTZjMGE4MTEhMB8GA1UEAwwYNjBjZDE4MWVh
YzFlZGRjNzlhNmMwYTgyMB4XDTIxMDYxODIyMDMxM1oXDTQxMDYxMzIyMDMxM1ow
RjEhMB8GA1UECgwYNjBjZDE4MWVhYzFlZGRjNzlhNmMwYTgxMSEwHwYDVQQDDBg2
MGNkMTgxZmFjMWVkZGM3OWE2YzBhODcwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAw
ggIKAoICAQDIyrXq+dS1j4OBEnYXMMXxjCqoAY0/HzkgsrhbGcJJ8YE1JpJACHqW
cYTeKbofHJ4MXplBh3Gxf8Tb8w/rTev0WqSJRLfnEJS89etvVwKFZRjuTGSaEZDx
fW0mx9FdrWOp6PkCqXXnxPVYeAdIagK/LpRXLIf/t3NSAUeNDnDPprCtBu0oU53f
X48PH5UIxICPoZ1NyWJQOHemFo5NTQqEnRMvYus8UgmcAgyGgVIh5/SjLD0NS6Hn
IQYokMyItMtUUVS3ZJkLwMrhYs+5lY6ZakOBPQfKPLcjEQnarrLX/wcxgF/EM5CW
DBiQs5dbK395hwAPit9Uuum/Z39n38pFIQwCEQcZczm01BZDIWdHw7LocchL2jV8
iH15AjTTWoAVYdJLJbKNou86RiUBDepGiS3EXSW+83HiWPqwktfwL9usYEJdi35n
gYjIwirQylHdQJeWJ7vB9Cj712NuKX5f3fMeRJ6xvsUOpFoHuo7r3zSmUfUNOGU3
R+LwTxMOFzSDBgPRK070lmQGNVaVZ2f7yFxw9o6MpvXovHWEDxJUN+8ZdZ39zx8c
OmpwqThEy9jvgTuFk7CoNNOMrkzjuGzQbJEfyAKmRHtvp0eUrHVUwCcOkoqP8On8
LJcByx/23lD9Sh5rDivo8suN1le1Tfh3ou5LLKL/RHlf9GCLSGDQAQIDAQABo3Iw
cDAOBgNVHQ8BAf8EBAMCBaAwCQYDVR0TBAIwADATBgNVHSUEDDAKBggrBgEFBQcD
AjAdBgNVHQ4EFgQUQWKrtzGSUN3bK35+kVrG41+o/IwwHwYDVR0jBBgwFoAU22hU
1ai/TJ2a9qYmtKyhh4v5y0YwDQYJKoZIhvcNAQELBQADggIBAD0SErY1El/Yxmf4
tNAbe1CgotziC6YxvFH53/h8I5AIrtxgv50xCHiFWdd5ls3dgzX9L2CNJZaY6bnc
aw6jlLJZD5SQPpKgjruQa/83oEQWLbm7O5Kd6GYADrFVorSaoyt6KrUTjA6Jx3Ez
5DkJoKpj5y0Jw3IloLYLwfTH7MrZZJbfGr9TdthA0B7HDd/SKpeeLb/rGzAxDhQw
IsFO+5cRHL6X6ZiUelDd8NtTCnqm7AECaP4sjXQI99H43Eq2Feqn//6olqKQtams
vBHwv8APSc4WwwwX5jdxOw5Ib4QUBmNq6csykiHw29Vrgn1vskdEZZ9cT4UDX6MW
AIsd7qAgv3oQZXg169gLhZumePeZnoXo6eArmVKyRINSLKPdgEfg8/YI20ElOHg5
36gQx6n3NIytuxuGn68l1VkiWsGfLGDkYnyGqjR8w1PiJYzCgNJc4/RmuO8+uS1B
w0pcFWVAA6YphGrxxuvwVyWLvY7DpdrRcvowmpoWQI3ccAlW+3DI6gycsBCm3miX
OhyHATpbW39DdCnzXouu2I4GIdowqJGxs03SOvPT3CI0+lY23AVKgPLX+XoO5vB6
hTWt+U5ijc576uox26pLqWU9ErsKpdD1x5Emb72cGeSgQGbTqiFbJiPZezrTGlcA
50GmNrsIYADxLUYS/2TS0LShUcoJ
-----END CERTIFICATE-----
</cert>
<key>
-----BEGIN PRIVATE KEY-----
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
dGmk74Ir1sD+LGStMJLZU4OkjWusLaGG
-----END PRIVATE KEY-----
</key>
