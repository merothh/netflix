.class public final Lo/HY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HY$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/HY$Application;


# instance fields
.field private final b:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/aka;

.field private final d:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Integer;

.field private final o:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

.field private final s:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/HY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HY$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/HY;->a:Lo/HY$Application;

    return-void
.end method

.method public constructor <init>(ILcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 2

    const-string v0, "playContext"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasFeedItem"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/HY;->t:I

    iput-object p2, p0, Lo/HY;->q:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p3, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 64
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/netflix/mediaclient/ui/extras/player/PlayableViewModel$clPlayableTrackingInfo$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayableViewModel$clPlayableTrackingInfo$2;-><init>(Lo/HY;)V

    check-cast p2, Lo/alB;

    invoke-static {p1, p2}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/HY;->c:Lo/aka;

    const/4 p1, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p3

    const-string v0, "BehaviorSubject.createDefault(false)"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lo/HY;->d:Lio/reactivex/subjects/BehaviorSubject;

    .line 85
    iget-object p3, p0, Lo/HY;->d:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p3}, Lio/reactivex/subjects/BehaviorSubject;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p3

    const-string v1, "focusPub.distinctUntilChanged()"

    invoke-static {p3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lo/HY;->e:Lio/reactivex/Observable;

    .line 90
    invoke-static {p2}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p3

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lo/HY;->b:Lio/reactivex/subjects/BehaviorSubject;

    .line 91
    iget-object p3, p0, Lo/HY;->b:Lio/reactivex/subjects/BehaviorSubject;

    check-cast p3, Lio/reactivex/Observable;

    iput-object p3, p0, Lo/HY;->f:Lio/reactivex/Observable;

    .line 96
    invoke-static {p2}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/HY;->j:Lio/reactivex/subjects/BehaviorSubject;

    .line 97
    iget-object p2, p0, Lo/HY;->j:Lio/reactivex/subjects/BehaviorSubject;

    check-cast p2, Lio/reactivex/Observable;

    iput-object p2, p0, Lo/HY;->g:Lio/reactivex/Observable;

    const/4 p2, 0x1

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p2

    const-string p3, "BehaviorSubject.createDefault(true)"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/HY;->i:Lio/reactivex/subjects/BehaviorSubject;

    .line 104
    iget-object p2, p0, Lo/HY;->i:Lio/reactivex/subjects/BehaviorSubject;

    check-cast p2, Lio/reactivex/Observable;

    iput-object p2, p0, Lo/HY;->h:Lio/reactivex/Observable;

    const/4 p2, -0x1

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p2

    const-string p3, "BehaviorSubject.createDefault(NONE)"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/HY;->m:Lio/reactivex/subjects/BehaviorSubject;

    .line 110
    iget-object p2, p0, Lo/HY;->m:Lio/reactivex/subjects/BehaviorSubject;

    check-cast p2, Lio/reactivex/Observable;

    iput-object p2, p0, Lo/HY;->o:Lio/reactivex/Observable;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "BehaviorSubject.createDefault(0)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/HY;->l:Lio/reactivex/subjects/BehaviorSubject;

    .line 117
    iget-object p1, p0, Lo/HY;->l:Lio/reactivex/subjects/BehaviorSubject;

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lo/HY;->k:Lio/reactivex/Observable;

    .line 119
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lo/HY;->p:Ljava/util/Set;

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lo/HY;->s:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public A()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->A()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->B()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->C()Z

    move-result v0

    return v0
.end method

.method public final D()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    iget-object v0, p0, Lo/HY;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public final E()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lo/HY;->h:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final F()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lo/HY;->k:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final G()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/HY;->f:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final H()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/HY;->o:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final I()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/HY;->e:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final J()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lo/HY;->s:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public final L()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/HY;->q:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final M()I
    .locals 1

    .line 20
    iget v0, p0, Lo/HY;->t:I

    return v0
.end method

.method public final N()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lo/HY;->d:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lo/HY;->d:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 3

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 161
    :goto_1
    iget-object v1, p0, Lo/HY;->n:Ljava/lang/Integer;

    const/16 v2, 0xa

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    return-void

    .line 165
    :cond_3
    :goto_2
    iget-object v0, p0, Lo/HY;->m:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/HY;->n:Ljava/lang/Integer;

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lo/HY;->i:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->d()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->d(I)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/HY;->b:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lo/HY;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lo/HY;->j:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lo/AK;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v0

    return-object v0
.end method

.method public h()Lo/agg;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AG;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->j()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->l()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->n()Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->p()Z

    move-result v0

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->r()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->t()Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->u()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->v()Z

    move-result v0

    return v0
.end method

.method public w()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->w()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->x()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->y()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lo/HY;->r:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->z()Z

    move-result v0

    return v0
.end method
