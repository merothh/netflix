.class public abstract Lo/hv;
.super Lo/hr;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/hr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/hr;->D()Lcom/android/volley/Request$Priority;

    move-result-object v0

    return-object v0
.end method

.method protected P()V
    .locals 4

    .line 26
    invoke-virtual {p0}, Lo/hv;->aa()Lo/mB;

    move-result-object v0

    invoke-virtual {v0}, Lo/mB;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "nf_dynecom"

    const-string v3, "Dynecom configuration uRL: %s"

    .line 27
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 28
    invoke-virtual {p0, v0}, Lo/hv;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic Q()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/hr;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-super {p0}, Lo/hr;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lo/hr;->i()Z

    move-result v0

    return v0
.end method
