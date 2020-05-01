.class public Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.source "UnauthenticatedSuffixedAuthenticationData.java"


# static fields
.field private static final CONCAT_CHAR:Ljava/lang/String; = "."

.field private static final KEY_ROOT:Ljava/lang/String; = "root"

.field private static final KEY_SUFFIX:Ljava/lang/String; = "suffix"


# instance fields
.field private final root:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 5

    .prologue
    .line 82
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->NONE_SUFFIXED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 84
    :try_start_0
    const-string/jumbo v0, "root"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "suffix"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unauthenticated suffixed authdata "

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
    .line 68
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->NONE_SUFFIXED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 69
    iput-object p1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    if-ne p1, p0, :cond_0

    .line 139
    :goto_0
    return v1

    .line 137
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 138
    check-cast v0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;

    .line 139
    invoke-super {p0, p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    iget-object v4, v0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;

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
    .line 122
    :try_start_0
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 123
    const-string/jumbo v1, "root"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 124
    const-string/jumbo v1, "suffix"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "unauthenticated suffixed authdata"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->root:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/entityauth/UnauthenticatedSuffixedAuthenticationData;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
