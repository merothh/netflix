.class public abstract Lo/hN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected b:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

.field protected c:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

.field protected final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 47
    iput-object p1, p0, Lo/hN;->e:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lo/hN;->c:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    .line 49
    invoke-virtual {p0}, Lo/hN;->a()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    iput-object p1, p0, Lo/hN;->b:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transport can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract a()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "get"

    return-object v0
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/hN;->b:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    return-object v0
.end method

.method protected abstract d(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Lo/adY;

    invoke-direct {v0}, Lo/adY;-><init>()V

    return-object v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract h()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
