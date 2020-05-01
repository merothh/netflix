.class public abstract Lo/UM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/MenuInflater;

.field private final d:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/UP;",
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
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UM;->c:Lo/MenuInflater;

    iput-object p2, p0, Lo/UM;->e:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/UM;->d:Lio/reactivex/Observable;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/UM;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/UM;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lo/UM;->b:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public final c()Lo/MenuInflater;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/UM;->c:Lo/MenuInflater;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lo/UU;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lo/UM;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final e()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/UM;->e:Lio/reactivex/Observable;

    return-object v0
.end method

.method protected final e(Lio/reactivex/subjects/Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lo/UM;->b:Lio/reactivex/subjects/Subject;

    return-void
.end method
