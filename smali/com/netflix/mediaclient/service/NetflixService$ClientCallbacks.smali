.class public Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;
.super Landroid/util/SparseArray;
.source "NetflixService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1453
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)I
    .locals 1

    .prologue
    .line 1458
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1461
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1462
    invoke-super {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1463
    return v0
.end method

.method public remove(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;
    .locals 2

    .prologue
    .line 1467
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1469
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1470
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1471
    invoke-super {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1472
    return-object v0
.end method
