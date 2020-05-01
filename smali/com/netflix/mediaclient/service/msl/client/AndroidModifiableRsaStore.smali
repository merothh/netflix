.class public Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;
.super Ljava/lang/Object;
.source "AndroidModifiableRsaStore.java"

# interfaces
.implements Lcom/netflix/msl/client/ModifiableRsaStore;


# static fields
.field private static final KEY_APPBOOT:Ljava/lang/String; = "APPBOOT"

.field private static final PREFERENCE_MSL_RSA_STORE:Ljava/lang/String; = "nf_msl_rsa_store_json"

.field private static final PROPERTY_IDENTITY:Ljava/lang/String; = "identity"

.field private static final PROPERTY_KEY_ENCODED:Ljava/lang/String; = "encodedKey"

.field private static final PROPERTY_PUBLIC_KEYS:Ljava/lang/String; = "publicKeys"

.field private static final TAG:Ljava/lang/String; = "nf_msl_rsastore"


# instance fields
.field private context:Landroid/content/Context;

.field private final factory:Ljava/security/KeyFactory;

.field private final keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicKeysMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->keys:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->publicKeysMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->privateKeys:Ljava/util/Map;

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->context:Landroid/content/Context;

    .line 77
    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->factory:Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->loadFromPersistance()V

    .line 84
    const-string/jumbo v0, "APPBOOT"

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getMslAppBootKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->addPublicKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to get RSA key factory"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addPublicKey(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 108
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->addPublicKey(Ljava/lang/String;[B)V

    .line 111
    if-eqz p3, :cond_0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->savePublicKeyToPersistance(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method private addPublicKey(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->factory:Ljava/security/KeyFactory;

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Public key is not an instance of RSAPublicKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Public key can not be parsed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->keys:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private loadFromPersistance()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->context:Landroid/content/Context;

    const-string/jumbo v2, "nf_msl_rsa_store_json"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const-string/jumbo v0, "nf_msl_rsastore"

    const-string/jumbo v2, "RSA store not found..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    const-string/jumbo v2, "nf_msl_rsastore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RSA store found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "publicKeys"

    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v2

    .line 246
    if-nez v2, :cond_3

    .line 247
    const-string/jumbo v0, "nf_msl_rsastore"

    const-string/jumbo v2, "Public keys array NOT found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string/jumbo v2, "nf_msl_rsastore"

    const-string/jumbo v3, "Failed to create public key JSON object: "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 251
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 252
    invoke-virtual {v2, v0}, Lcom/netflix/android/org/json/JSONArray;->getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v3

    .line 253
    const-string/jumbo v4, "identity"

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    const-string/jumbo v5, "encodedKey"

    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->addPublicKey(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private declared-synchronized save()V
    .locals 7

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_msl_rsastore"

    const-string/jumbo v1, "save:: started."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 162
    new-instance v3, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->publicKeysMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->publicKeysMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    new-instance v5, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v5}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 169
    const-string/jumbo v6, "identity"

    invoke-virtual {v5, v6, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 170
    const-string/jumbo v0, "encodedKey"

    invoke-virtual {v5, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 171
    invoke-virtual {v3, v5}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_0
    :try_start_1
    const-string/jumbo v0, "publicKeys"

    invoke-virtual {v2, v0, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 175
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string/jumbo v1, "nf_msl_rsastore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->context:Landroid/content/Context;

    const-string/jumbo v2, "nf_msl_rsa_store_json"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    const-string/jumbo v0, "nf_msl_rsastore"

    const-string/jumbo v1, "save:: done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void
.end method

.method private savePublicKeyToPersistance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 207
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    const-string/jumbo v0, "nf_msl_rsastore"

    const-string/jumbo v1, "Empty identity and/or raw public key. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string/jumbo v0, "APPBOOT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    const-string/jumbo v0, "nf_msl_rsastore"

    const-string/jumbo v1, "Do not add APPBOOT to persistence..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->publicKeysMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->save()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string/jumbo v1, "nf_msl_rsastore"

    const-string/jumbo v2, "Failed to save RSA store to persistenace: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private savePublicKeyToPersistance(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    const-string/jumbo v0, "nf_msl_rsastore"

    const-string/jumbo v1, "Empty raw public key. It should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->savePublicKeyToPersistance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addPrivateKey(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 2

    .prologue
    .line 147
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Private key is not an instance of RSAPrivateKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public declared-synchronized addPublicKey(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    const/16 v0, 0x800

    :try_start_0
    invoke-static {p2, v0}, Lcom/netflix/msl/util/IoUtil;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->savePublicKeyToPersistance(Ljava/lang/String;[B)V

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->addPublicKey(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addPublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->addPublicKey(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public getIdentities()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->keys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->privateKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidModifiableRsaStore;->keys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    return-object v0
.end method
