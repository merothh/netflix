.class public final Lo/Nl;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Nl$StateListAnimator;
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final d:Lo/Nl$StateListAnimator;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/MenuInflater;

.field private f:Z

.field private g:Lo/UE;

.field private final h:Lo/HZ;

.field private final i:Lo/aka;

.field private final j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls<",
            "Lo/Nh;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lio/reactivex/disposables/CompositeDisposable;

.field private l:Lo/Nh;

.field private m:Z

.field private n:J

.field private o:I

.field private p:Z

.field private q:J

.field private r:Lcom/netflix/cl/model/event/session/action/Play;

.field private s:Lcom/netflix/cl/model/event/session/action/StartPlay;

.field private final t:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lo/UpdateEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/Nl;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "image"

    const-string v4, "getImage()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/Nl;->a:[Lo/amT;

    new-instance v0, Lo/Nl$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Nl$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/UpdateEngine;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/Nl;->u:Lo/UpdateEngine;

    .line 66
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object p2

    const-string v0, "ReplaySubject.create<Unit>()"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/Nl;->c:Lio/reactivex/subjects/ReplaySubject;

    .line 69
    move-object p2, p1

    check-cast p2, Lo/MenuInflater;

    iput-object p2, p0, Lo/Nl;->e:Lo/MenuInflater;

    .line 70
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hO:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nl;->b:Lo/ams;

    .line 75
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$debugView$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$debugView$2;-><init>(Lo/Nl;Landroid/view/View;)V

    check-cast v0, Lo/alB;

    invoke-static {p2, v0}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lo/Nl;->i:Lo/aka;

    .line 94
    new-instance p2, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$controls$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$controls$1;-><init>(Lo/Nl;)V

    check-cast v0, Lo/alA;

    .line 98
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->aY:I

    .line 94
    invoke-direct {p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;-><init>(Landroid/view/View;Lo/alA;I)V

    iput-object p2, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    .line 101
    new-instance p2, Lo/HZ;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uy:I

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lo/HZ;-><init>(Landroid/view/View;IZ)V

    iput-object p2, p0, Lo/Nl;->h:Lo/HZ;

    .line 112
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/Nl;->k:Lio/reactivex/disposables/CompositeDisposable;

    const-wide/16 p1, -0x1

    .line 115
    iput-wide p1, p0, Lo/Nl;->n:J

    .line 118
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Unit>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Nl;->t:Lio/reactivex/subjects/PublishSubject;

    .line 128
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 130
    invoke-virtual {p0}, Lo/Nl;->d()V

    .line 132
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    new-instance p2, Lo/Nl$5;

    invoke-direct {p2, p0}, Lo/Nl$5;-><init>(Lo/Nl;)V

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    invoke-virtual {p1, p2}, Lo/HZ;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V

    .line 136
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    new-instance p2, Lo/Nl$2;

    invoke-direct {p2, p0}, Lo/Nl$2;-><init>(Lo/Nl;)V

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    invoke-virtual {p1, p2}, Lo/HZ;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    .line 277
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    new-instance p2, Lo/Nl$4;

    invoke-direct {p2, p0}, Lo/Nl$4;-><init>(Lo/Nl;)V

    check-cast p2, Lo/Ii$TaskDescription;

    const/4 v0, 0x3

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, p2, v0, v1, v2}, Lo/HZ;->a(Lo/Ii$TaskDescription;IJ)V

    .line 292
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    new-instance p2, Lo/Nl$1;

    invoke-direct {p2, p0}, Lo/Nl$1;-><init>(Lo/Nl;)V

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    invoke-virtual {p1, p2}, Lo/HZ;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V

    return-void
.end method

.method public static final synthetic a(Lo/Nl;)Lo/UpdateEngine;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->u:Lo/UpdateEngine;

    return-object p0
.end method

