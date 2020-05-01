.class public final Lo/Ia$StateListAnimator;
.super Lo/Ia$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ia$StateListAnimator$StateListAnimator;
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final c:Lo/Ia$StateListAnimator$StateListAnimator;


# instance fields
.field private final d:Lo/ams;

.field private final e:Lo/MenuInflater;

.field private f:Lo/GK;

.field private g:Z

.field private final h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

.field private final i:Lo/HZ;

.field private final j:Lo/aka;

.field private k:Z

.field private l:J

.field private m:I

.field private final n:Lio/reactivex/disposables/CompositeDisposable;

.field private o:Lo/HY;

.field private p:J

.field private q:Lcom/netflix/cl/model/event/session/action/Play;

.field private r:Lcom/netflix/cl/model/event/session/action/StartPlay;

.field private final s:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private final x:Lo/UpdateEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/Ia$StateListAnimator;

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

    sput-object v0, Lo/Ia$StateListAnimator;->a:[Lo/amT;

    new-instance v0, Lo/Ia$StateListAnimator$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ia$StateListAnimator$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lo/UpdateEngine;)V
    .locals 6

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lo/Ia$Application;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/Ia$StateListAnimator;->x:Lo/UpdateEngine;

    .line 137
    move-object p2, p1

    check-cast p2, Lo/MenuInflater;

    iput-object p2, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    .line 138
    sget p2, Lo/GS$Dialog;->m:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Ia$StateListAnimator;->d:Lo/ams;

    .line 143
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$debugView$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$debugView$2;-><init>(Lo/Ia$StateListAnimator;Landroid/view/View;)V

    check-cast v0, Lo/alB;

    invoke-static {p2, v0}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lo/Ia$StateListAnimator;->j:Lo/aka;

    .line 183
    new-instance p2, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$controls$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$controls$1;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast v0, Lo/alA;

    .line 183
    invoke-direct {p2, p1, v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;-><init>(Landroid/view/View;Lo/alA;)V

    iput-object p2, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    .line 188
    new-instance p2, Lo/HZ;

    sget v0, Lo/GS$Dialog;->D:I

    invoke-static {}, Lo/ady;->c()Z

    move-result v1

    invoke-direct {p2, p1, v0, v1}, Lo/HZ;-><init>(Landroid/view/View;IZ)V

    iput-object p2, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    .line 199
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    const-wide/16 p1, -0x1

    .line 201
    iput-wide p1, p0, Lo/Ia$StateListAnimator;->l:J

    .line 204
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "PublishSubject.create<Unit>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Ia$StateListAnimator;->s:Lio/reactivex/subjects/PublishSubject;

    .line 214
    sget-object p1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 217
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(ZZZZ)V

    .line 223
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->e(Z)V

    .line 240
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d()Lio/reactivex/Observable;

    move-result-object v0

    .line 242
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 252
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$3;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 241
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 255
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a()Lio/reactivex/Observable;

    move-result-object v0

    .line 257
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$4;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$4;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 270
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$5;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$5;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    .line 256
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 273
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 275
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$6;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$6;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 290
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$7;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$7;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    .line 274
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 293
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->f()Lio/reactivex/Observable;

    move-result-object v0

    .line 295
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$8;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$8;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 299
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$9;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$9;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    .line 294
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 302
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->j()Lio/reactivex/Observable;

    move-result-object v0

    .line 304
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$10;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$10;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 315
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$11;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$11;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    .line 303
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 318
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->g()Lio/reactivex/Observable;

    move-result-object v0

    .line 320
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$12;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$12;

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 323
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$13;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$13;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    .line 319
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 326
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c()Lio/reactivex/Observable;

    move-result-object v0

    .line 328
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$14;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$14;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 339
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$15;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$15;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    .line 327
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 342
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    new-instance p2, Lo/Ia$StateListAnimator$1;

    invoke-direct {p2, p0}, Lo/Ia$StateListAnimator$1;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;

    invoke-virtual {p1, p2}, Lo/HZ;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V

    .line 346
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    new-instance p2, Lo/Ia$StateListAnimator$5;

    invoke-direct {p2, p0}, Lo/Ia$StateListAnimator$5;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;

    invoke-virtual {p1, p2}, Lo/HZ;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    .line 479
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    new-instance p2, Lo/Ia$StateListAnimator$3;

    invoke-direct {p2, p0}, Lo/Ia$StateListAnimator$3;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast p2, Lo/Ii$TaskDescription;

    const/4 v0, 0x3

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, p2, v0, v1, v2}, Lo/HZ;->a(Lo/Ii$TaskDescription;IJ)V

    .line 495
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    new-instance p2, Lo/Ia$StateListAnimator$4;

    invoke-direct {p2, p0}, Lo/Ia$StateListAnimator$4;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;

    invoke-virtual {p1, p2}, Lo/HZ;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V

    return-void
