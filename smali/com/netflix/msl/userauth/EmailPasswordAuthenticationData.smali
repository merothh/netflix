.class public Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;
.super Lcom/netflix/msl/userauth/UserAuthenticationData;
.source "EmailPasswordAuthenticationData.java"


# static fields
.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"


# instance fields
.field private final email:Ljava/lang/String;

.field private final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 67
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->EMAIL_PASSWORD:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 69
    :try_start_0
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->email:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "password"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->password:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "email/password authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->EMAIL_PASSWORD:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 55
    iput-object p1, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->email:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->password:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p1, p0, :cond_0

    .line 113
    :goto_0
    return v1

    .line 111
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;

    .line 113
    invoke-super {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->password:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->password:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getAuthData()Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    .prologue
    .line 96
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 97
    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 98
    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "email/password authdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->password:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/userauth/EmailPasswordAuthenticationData;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