.method public static final synthetic a(Lo/Nl;Lcom/netflix/cl/model/event/session/action/StartPlay;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    return-void
.end method

.method private final a(Z)V
    .locals 11

    .line 858
    iget-object v0, p0, Lo/Nl;->l:Lo/Nh;

    if-eqz v0, :cond_4

    .line 860
    invoke-virtual {v0}, Lo/Nh;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 862
    iget-object v0, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Nl;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v10, 0x4

    if-nez p1, :cond_2

    .line 865
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lo/Nl;->e:Lo/MenuInflater;

    invoke-virtual {v1}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "trailersItemView.resources"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 866
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->requestLayout()V

    .line 867
    iget-object v3, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move v5, v0

    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->e(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;ZZZZILjava/lang/Object;)V

    .line 874
    invoke-virtual {p0}, Lo/Nl;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v10}, Lo/GridView;->setVisibility(I)V

    .line 875
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lo/MenuInflater;->setBackgroundColor(I)V

    .line 877
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    invoke-virtual {p1, v2}, Lo/MenuInflater;->setClipChildren(Z)V

    goto :goto_2

    .line 879
    :cond_2
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v3, -0x2

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 880
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->requestLayout()V

    .line 881
    iget-object v3, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move v5, v0

    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->e(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;ZZZZILjava/lang/Object;)V

    .line 888
    invoke-virtual {p0}, Lo/Nl;->b()Lo/GridView;

    move-result-object p1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    :cond_3
    invoke-virtual {p1, v2}, Lo/GridView;->setVisibility(I)V

    .line 893
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lo/MenuInflater;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 895
    iget-object p1, p0, Lo/Nl;->e:Lo/MenuInflater;

    invoke-virtual {p1, v1}, Lo/MenuInflater;->setClipChildren(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static final synthetic b(Lo/Nl;)Lo/HZ;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->h:Lo/HZ;

    return-object p0
.end method

.method public static final synthetic b(Lo/Nl;Lcom/netflix/cl/model/event/session/action/Play;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/Nl;->r:Lcom/netflix/cl/model/event/session/action/Play;

    return-void
.end method

.method public static final synthetic b(Lo/Nl;Lo/Nh;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lo/Nl;->c(Lo/Nh;Z)V

    return-void
.end method

.method public static final synthetic c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    return-object p0
.end method

.method private final c(Lo/Nh;)V
    .locals 9

    .line 623
    iget-object v0, p0, Lo/Nl;->k:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/Nh;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 624
    new-instance v2, Lo/Nl$TaskDescription;

    invoke-direct {v2, p0, p1}, Lo/Nl$TaskDescription;-><init>(Lo/Nl;Lo/Nh;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "data.focus\n             \u2026 .filter { item == data }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;-><init>(Lo/Nl;Lo/Nh;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 654
    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$3;-><init>(Lo/Nl;)V

    move-object v4, v1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 625
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 623
    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 724
    iget-object v0, p0, Lo/Nl;->k:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/Nh;->g()Lio/reactivex/Observable;

    move-result-object v1

    .line 726
    new-instance v2, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;-><init>(Lo/Nl;Lo/Nh;)V

    move-object v4, v2

    check-cast v4, Lo/alA;

    .line 762
    new-instance v2, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$5;-><init>(Lo/Nl;)V

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 725
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 724
    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 770
    invoke-virtual {p1}, Lo/Nh;->h()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Lo/Nl;->k:Lio/reactivex/disposables/CompositeDisposable;

    move-object v2, v0

    check-cast v2, Lio/reactivex/Observable;

    .line 773
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$6;-><init>(Lo/Nl;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 776
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$7;-><init>(Lo/Nl;)V

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 772
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v1, v0}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 782
    :cond_0
    iget-object v0, p0, Lo/Nl;->k:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/Nh;->a()Lio/reactivex/Observable;

    move-result-object v1

    .line 783
    new-instance p1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$8;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$8;-><init>(Lo/Nl;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 787
    new-instance p1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$9;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$9;-><init>(Lo/Nl;)V

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 782
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-static {v0, p1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 792
    iget-object p1, p0, Lo/Nl;->k:Lio/reactivex/disposables/CompositeDisposable;

    sget-object v0, Lo/WebViewFragment;->d:Lo/WebViewFragment;

    .line 970
    const-class v0, Lo/WebViewLibraryLoader;

    invoke-static {v0}, Lo/WebViewFragment;->a(Ljava/lang/Class;)Lo/WebViewFactory;

    move-result-object v0

    check-cast v0, Lo/WebViewLibraryLoader;

    invoke-virtual {v0}, Lo/WebViewLibraryLoader;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 793
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$10;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 797
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$11;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 792
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final c(Lo/Nh;Z)V
    .locals 1

    .line 804
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->e(Z)V

    .line 805
    iget-object p2, p0, Lo/Nl;->t:Lio/reactivex/subjects/PublishSubject;

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 806
    invoke-virtual {p1}, Lo/Nh;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 808
    invoke-direct {p0}, Lo/Nl;->h()V

    .line 811
    :cond_0
    iget-object p1, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 812
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 813
    new-instance v0, Lcom/netflix/cl/model/event/session/SessionCanceled;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    .line 814
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 815
    move-object p1, p2

    check-cast p1, Lcom/netflix/cl/model/event/session/action/StartPlay;

    iput-object p1, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    .line 819
    :cond_1
    iget-object p1, p0, Lo/Nl;->r:Lcom/netflix/cl/model/event/session/action/Play;

    if-eqz p1, :cond_2

    .line 820
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 821
    new-instance v0, Lcom/netflix/cl/model/event/session/SessionCanceled;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    .line 822
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 823
    check-cast p2, Lcom/netflix/cl/model/event/session/action/Play;

    iput-object p2, p0, Lo/Nl;->r:Lcom/netflix/cl/model/event/session/action/Play;

    :cond_2
    return-void
.end method

.method public static synthetic c(Lo/Nl;Lo/Nh;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 803
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Nl;->c(Lo/Nh;Z)V

    return-void
.end method

.method public static final synthetic d(Lo/Nl;)Lo/ServiceManagerNative;
    .locals 0

    .line 55
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/Throwable;)V
    .locals 1

    .line 444
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic d(Lo/Nl;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lo/Nl;->a(Z)V

    return-void
.end method

.method public static final synthetic e(Lo/Nl;)Lo/Nh;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->l:Lo/Nh;

    return-object p0
.end method

.method public static final synthetic e(Lo/Nl;J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lo/Nl;->q:J

    return-void
.end method

.method public static final synthetic e(Lo/Nl;Ljava/lang/Throwable;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lo/Nl;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final f()Lo/ServiceManagerNative;
    .locals 1

    iget-object v0, p0, Lo/Nl;->i:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ServiceManagerNative;

    return-object v0
.end method

.method public static final synthetic f(Lo/Nl;)Lo/UE;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->g:Lo/UE;

    return-object p0
.end method

.method public static final synthetic g(Lo/Nl;)Lcom/netflix/cl/model/event/session/action/Play;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->r:Lcom/netflix/cl/model/event/session/action/Play;

    return-object p0
.end method

.method public static final synthetic h(Lo/Nl;)Lcom/netflix/cl/model/event/session/action/StartPlay;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    return-object p0
.end method

.method private final h()V
    .locals 5

    .line 842
    iget-object v0, p0, Lo/Nl;->l:Lo/Nh;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Lo/Nh;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lo/Nl;->u:Lo/UpdateEngine;

    new-instance v2, Lo/Nj$LoaderManager;

    .line 845
    invoke-virtual {v0}, Lo/Nh;->f()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 844
    invoke-direct {v2, v0, v4, v3}, Lo/Nj$LoaderManager;-><init>(IZZ)V

    check-cast v2, Lo/VintfObject;

    .line 983
    const-class v0, Lo/Nj;

    invoke-virtual {v1, v0, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method public static final synthetic i(Lo/Nl;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lo/Nl;->q:J

    return-wide v0
.end method

.method private final i()V
    .locals 5

    .line 829
    iget-object v0, p0, Lo/Nl;->l:Lo/Nh;

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {v0}, Lo/Nh;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lo/Nl;->u:Lo/UpdateEngine;

    new-instance v2, Lo/Nj$LoaderManager;

    .line 832
    invoke-virtual {v0}, Lo/Nh;->f()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 831
    invoke-direct {v2, v0, v4, v3}, Lo/Nj$LoaderManager;-><init>(IZZ)V

    check-cast v2, Lo/VintfObject;

    .line 981
    const-class v0, Lo/Nj;

    invoke-virtual {v1, v0, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method public static final synthetic j(Lo/Nl;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lo/Nl;->n:J

    return-wide v0
.end method

.method public static final synthetic k(Lo/Nl;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/Nl;->t:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic l(Lo/Nl;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lo/Nl;->i()V

    return-void
.end method

.method public static final synthetic m(Lo/Nl;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lo/Nl;->m:Z

    return p0
.end method

.method public static final synthetic n(Lo/Nl;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lo/Nl;->p:Z

    return p0
.end method

.method public static final synthetic o(Lo/Nl;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lo/Nl;->f:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 595
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->c()V

    .line 596
    :cond_0
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 597
    iget-object v0, p0, Lo/Nl;->l:Lo/Nh;

    .line 598
    instance-of v1, v0, Lo/Nh;

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 600
    check-cast v0, Lo/Nh;

    iput-object v0, p0, Lo/Nl;->l:Lo/Nh;

    .line 602
    :cond_1
    iget-object v0, p0, Lo/Nl;->k:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 603
    iget-object v0, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->m()V

    return-void
.end method

.method public final b()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/Nl;->b:Lo/ams;

    sget-object v1, Lo/Nl;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final c()V
    .locals 7

    .line 576
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->e()V

    .line 577
    :cond_0
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 578
    iget-object v1, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;ZZZILjava/lang/Object;)V

    return-void
.end method

.method public final c(Z)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    xor-int/lit8 v0, p1, 0x1

    .line 458
    iput-boolean v0, p0, Lo/Nl;->p:Z

    .line 459
    iget-object v0, p0, Lo/Nl;->l:Lo/Nh;

    .line 460
    instance-of v1, v0, Lo/Nh;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "play"

    invoke-virtual {p1, v1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 464
    :cond_0
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 465
    invoke-virtual {v0}, Lo/Nh;->k()Ljava/lang/String;

    move-result-object v5

    .line 466
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    invoke-static {v5}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lo/HZ;->a(JZ)V

    .line 467
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->c()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 468
    iput-boolean p1, p0, Lo/Nl;->m:Z

    .line 469
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->b()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne p1, v1, :cond_1

    const-wide/16 v0, -0x1

    .line 471
    iput-wide v0, p0, Lo/Nl;->n:J

    .line 472
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->i()V

    goto/16 :goto_1

    .line 474
    :cond_1
    iget-object p1, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-nez p1, :cond_2

    .line 476
    new-instance p1, Lcom/netflix/cl/model/event/session/action/StartPlay;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {v2}, Lo/HZ;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lo/Nh;->d()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lcom/netflix/cl/model/event/session/action/StartPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 477
    sget-object v1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 478
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v2, p1

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 476
    iput-object p1, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    .line 481
    :cond_2
    iget-object p1, p0, Lo/Nl;->g:Lo/UE;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lo/UE;->d()Lo/Ab;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    .line 482
    iget-object p1, p0, Lo/Nl;->g:Lo/UE;

    .line 483
    instance-of v1, v4, Lo/Ab;

    if-eqz v1, :cond_5

    if-eqz v5, :cond_5

    instance-of v1, p1, Lo/UE;

    if-eqz v1, :cond_5

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lo/Nl;->n:J

    .line 485
    iget-object v1, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->k()V

    .line 486
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "attachPlaybackSessionAndPlay"

    invoke-virtual {v1, v2}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v9, 0x0

    .line 490
    invoke-virtual {v0}, Lo/Nh;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {v2}, Lo/HZ;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$play$3;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$play$3;-><init>(Lo/Nl;)V

    check-cast v3, Lo/alN;

    invoke-static {v1, v2, v3}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lo/Nl;->h:Lo/HZ;

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 503
    invoke-virtual {v0}, Lo/Nh;->q()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    .line 504
    invoke-virtual {v0}, Lo/Nh;->w()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v7

    .line 505
    invoke-virtual {v0}, Lo/Nh;->n()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v8

    const/4 v11, 0x1

    .line 508
    invoke-interface {p1}, Lo/UE;->c()Lo/Bn;

    move-result-object v12

    .line 499
    invoke-virtual/range {v1 .. v12}, Lo/HZ;->c(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;JZLo/Bn;)V

    goto :goto_1

    .line 511
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "extrasFeedViewModel.videoGroup should not ne null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 515
    :cond_6
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :cond_7
    :goto_1
    return-void
.end method

.method protected final d()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(ZZZZ)V

    .line 318
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->e(Z)V

    .line 334
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a()Lio/reactivex/Observable;

    move-result-object v1

    .line 336
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$1;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 347
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$2;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 335
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 350
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 352
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$3;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 370
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$4;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 351
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 373
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d()Lio/reactivex/Observable;

    move-result-object v1

    .line 375
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$5;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 382
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$6;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 374
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 385
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->b()Lio/reactivex/Observable;

    move-result-object v1

    .line 387
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$7;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 394
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$8;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 386
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 397
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->h()Lio/reactivex/Observable;

    move-result-object v1

    .line 399
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$9;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 403
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$10;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 398
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 406
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->f()Lio/reactivex/Observable;

    move-result-object v1

    .line 408
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$11;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 419
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$12;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 407
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 422
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->j()Lio/reactivex/Observable;

    move-result-object v1

    .line 424
    sget-object v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 427
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$14;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 423
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 430
    iget-object v0, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c()Lio/reactivex/Observable;

    move-result-object v1

    .line 432
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$15;-><init>(Lo/Nl;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 439
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$16;-><init>(Lo/Nl;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 431
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final e()V
    .locals 2

    .line 582
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->a()V

    .line 583
    :cond_0
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    move-object v1, v0

    check-cast v1, Lo/MessagePdu;

    .line 585
    iget-object v1, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-eqz v1, :cond_1

    .line 586
    check-cast v0, Lo/MessagePdu;

    .line 587
    new-instance v0, Lcom/netflix/cl/model/event/session/SessionCanceled;

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    .line 588
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    const/4 v0, 0x0

    .line 589
    check-cast v0, Lcom/netflix/cl/model/event/session/action/StartPlay;

    iput-object v0, p0, Lo/Nl;->s:Lcom/netflix/cl/model/event/session/action/StartPlay;

    :cond_1
    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, v0}, Lo/Nl;->e(Z)V

    return-void
.end method

.method public final e(Lo/UE;ILo/Nh;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UE;",
            "I",
            "Lo/Nh;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p4, "playablesFeedViewModel"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "miniPlayerViewModel"

    invoke-static {p3, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iput-object p1, p0, Lo/Nl;->g:Lo/UE;

    .line 544
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lo/ServiceManagerNative;->c(I)V

    .line 545
    :cond_0
    iget p1, p0, Lo/Nl;->o:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lo/Nl;->o:I

    .line 546
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 548
    iget-object p1, p0, Lo/Nl;->l:Lo/Nh;

    .line 550
    iput-object p3, p0, Lo/Nl;->l:Lo/Nh;

    .line 551
    invoke-virtual {p3}, Lo/Nh;->p()Ljava/lang/String;

    move-result-object p4

    .line 552
    move-object v0, p4

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 553
    invoke-virtual {p0}, Lo/Nl;->b()Lo/GridView;

    move-result-object p2

    invoke-virtual {p2, p4}, Lo/GridView;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_3
    invoke-virtual {p0}, Lo/Nl;->b()Lo/GridView;

    move-result-object p2

    sget p4, Lcom/netflix/mediaclient/ui/R$Application;->d:I

    invoke-virtual {p2, p4}, Lo/GridView;->setImageResource(I)V

    .line 557
    :goto_1
    invoke-direct {p0, p3}, Lo/Nl;->c(Lo/Nh;)V

    .line 559
    :try_start_0
    iget-object p2, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 561
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p4

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-16906: Trying to reuse an active controller: old==new?: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/Nl;->l:Lo/Nh;

    invoke-static {p1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Throwable;

    .line 561
    invoke-interface {p4, v0, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_4

    .line 563
    iget-object p2, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Ljava/lang/Object;)V

    .line 564
    :cond_4
    iget-object p1, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Ljava/lang/Object;)V

    .line 566
    :goto_2
    invoke-virtual {p0}, Lo/Nl;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/GridView;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lo/Nl;->j:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {p3}, Lo/Nh;->t()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->b(Ljava/lang/Integer;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 568
    invoke-static {p0, p3, v1, p1, p2}, Lo/Nl;->c(Lo/Nl;Lo/Nh;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 521
    iget-object v0, p0, Lo/Nl;->l:Lo/Nh;

    .line 522
    instance-of v0, v0, Lo/Nh;

    if-eqz v0, :cond_0

    .line 523
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 524
    iget-object v0, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iput-boolean p1, p0, Lo/Nl;->f:Z

    .line 526
    iget-object p1, p0, Lo/Nl;->h:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->h()V

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 2

    .line 607
    invoke-direct {p0}, Lo/Nl;->f()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->b()V

    .line 608
    :cond_0
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    move-object v1, v0

    check-cast v1, Lo/MessagePdu;

    .line 609
    check-cast v0, Lo/MessagePdu;

    .line 610
    iget-object v0, p0, Lo/Nl;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lo/Nl;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    .line 963
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 612
    sget-object v1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
