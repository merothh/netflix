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

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)I
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method public remove(Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;)Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    invoke-super {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-object v0
.end method