.end method

.method public static final synthetic a(Lo/Ia$StateListAnimator;)Lo/HZ;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    return-object p0
.end method

.method public static final synthetic a(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/Play;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lo/Ia$StateListAnimator;->q:Lcom/netflix/cl/model/event/session/action/Play;

    return-void
.end method

.method public static final synthetic a(Lo/Ia$StateListAnimator;Ljava/lang/Throwable;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lo/Ia$StateListAnimator;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Z)V
    .locals 11

    .line 923
    iget-object v0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    if-eqz v0, :cond_4

    .line 925
    invoke-virtual {v0}, Lo/HY;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 927
    iget-object v0, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Ia$StateListAnimator;->g:Z

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

    .line 931
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    invoke-virtual {v1}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "trailersItemView.resources"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 932
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->requestLayout()V

    .line 933
    iget-object v3, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move v5, v0

    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZZILjava/lang/Object;)V

    .line 940
    invoke-virtual {p0}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v10}, Lo/GridView;->setVisibility(I)V

    .line 941
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lo/MenuInflater;->setBackgroundColor(I)V

    .line 943
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    invoke-virtual {p1, v2}, Lo/MenuInflater;->setClipChildren(Z)V

    goto :goto_2

    .line 945
    :cond_2
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v3, -0x2

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 946
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    invoke-virtual {p1}, Lo/MenuInflater;->requestLayout()V

    .line 947
    iget-object v3, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move v5, v0

    invoke-static/range {v3 .. v9}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZZILjava/lang/Object;)V

    .line 954
    invoke-virtual {p0}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    :cond_3
    invoke-virtual {p1, v2}, Lo/GridView;->setVisibility(I)V

    .line 959
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lo/MenuInflater;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 961
    iget-object p1, p0, Lo/Ia$StateListAnimator;->e:Lo/MenuInflater;

    invoke-virtual {p1, v1}, Lo/MenuInflater;->setClipChildren(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final b(Lo/GK;)V
    .locals 7

    .line 165
    iget-object v0, p0, Lo/Ia$StateListAnimator;->f:Lo/GK;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lo/Ia$StateListAnimator;->f:Lo/GK;

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lo/Ia$StateListAnimator;->f:Lo/GK;

    .line 170
    iget-object p1, p0, Lo/Ia$StateListAnimator;->f:Lo/GK;

    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1}, Lo/GK;->u()Lio/reactivex/Observable;

    move-result-object p1

    .line 172
    invoke-virtual {p0}, Lo/Ia$StateListAnimator;->d()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "it.volumeChanges\n       \u2026      .takeUntil(destroy)"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 174
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$extrasFeedViewModel$$inlined$let$lambda$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$extrasFeedViewModel$$inlined$let$lambda$1;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 173
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "once set, extrasFeedViewModel instance should remain the same."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic b(Lo/Ia$StateListAnimator;Lo/HY;Z)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lo/Ia$StateListAnimator;->e(Lo/HY;Z)V

    return-void
.end method

.method public static final synthetic b(Lo/Ia$StateListAnimator;Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lo/Ia$StateListAnimator;->k:Z

    return-void
.end method

.method public static final synthetic b(Lo/Ia$StateListAnimator;)Z
    .locals 0

    .line 128
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lo/Ia$StateListAnimator;)Lo/HY;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    return-object p0
.end method

