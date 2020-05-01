.class public final Lo/Zq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/bs;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destroyObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lo/bw;->a:Lo/bw$ActionBar;

    invoke-virtual {v0, p1}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object p1

    iput-object p1, p0, Lo/Zq;->d:Lo/bs;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;ZLo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lo/alA<",
            "-",
            "Lo/bz<",
            "+",
            "Lo/AD;",
            ">;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onResult"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lo/Zq;->d:Lo/bs;

    new-instance v1, Lo/KeyDerivationParams;

    invoke-direct {v1, p1, p2}, Lo/KeyDerivationParams;-><init>(Ljava/lang/String;Z)V

    check-cast v1, Lo/DateTransformation;

    invoke-interface {v0, v1, p3}, Lo/bs;->d(Lo/DateTransformation;Lo/alA;)V

    return-void
.end method
