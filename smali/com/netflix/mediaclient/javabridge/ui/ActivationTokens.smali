.class public final Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;
.super Ljava/lang/Object;
.source "ActivationTokens.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_reg"


# instance fields
.field public autoLoginSource:Z

.field private json:Lorg/json/JSONObject;

.field public netflixId:Ljava/lang/String;

.field public secureNetflixId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->parseTokens(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->createJson()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->parseTokens(Lorg/json/JSONObject;)V

    return-void
.end method

.method private createJson()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    const-string/jumbo v1, "NetflixId"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    const-string/jumbo v1, "SecureNetflixId"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "Tokens cannot be null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTokens(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Tokens are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "undefined"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Tokens undefined"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->parseTokens(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private parseTokens(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Tokens are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "NetflixId"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    const-string/jumbo v0, "SecureNetflixId"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_reg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetflixID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", SecureNetlixId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "Tokens cannot be null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
