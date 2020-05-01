.class public abstract Lcom/netflix/mediaclient/service/webclient/BaseWebClient;
.super Ljava/lang/Object;
.source "BaseWebClient.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "BaseWebClient"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/BaseWebClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeFromError(Ljava/lang/Throwable;)Lcom/netflix/mediaclient/StatusCode;
    .locals 5

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;

    .line 26
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/BaseWebClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Received Error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 34
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/BaseWebClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ".next call failed with error ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v2, "map error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 39
    :cond_2
    const-string/jumbo v2, "not authorized"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 42
    :cond_3
    const-string/jumbo v2, "path error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0
.end method