.method private final c(Ljava/lang/Throwable;)V
    .locals 1

    .line 518
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final c(Lo/HY;)V
    .locals 9

    .line 707
    iget-object v0, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/HY;->I()Lio/reactivex/Observable;

    move-result-object v1

    .line 708
    new-instance v2, Lo/Ia$StateListAnimator$TaskDescription;

    invoke-direct {v2, p0, p1}, Lo/Ia$StateListAnimator$TaskDescription;-><init>(Lo/Ia$StateListAnimator;Lo/HY;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "data.focus\n             \u2026ata && !video.isPlaying }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$2;-><init>(Lo/Ia$StateListAnimator;Lo/HY;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 739
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$3;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v4, v1

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 709
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 707
    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 748
    iget-object v0, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/HY;->G()Lio/reactivex/Observable;

    move-result-object v1

    .line 749
    invoke-virtual {v1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v1

    .line 750
    new-instance v2, Lo/Ia$StateListAnimator$Activity;

    invoke-direct {v2, p0}, Lo/Ia$StateListAnimator$Activity;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "data.highlight\n         \u2026trols.fullscreenEnabled }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;-><init>(Lo/Ia$StateListAnimator;Lo/HY;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 769
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$6;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v4, v1

    check-cast v4, Lo/alA;

    .line 751
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 748
    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 777
    iget-object v0, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/HY;->I()Lio/reactivex/Observable;

    move-result-object v1

    .line 778
    sget-object v2, Lo/Ia$StateListAnimator$Application;->e:Lo/Ia$StateListAnimator$Application;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v1, "data.focus\n                .filter { it == false }"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;-><init>(Lo/Ia$StateListAnimator;Lo/HY;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    .line 797
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$9;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$9;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v4, v1

    check-cast v4, Lo/alA;

    .line 779
    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 777
    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 806
    iget-object v0, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/HY;->H()Lio/reactivex/Observable;

    move-result-object v1

    .line 808
    new-instance v2, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;-><init>(Lo/Ia$StateListAnimator;Lo/HY;)V

    move-object v4, v2

    check-cast v4, Lo/alA;

    .line 840
    new-instance v2, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$11;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$11;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 807
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 806
    invoke-static {v0, v1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 848
    invoke-virtual {p1}, Lo/HY;->J()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v1, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    move-object v2, v0

    check-cast v2, Lio/reactivex/Observable;

    .line 851
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$12;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 854
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$13;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 850
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v1, v0}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 860
    :cond_0
    iget-object v0, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lo/HY;->E()Lio/reactivex/Observable;

    move-result-object v1

    .line 861
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$14;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$14;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 865
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$15;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$15;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 860
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-static {v0, p1}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 870
    iget-object p1, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    sget-object v0, Lo/WebViewFragment;->d:Lo/WebViewFragment;

    .line 1041
    const-class v0, Lo/WebViewLibraryLoader;

    invoke-static {v0}, Lo/WebViewFragment;->a(Ljava/lang/Class;)Lo/WebViewFactory;

    move-result-object v0

    check-cast v0, Lo/WebViewLibraryLoader;

    invoke-virtual {v0}, Lo/WebViewLibraryLoader;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 872
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$16;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    .line 876
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$17;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$17;-><init>(Lo/Ia$StateListAnimator;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    .line 871
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 870
    invoke-static {p1, v0}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static final synthetic c(Lo/Ia$StateListAnimator;J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lo/Ia$StateListAnimator;->p:J

    return-void
.end method

.method public static final synthetic d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    return-object p0
.end method

.method public static final synthetic d(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/StartPlay;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    return-void
.end method

.method public static final synthetic d(Lo/Ia$StateListAnimator;Z)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lo/Ia$StateListAnimator;->a(Z)V

    return-void
.end method

.method public static final synthetic e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;
    .locals 0

    .line 128
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object p0

    return-object p0
.end method

.method private final e(Lo/HY;Z)V
    .locals 2

    .line 883
    iget-object v0, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->e(Z)V

    .line 884
    iget-object p2, p0, Lo/Ia$StateListAnimator;->s:Lio/reactivex/subjects/PublishSubject;

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 885
    invoke-virtual {p1}, Lo/HY;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 887
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->i()V

    .line 890
    :cond_0
    iget-object p1, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-eqz p1, :cond_1

    .line 891
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/action/StartPlay;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 p1, 0x0

    .line 892
    check-cast p1, Lcom/netflix/cl/model/event/session/action/StartPlay;

    iput-object p1, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    :cond_1
    return-void
.end method

.method public static synthetic e(Lo/Ia$StateListAnimator;Lo/HY;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 882
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Ia$StateListAnimator;->e(Lo/HY;Z)V

    return-void
.end method

.method public static final synthetic f(Lo/Ia$StateListAnimator;)Lcom/netflix/cl/model/event/session/action/StartPlay;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    return-object p0
.end method

.method private final f()Z
    .locals 1

    .line 974
    sget-object v0, Lo/aeI;->c:Lo/aeI;

    invoke-virtual {v0}, Lo/aeI;->d()Z

    move-result v0

    return v0
.end method

.method public static final synthetic g(Lo/Ia$StateListAnimator;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lo/Ia$StateListAnimator;->k:Z

    return p0
.end method

.method private final h()Lo/ServiceManagerNative;
    .locals 1

    iget-object v0, p0, Lo/Ia$StateListAnimator;->j:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ServiceManagerNative;

    return-object v0
.end method

.method public static final synthetic h(Lo/Ia$StateListAnimator;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->i()V

    return-void
.end method

.method public static final synthetic i(Lo/Ia$StateListAnimator;)Lo/UpdateEngine;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->x:Lo/UpdateEngine;

    return-object p0
.end method

.method private final i()V
    .locals 4

    .line 908
    iget-object v0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lo/Ia$StateListAnimator;->x:Lo/UpdateEngine;

    .line 910
    new-instance v1, Lo/GY$FragmentManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lo/GY$FragmentManager;-><init>(ZZ)V

    check-cast v1, Lo/VintfObject;

    .line 1044
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method public static final synthetic j(Lo/Ia$StateListAnimator;)Lo/GK;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->f:Lo/GK;

    return-object p0
.end method

.method private final j()V
    .locals 4

    .line 897
    iget-object v0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lo/Ia$StateListAnimator;->x:Lo/UpdateEngine;

    .line 899
    new-instance v1, Lo/GY$FragmentManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lo/GY$FragmentManager;-><init>(ZZ)V

    check-cast v1, Lo/VintfObject;

    .line 1042
    const-class v2, Lo/GY;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method public static final synthetic k(Lo/Ia$StateListAnimator;)J
    .locals 2

    .line 128
    iget-wide v0, p0, Lo/Ia$StateListAnimator;->p:J

    return-wide v0
.end method

.method public static final synthetic l(Lo/Ia$StateListAnimator;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->s:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic m(Lo/Ia$StateListAnimator;)J
    .locals 2

    .line 128
    iget-wide v0, p0, Lo/Ia$StateListAnimator;->l:J

    return-wide v0
.end method

.method public static final synthetic n(Lo/Ia$StateListAnimator;)Lcom/netflix/cl/model/event/session/action/Play;
    .locals 0

    .line 128
    iget-object p0, p0, Lo/Ia$StateListAnimator;->q:Lcom/netflix/cl/model/event/session/action/Play;

    return-object p0
.end method

.method public static final synthetic o(Lo/Ia$StateListAnimator;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->j()V

    return-void
.end method

.method public static final synthetic q(Lo/Ia$StateListAnimator;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lo/Ia$StateListAnimator;->t:Z

    return p0
.end method

.method public static final synthetic t(Lo/Ia$StateListAnimator;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lo/Ia$StateListAnimator;->g:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 678
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->c()V

    .line 679
    :cond_0
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 680
    iget-object v0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    .line 681
    instance-of v1, v0, Lo/HY;

    if-eqz v1, :cond_1

    .line 682
    iget-object v1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 683
    check-cast v0, Lo/HY;

    iput-object v0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    .line 685
    :cond_1
    iget-object v0, p0, Lo/Ia$StateListAnimator;->n:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 686
    iget-object v0, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->m()V

    .line 687
    invoke-super {p0}, Lo/Ia$Application;->a()V

    return-void
.end method

.method public b()V
    .locals 7

    .line 658
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->e()V

    .line 659
    :cond_0
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 660
    invoke-super {p0}, Lo/Ia$Application;->b()V

    .line 661
    iget-object v1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZILjava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 665
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->a()V

    .line 666
    :cond_0
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 668
    iget-object v0, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-eqz v0, :cond_1

    .line 669
    new-instance v1, Lcom/netflix/cl/model/event/session/SessionCanceled;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v1, v0}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    .line 670
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v1, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    const/4 v0, 0x0

    .line 671
    check-cast v0, Lcom/netflix/cl/model/event/session/action/StartPlay;

    iput-object v0, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    :cond_1
    const/4 v0, 0x0

    .line 673
    invoke-virtual {p0, v0}, Lo/Ia$StateListAnimator;->c(Z)V

    .line 674
    invoke-super {p0}, Lo/Ia$Application;->c()V

    return-void
.end method

.method public c(Lo/GK;ILo/HY;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GK;",
            "I",
            "Lo/HY;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p4, "extrasFeedViewModel"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "data"

    invoke-static {p3, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, p1}, Lo/Ia$StateListAnimator;->b(Lo/GK;)V

    .line 621
    invoke-virtual {p3}, Lo/HY;->i()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/akz;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AG;

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/AG;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p4

    .line 622
    :goto_0
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 623
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lo/ServiceManagerNative;->c(I)V

    .line 624
    :cond_1
    iget p2, p0, Lo/Ia$StateListAnimator;->m:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lo/Ia$StateListAnimator;->m:I

    .line 625
    sget-object p2, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast p2, Lo/MessagePdu;

    .line 627
    iget-object p2, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    .line 629
    iput-object p3, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    .line 630
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_4

    .line 631
    invoke-virtual {p0}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object v1

    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v3, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->h(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    goto :goto_3

    .line 634
    :cond_4
    invoke-virtual {p0}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    sget v0, Lo/GS$TaskDescription;->b:I

    invoke-virtual {p1, v0}, Lo/GridView;->setImageResource(I)V

    .line 636
    :goto_3
    invoke-direct {p0, p3}, Lo/Ia$StateListAnimator;->c(Lo/HY;)V

    .line 638
    :try_start_0
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 640
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPY-16906: Trying to reuse an active controller: old==new?: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    invoke-static {p2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    check-cast p1, Ljava/lang/Throwable;

    .line 640
    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_5

    .line 644
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Ljava/lang/Object;)V

    .line 645
    :cond_5
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c(Ljava/lang/Object;)V

    .line 647
    :goto_4
    invoke-virtual {p0}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/GridView;->setVisibility(I)V

    .line 648
    iget-object p1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {p3}, Lo/HY;->r()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Ljava/lang/Integer;)V

    const/4 p1, 0x2

    .line 649
    invoke-static {p0, p3, v2, p1, p4}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;Lo/HY;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 604
    iget-object v0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    .line 605
    instance-of v0, v0, Lo/HY;

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 607
    iget-object v0, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {v0}, Lo/HZ;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iput-boolean p1, p0, Lo/Ia$StateListAnimator;->g:Z

    .line 609
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->h()V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    xor-int/lit8 v0, p1, 0x1

    .line 532
    iput-boolean v0, p0, Lo/Ia$StateListAnimator;->t:Z

    .line 533
    iget-object v0, p0, Lo/Ia$StateListAnimator;->o:Lo/HY;

    .line 534
    instance-of v1, v0, Lo/HY;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lo/HY;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_0

    .line 536
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "play"

    invoke-virtual {p1, v1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 538
    :cond_0
    sget-object p1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 539
    invoke-virtual {v0}, Lo/HY;->g()Lo/AK;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 540
    :goto_0
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-static {v6}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lo/HZ;->a(JZ)V

    .line 541
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->c()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 542
    iput-boolean p1, p0, Lo/Ia$StateListAnimator;->k:Z

    .line 543
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->b()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    if-ne p1, v2, :cond_2

    const-wide/16 v0, -0x1

    .line 544
    iput-wide v0, p0, Lo/Ia$StateListAnimator;->l:J

    .line 545
    iget-object p1, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {p1}, Lo/HZ;->i()V

    goto/16 :goto_1

    .line 547
    :cond_2
    invoke-virtual {v0}, Lo/HY;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lo/HY;->g()Lo/AK;

    move-result-object p1

    instance-of p1, p1, Lo/AK;

    if-eqz p1, :cond_8

    .line 548
    iget-object p1, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-nez p1, :cond_3

    .line 550
    new-instance p1, Lcom/netflix/cl/model/event/session/action/StartPlay;

    const-wide/16 v2, 0x0

    .line 551
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 552
    iget-object v3, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {v3}, Lo/HZ;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 553
    invoke-virtual {v0}, Lo/HY;->D()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    .line 550
    invoke-direct {p1, v2, v3, v4}, Lcom/netflix/cl/model/event/session/action/StartPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 555
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v3, p1

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 554
    iput-object p1, p0, Lo/Ia$StateListAnimator;->r:Lcom/netflix/cl/model/event/session/action/StartPlay;

    .line 558
    :cond_3
    iget-object p1, p0, Lo/Ia$StateListAnimator;->f:Lo/GK;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/GK;->y()Lo/Ab;

    move-result-object v1

    :cond_4
    move-object v5, v1

    .line 559
    iget-object p1, p0, Lo/Ia$StateListAnimator;->f:Lo/GK;

    .line 560
    instance-of v1, v5, Lo/Ab;

    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    instance-of v1, p1, Lo/GK;

    if-eqz v1, :cond_6

    .line 561
    sget-object v1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lo/Ia$StateListAnimator;->l:J

    .line 563
    iget-object v1, p0, Lo/Ia$StateListAnimator;->h:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->k()V

    .line 564
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "attachPlaybackSessionAndPlay"

    invoke-virtual {v1, v2}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_5
    const-wide/16 v10, 0x0

    .line 568
    invoke-virtual {v0}, Lo/HY;->g()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->S()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 569
    iget-object v2, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    invoke-virtual {v2}, Lo/HZ;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 570
    new-instance v3, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$play$4;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$play$4;-><init>(Lo/Ia$StateListAnimator;)V

    check-cast v3, Lo/alN;

    .line 567
    invoke-static {v1, v2, v3}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 579
    iget-object v2, p0, Lo/Ia$StateListAnimator;->i:Lo/HZ;

    .line 580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 583
    invoke-virtual {v0}, Lo/HY;->h()Lo/agg;

    move-result-object v1

    invoke-interface {v1}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    const-string v1, "data.topNodeVideo.type"

    invoke-static {v7, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    sget-object v1, Lo/Ia;->c:Lo/Ia$Activity;

    invoke-virtual {v1}, Lo/Ia$Activity;->c()Lo/Ib;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    .line 585
    invoke-virtual {v0}, Lo/HY;->L()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v9

    const/4 v12, 0x1

    .line 588
    invoke-virtual {p1}, Lo/GK;->n()Lo/Bn;

    move-result-object v13

    .line 579
    invoke-virtual/range {v2 .. v13}, Lo/HZ;->c(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;JZLo/Bn;)V

    goto :goto_1

    .line 592
    :cond_6
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "extrasFeedViewModel.videoGroup should not ne null"

    .line 593
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 598
    :cond_7
    sget-object p1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :cond_8
    :goto_1
    return-void
.end method

.method public e()Z
    .locals 2

    .line 691
    invoke-direct {p0}, Lo/Ia$StateListAnimator;->h()Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ServiceManagerNative;->b()V

    .line 692
    :cond_0
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    move-object v1, v0

    check-cast v1, Lo/MessagePdu;

    .line 693
    check-cast v0, Lo/MessagePdu;

    .line 694
    iget-object v0, p0, Lo/Ia$StateListAnimator;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lo/Ia$StateListAnimator;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    .line 1034
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 696
    sget-object v1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/Ia$StateListAnimator;->d:Lo/ams;

    sget-object v1, Lo/Ia$StateListAnimator;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method
