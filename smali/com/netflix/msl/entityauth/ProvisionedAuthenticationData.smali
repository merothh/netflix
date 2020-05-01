.class public Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.source "ProvisionedAuthenticationData.java"


# instance fields
.field private identity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PROVISIONED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PROVISIONED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 88
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAuthData()Lcom/netflix/android/org/json/JSONObject;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    return v0
.end method

.method setIdentity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    .line 61
    return-void
.end method
