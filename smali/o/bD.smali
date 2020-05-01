.class public final Lo/bD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bw;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lio/reactivex/Observable;)Lo/bs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)",
            "Lo/bs;"
        }
    .end annotation

    const-string v0, "destroyObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lo/bC;

    invoke-direct {v0, p1}, Lo/bC;-><init>(Lio/reactivex/Observable;)V

    check-cast v0, Lo/bs;

    return-object v0
.end method
