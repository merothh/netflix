.class public Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;
.super Ljava/lang/Object;
.source "Logblob.java"


# instance fields
.field public deviceModel:Ljava/lang/String;

.field public esn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;->esn:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;->deviceModel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;->isValid()Z

    return-void
.end method

.method private isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;->esn:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ESN is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;->deviceModel:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "deviceModel is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
