.class public final Lo/DI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DI$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/DI$TaskDescription;


# instance fields
.field private final b:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/DG;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/FF;

.field private final e:Lo/MenuInflater;

.field private final g:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final i:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DI$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DI$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/DI;->a:Lo/DI$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
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
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")V"
        }
    .end annotation

    const-string v0, "primaryDetailsParentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedDetailsPageEventObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DI;->e:Lo/MenuInflater;

    iput-object p2, p0, Lo/DI;->b:Lio/reactivex/Observable;

    iput-object p3, p0, Lo/DI;->i:Lio/reactivex/Observable;

    iput-object p4, p0, Lo/DI;->g:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 24
    invoke-direct {p0}, Lo/DI;->c()Lo/FF;

    move-result-object p1

    iput-object p1, p0, Lo/DI;->d:Lo/FF;

    .line 27
    iget-object p1, p0, Lo/DI;->d:Lo/FF;

    invoke-virtual {p1}, Lo/FF;->a()V

    .line 48
    iget-object p1, p0, Lo/DI;->d:Lo/FF;

    invoke-virtual {p1}, Lo/FF;->c()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/subjects/PublishSubject;->merge(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lo/DI;->c:Lio/reactivex/Observable;

    return-void
.end method

.method private final c()Lo/FF;
    .locals 5

    .line 31
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lo/FE;

    .line 33
    iget-object v1, p0, Lo/DI;->e:Lo/MenuInflater;

    .line 34
    iget-object v2, p0, Lo/DI;->b:Lio/reactivex/Observable;

    .line 35
    iget-object v3, p0, Lo/DI;->i:Lio/reactivex/Observable;

    .line 36
    iget-object v4, p0, Lo/DI;->g:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 32
    invoke-direct {v0, v1, v2, v3, v4}, Lo/FE;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    check-cast v0, Lo/FF;

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lo/FG;

    .line 40
    iget-object v1, p0, Lo/DI;->e:Lo/MenuInflater;

    .line 41
    iget-object v2, p0, Lo/DI;->b:Lio/reactivex/Observable;

    .line 42
    iget-object v3, p0, Lo/DI;->i:Lio/reactivex/Observable;

    .line 43
    iget-object v4, p0, Lo/DI;->g:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 39
    invoke-direct {v0, v1, v2, v3, v4}, Lo/FG;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    check-cast v0, Lo/FF;

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/DI;->d:Lo/FF;

    invoke-virtual {v0}, Lo/FF;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/view/ViewGroup;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/DI;->d:Lo/FF;

    invoke-virtual {v0}, Lo/FF;->d()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/DG;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/DI;->c:Lio/reactivex/Observable;

    const-string v1, "primaryDetailsUIEventsObservable"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
