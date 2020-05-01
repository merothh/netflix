.class public Lo/GK;
.super Lo/Enum;
.source ""

# interfaces
.implements Lo/aor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GK$StateListAnimator;,
        Lo/GK$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/GK$ActionBar;

.field private static final w:Lo/aka;


# instance fields
.field private b:Ljava/lang/Integer;

.field private final c:I

.field private d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

.field private final e:I

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/Integer;

.field private j:Lo/GK$StateListAnimator;

.field private final k:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Lo/anZ;

.field private final n:Lo/aka;

.field private final o:Lo/GI;

.field private p:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

.field private final q:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lo/Bn;

.field private final t:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private u:Lo/Ab;

.field private x:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GK$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GK$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/GK;->a:Lo/GK$ActionBar;

    .line 43
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$Companion$EMPTY_TRACKABLE$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$Companion$EMPTY_TRACKABLE$2;

    check-cast v1, Lo/alB;

    invoke-static {v0, v1}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v0

    sput-object v0, Lo/GK;->w:Lo/aka;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lo/Enum;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lo/GK;->c:I

    const/16 v1, 0x32

    .line 68
    iput v1, p0, Lo/GK;->e:I

    .line 82
    sget-object v1, Lo/GK$StateListAnimator$Application;->d:Lo/GK$StateListAnimator$Application;

    check-cast v1, Lo/GK$StateListAnimator;

    iput-object v1, p0, Lo/GK;->j:Lo/GK$StateListAnimator;

    const-string v1, ""

    .line 90
    iput-object v1, p0, Lo/GK;->g:Ljava/lang/String;

    .line 97
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    sget-object v2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$deviceOrientationDetector$2;

    check-cast v2, Lo/alB;

    invoke-static {v1, v2}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v1

    iput-object v1, p0, Lo/GK;->n:Lo/aka;

    const/4 v1, 0x0

    .line 104
    invoke-static {v1, v0, v1}, Lo/aoS;->d(Lo/aoU;ILjava/lang/Object;)Lo/anZ;

    move-result-object v0

    iput-object v0, p0, Lo/GK;->m:Lo/anZ;

    .line 106
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Unit>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/GK;->k:Lio/reactivex/subjects/PublishSubject;

    .line 107
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    const-string v2, "BehaviorSubject.create<List<ExtrasFeedItem>>()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    .line 108
    new-instance v0, Lo/GI;

    invoke-direct {v0}, Lo/GI;-><init>()V

    iput-object v0, p0, Lo/GK;->o:Lo/GI;

    .line 118
    iget-object v0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    check-cast v0, Lio/reactivex/Observable;

    iput-object v0, p0, Lo/GK;->t:Lio/reactivex/Observable;

    .line 264
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/GK;->r:Lio/reactivex/subjects/PublishSubject;

    .line 265
    iget-object v0, p0, Lo/GK;->r:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    iput-object v0, p0, Lo/GK;->q:Lio/reactivex/Observable;

    return-void
.end method

.method public static final synthetic B()Lo/aka;
    .locals 1

    .line 37
    sget-object v0, Lo/GK;->w:Lo/aka;

    return-object v0
.end method

