.class public Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;
.super Lcom/netflix/mediaclient/webapi/ResponseWebApiPostCommand;
.source "CustomerEventCommand.java"


# static fields
.field protected static final PARAMETER_DATA:Ljava/lang/String; = "data"

.field protected static final PATH_EVENTS:Ljava/lang/String; = "/users/customerevents"

.field protected static final TAG:Ljava/lang/String; = "nf_rest"


# instance fields
.field protected mPayload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->getInstanceWithCredentials()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/webapi/ResponseWebApiPostCommand;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;Lcom/netflix/mediaclient/webapi/CommonRequestParameters;)V

    .line 38
    const-string/jumbo v0, "Payload"

    invoke-virtual {p0, p3, v0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;->mPayload:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getCommandPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "/users/customerevents"

    return-object v0
.end method

.method public getHeaders()[Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    .line 68
    const/4 v1, 0x0

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 69
    return-object v0
.end method

.method protected getParameters()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;->mPayload:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string/jumbo v2, "nf_rest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    const-string/jumbo v2, "data"

    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;->addIfNotNull(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v0
.end method

.method protected getUrl()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/customerevents/legacy/CustomerEventCommand;->getBaseCustomerEventBeaconUrl()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    return-object v0
.end method
