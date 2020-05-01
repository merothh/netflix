.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    }
.end annotation


# instance fields
.field private cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

.field private cellInt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cell"
    .end annotation
.end field

.field private isExplicit:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isExplicit"
    .end annotation
.end field

.field private isFallback:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFallback"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellInt:I

    return-void
.end method


# virtual methods
.method public changeTo(IZ)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;-><init>()V

    .line 20
    iput-boolean p2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit:Z

    .line 21
    iput p1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellInt:I

    .line 22
    iget-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isFallback:Z

    iput-boolean p1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isFallback:Z

    return-object v0
.end method

.method public getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-nez v0, :cond_0

    .line 69
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellInt:I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->fromInt(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-object v0
.end method

.method public isExplicit()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit:Z

    return v0
.end method

.method public isFallback()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isFallback:Z

    return v0
.end method