.method public static final synthetic a(Lo/GK;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/GK;->k:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic b(Lo/GK;)Lcom/netflix/mediaclient/servicemgr/PrepareManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/GK;->x:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    return-object p0
.end method

.method public static final synthetic c(Lo/GK;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method private final c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;)Lo/Bn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;)",
            "Lo/Bn;"
        }
    .end annotation

    .line 217
    check-cast p2, Ljava/lang/Iterable;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 331
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 218
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v3

    .line 219
    instance-of v4, v3, Lo/AK;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "playable.playableId"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/anv;->e(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 333
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 334
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 335
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 222
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lo/amh;->c()V

    :cond_3
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "it.playable!!.playableId"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 336
    :cond_4
    check-cast p2, Ljava/util/List;

    .line 224
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 225
    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getListId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    new-instance v0, Lo/Bn;

    invoke-direct {v0, p1, p2}, Lo/Bn;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return-object v0
.end method

.method public static final synthetic c(Lo/GK;Lcom/netflix/mediaclient/servicemgr/PrepareManager;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/GK;->x:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    return-void
.end method

.method static synthetic d(Lo/GK;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lo/GK;->d(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchFeed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final d(Z)V
    .locals 8

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchFeed$1;-><init>(Lo/GK;ZLo/ale;)V

    move-object v5, v0

    check-cast v5, Lo/alN;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/anM;->b(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;ILjava/lang/Object;)Lo/aoU;

    return-void
.end method

.method public static final synthetic e(Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;)Lo/Bn;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lo/GK;->c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;)Lo/Bn;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 291
    invoke-virtual {p0}, Lo/GK;->k()Lo/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView;->enable()V

    return-void
.end method

.method public final C()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lo/GK;->y:Z

    return v0
.end method

.method public final D()V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lo/GK;->k()Lo/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView;->disable()V

    return-void
.end method

.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/GK;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lo/GK;->f:Ljava/lang/Integer;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;
    .locals 4

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v3

    invoke-interface {v3}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    :cond_2
    return-object v1
.end method

.method public b()Lo/alj;
    .locals 2

    .line 116
    invoke-static {}, Lo/aoz;->e()Lo/aon;

    move-result-object v0

    iget-object v1, p0, Lo/GK;->m:Lo/anZ;

    check-cast v1, Lo/alj;

    invoke-virtual {v0, v1}, Lo/aon;->plus(Lo/alj;)Lo/alj;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 66
    iget v0, p0, Lo/GK;->c:I

    return v0
.end method

.method public final c(I)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;
    .locals 1

    .line 258
    iget-object v0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/GK;->d:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    return-void
.end method

.method public final c(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/GK;->p:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    return-void
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lo/GK;->i:Ljava/lang/Integer;

    return-void
.end method

.method public final c(Lo/Ab;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lo/GK;->u:Lo/Ab;

    return-void
.end method

.method public final c(Lo/GK$StateListAnimator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lo/GK;->j:Lo/GK$StateListAnimator;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lo/GK;->h:Z

    return-void
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/GK;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 2

    const-string v0, "extrasFeedFragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lo/GK;->u:Lo/Ab;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance v1, Lo/GK$Application;

    invoke-direct {v1, v0}, Lo/GK$Application;-><init>(Lo/Ab;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lo/GK;->g:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    .line 68
    iget v0, p0, Lo/GK;->e:I

    return v0
.end method

.method public final e(Ljava/lang/String;)Lo/aoU;
    .locals 8

    const-string v0, "postId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$fetchItem$1;-><init>(Lo/GK;Ljava/lang/String;Lo/ale;)V

    move-object v5, v0

    check-cast v5, Lo/alN;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/anM;->b(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;ILjava/lang/Object;)Lo/aoU;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 1

    const-string v0, "extrasFeedFragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance v0, Lo/GK$TaskDescription;

    invoke-direct {v0, p0}, Lo/GK$TaskDescription;-><init>(Lo/GK;)V

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lo/GK;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lo/GK;->y:Z

    return-void
.end method

.method public final f()Lo/GK$StateListAnimator;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/GK;->j:Lo/GK$StateListAnimator;

    return-object v0
.end method

.method public final g()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/GK;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lo/GK;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lo/GK;->j:Lo/GK$StateListAnimator;

    sget-object v1, Lo/GK$StateListAnimator$TaskDescription;->d:Lo/GK$StateListAnimator$TaskDescription;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/GK;->x()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lo/GK;->h:Z

    return v0
.end method

.method public final k()Lo/VideoView;
    .locals 1

    iget-object v0, p0, Lo/GK;->n:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/VideoView;

    return-object v0
.end method

.method public final l()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/GK;->p:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    return-object v0
.end method

.method public final m()Lo/GI;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/GK;->o:Lo/GI;

    return-object v0
.end method

.method public final n()Lo/Bn;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/GK;->s:Lo/Bn;

    return-object v0
.end method

.method public final o()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lo/GK;->k()Lo/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected onCleared()V
    .locals 3

    .line 318
    iget-object v0, p0, Lo/GK;->x:Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    if-eqz v0, :cond_0

    .line 319
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lo/GK;->k:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lo/GK;->k:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 323
    iget-object v0, p0, Lo/GK;->o:Lo/GI;

    invoke-virtual {v0}, Lo/GI;->d()V

    .line 324
    iget-object v0, p0, Lo/GK;->m:Lo/anZ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lo/aoU$StateListAnimator;->d(Lo/aoU;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->onComplete()V

    .line 326
    invoke-super {p0}, Lo/Enum;->onCleared()V

    return-void
.end method

.method public final p()V
    .locals 2

    .line 132
    sget-object v0, Lo/GK$StateListAnimator$Application;->d:Lo/GK$StateListAnimator$Application;

    check-cast v0, Lo/GK$StateListAnimator;

    iput-object v0, p0, Lo/GK;->j:Lo/GK$StateListAnimator;

    .line 133
    iget-object v0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lo/GK;->t:Lio/reactivex/Observable;

    return-object v0
.end method

.method public r()Z
    .locals 3

    .line 122
    iget-object v0, p0, Lo/GK;->p:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lo/GK;->x()I

    move-result v2

    invoke-interface {v0}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final s()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;
    .locals 2

    .line 129
    iget-object v0, p0, Lo/GK;->p:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.model.leafs.ExtrasFeedItemSummary"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-static {p0, v0, v1, v2}, Lo/GK;->d(Lo/GK;ZILjava/lang/Object;)V

    return-void
.end method

.method public final u()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lo/GK;->q:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final v()V
    .locals 1

    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, v0}, Lo/GK;->d(Z)V

    return-void
.end method

.method public final w()V
    .locals 3

    .line 208
    iget-object v0, p0, Lo/GK;->p:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    iget-object v1, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v1}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$rebuildPlaylist$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$rebuildPlaylist$1;-><init>(Lo/GK;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bn;

    iput-object v0, p0, Lo/GK;->s:Lo/Bn;

    return-void
.end method

.method public x()I
    .locals 1

    .line 262
    iget-object v0, p0, Lo/GK;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()Lo/Ab;
    .locals 1

    .line 270
    iget-object v0, p0, Lo/GK;->u:Lo/Ab;

    return-object v0
.end method

.method public final z()Lo/Bv;
    .locals 2

    .line 283
    iget-object v0, p0, Lo/GK;->p:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    if-eqz v0, :cond_0

    check-cast v0, Lo/Bv;

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lo/GK;

    .line 284
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "extrasFeedItemSummary is null, unable to get a trackId "

    .line 285
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 286
    sget-object v0, Lo/GK;->a:Lo/GK$ActionBar;

    invoke-static {v0}, Lo/GK$ActionBar;->b(Lo/GK$ActionBar;)Lo/Bv;

    move-result-object v0

    :goto_0
    return-object v0
.end method
