.class public abstract Lo/FF;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lo/DG;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/MenuInflater;

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MenuInflater;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedDetailsPageEventObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FF;->d:Lo/MenuInflater;

    iput-object p2, p0, Lo/FF;->c:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/FF;->e:Lio/reactivex/Observable;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/FF;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lo/DG;",
            ">;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/FF;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lo/DG;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lo/FF;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract d()Landroid/view/ViewGroup;
.end method

.method public abstract e()Landroid/view/View;
.end method

.method public final f()Lo/MenuInflater;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/FF;->d:Lo/MenuInflater;

    return-object v0
.end method
