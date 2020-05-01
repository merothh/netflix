.class public final Lo/Do;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;


# instance fields
.field private a:Lo/Bb;

.field private b:Lo/Ba;

.field private c:Z

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Ba;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:J

.field private h:I

.field private i:I

.field private j:Ljava/lang/Integer;

.field private k:Lo/Dl;

.field private l:I

.field private m:Z

.field private n:Lo/PS;

.field private final o:Lo/FI;

.field private p:Landroid/widget/FrameLayout;

.field private final q:Ljava/lang/String;

.field private r:Lo/FD;

.field private final s:Lo/UpdateEngine;

.field private final t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final w:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final x:J

.field private final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lo/UpdateEngine;Lio/reactivex/Observable;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            "Lo/UpdateEngine;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seasonSelectorLayout"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodesListLayout"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lo/Do;->q:Ljava/lang/String;

    iput-object p5, p0, Lo/Do;->s:Lo/UpdateEngine;

    iput-object p6, p0, Lo/Do;->w:Lio/reactivex/Observable;

    iput-object p7, p0, Lo/Do;->y:Ljava/lang/String;

    iput-wide p8, p0, Lo/Do;->x:J

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lo/Do;->c:Z

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Do;->d:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lo/Do;->h:I

    .line 90
    new-instance p1, Lo/FI;

    iget-object p4, p0, Lo/Do;->s:Lo/UpdateEngine;

    invoke-virtual {p4}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p4

    invoke-direct {p1, p4}, Lo/FI;-><init>(Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/Do;->o:Lo/FI;

    .line 102
    invoke-direct {p0, p3}, Lo/Do;->a(Landroid/view/ViewGroup;)V

    .line 105
    invoke-direct {p0, p2}, Lo/Do;->b(Landroid/view/ViewGroup;)V

    .line 107
    new-instance p1, Lo/Dl;

    invoke-direct {p1, p3}, Lo/Dl;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lo/Do;->k:Lo/Dl;

    .line 110
    iget-object p1, p0, Lo/Do;->k:Lo/Dl;

    if-eqz p1, :cond_0

    .line 111
    new-instance p2, Lo/Dh;

    .line 112
    move-object p4, p1

    check-cast p4, Lo/Dp;

    .line 113
    iget-object p5, p0, Lo/Do;->s:Lo/UpdateEngine;

    const-class p6, Lo/FH;

    invoke-virtual {p5, p6}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p5

    .line 111
    invoke-direct {p2, p4, p5}, Lo/Dh;-><init>(Lo/Dp;Lio/reactivex/Observable;)V

    .line 116
    invoke-virtual {p1}, Lo/Dl;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lo/Do;->w:Lio/reactivex/Observable;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 119
    new-instance p2, Lo/Do$ActionBar;

    invoke-direct {p2, p0}, Lo/Do$ActionBar;-><init>(Lo/Do;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 128
    :cond_0
    invoke-direct {p0, p3}, Lo/Do;->d(Landroid/view/ViewGroup;)V

    .line 131
    iget-object p1, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance p2, Lo/Do$3;

    invoke-direct {p2, p0}, Lo/Do$3;-><init>(Lo/Do;)V

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public static final synthetic a(Lo/Do;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final a()V
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-direct {p0, v0}, Lo/Do;->e(Z)V

    return-void
.end method

.method private final a(I)V
    .locals 4

    .line 402
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 407
    invoke-virtual {p0}, Lo/Do;->c()V

    .line 410
    iget-object v0, p0, Lo/Do;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lo/Do;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ba;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/Do;->b:Lo/Ba;

    .line 411
    iput p1, p0, Lo/Do;->h:I

    .line 413
    iget-object v0, p0, Lo/Do;->b:Lo/Ba;

    if-nez v0, :cond_1

    .line 414
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 417
    :cond_1
    iget-object v0, p0, Lo/Do;->s:Lo/UpdateEngine;

    const-class v1, Lo/ApduList;

    new-instance v2, Lo/ApduList$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/ApduList$TaskDescription;-><init>(Z)V

    check-cast v2, Lo/VintfObject;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 419
    invoke-direct {p0}, Lo/Do;->g()V

    .line 421
    iget-object v0, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 422
    const-class v1, Lo/DC;

    .line 423
    new-instance v2, Lo/DC$Dialog;

    invoke-direct {v2, p1}, Lo/DC$Dialog;-><init>(I)V

    check-cast v2, Lo/VintfObject;

    .line 421
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private final a(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 136
    new-instance v0, Lo/BeamShareData;

    .line 137
    new-instance v1, Lo/IpUtils;

    invoke-direct {v1, p1}, Lo/IpUtils;-><init>(Landroid/view/ViewGroup;)V

    check-cast v1, Lo/NsdServiceInfo;

    .line 138
    iget-object v2, p0, Lo/Do;->s:Lo/UpdateEngine;

    const-class v3, Lo/ApduList;

    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 136
    invoke-direct {v0, v1, v2}, Lo/BeamShareData;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V

    .line 141
    new-instance v0, Lo/WakeupStats;

    invoke-direct {v0, p1}, Lo/WakeupStats;-><init>(Landroid/view/ViewGroup;)V

    .line 142
    new-instance p1, Lo/WakeupEvent;

    .line 143
    move-object v1, v0

    check-cast v1, Lo/WimaxManagerConstants;

    .line 144
    iget-object v2, p0, Lo/Do;->s:Lo/UpdateEngine;

    const-class v3, Lo/ApduList;

    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 142
    invoke-direct {p1, v1, v2}, Lo/WakeupEvent;-><init>(Lo/WimaxManagerConstants;Lio/reactivex/Observable;)V

    .line 147
    iget-object p1, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/Do$Application;

    invoke-direct {v1, p0}, Lo/Do$Application;-><init>(Lo/Do;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 153
    invoke-virtual {v0}, Lo/WakeupStats;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lo/Do;->w:Lio/reactivex/Observable;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 155
    new-instance v0, Lo/Do$FragmentManager;

    invoke-direct {v0, p0}, Lo/Do$FragmentManager;-><init>(Lo/Do;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 164
    sget-object v1, Lo/Do$Dialog;->b:Lo/Do$Dialog;

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 155
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 167
    invoke-direct {p0}, Lo/Do;->f()V

    return-void
.end method

.method public static final synthetic a(Lo/Do;I)V
    .locals 0

    .line 57
    iput p1, p0, Lo/Do;->h:I

    return-void
.end method

.method public static final synthetic a(Lo/Do;Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/Do;->j:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a(Lo/Do;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/Do;->e(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lo/Do;->e:Z

    return-void
.end method

.method public static final synthetic b(Lo/Do;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0
.end method

.method private final b(Landroid/view/ViewGroup;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 173
    const-class v1, Lo/DG;

    .line 172
    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 173
    new-instance v1, Lo/Do$PendingIntent;

    invoke-direct {v1, p0}, Lo/Do$PendingIntent;-><init>(Lo/Do;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 179
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/Do;->p:Landroid/widget/FrameLayout;

    .line 181
    iget-object v0, p0, Lo/Do;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 182
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    new-instance p1, Lo/FD;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lo/Do;->s:Lo/UpdateEngine;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;ILo/amc;)V

    iput-object p1, p0, Lo/Do;->r:Lo/FD;

    .line 184
    iget-object p1, p0, Lo/Do;->r:Lo/FD;

    if-eqz p1, :cond_0

    .line 185
    new-instance v0, Lo/EO;

    .line 186
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    .line 187
    iget-object p1, p0, Lo/Do;->s:Lo/UpdateEngine;

    const-class v2, Lo/DC;

    invoke-virtual {p1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    .line 188
    iget-object v3, p0, Lo/Do;->w:Lio/reactivex/Observable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    .line 185
    invoke-direct/range {v0 .. v7}, Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;ILo/amc;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lo/Do;I)V
    .locals 0

    .line 57
    iput p1, p0, Lo/Do;->l:I

    return-void
.end method

.method public static final synthetic b(Lo/Do;Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/Do;->f:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic b(Lo/Do;Lo/Bb;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/Do;->a:Lo/Bb;

    return-void
.end method

.method public static final synthetic b(Lo/Do;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/Do;->a(Z)V

    return-void
.end method

.method public static final synthetic c(Lo/Do;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->y:Ljava/lang/String;

    return-object p0
.end method

.method private final c(Lo/Bc;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 200
    const-class v1, Lo/FH;

    .line 201
    new-instance v2, Lo/FH$Activity;

    invoke-direct {v2, p1}, Lo/FH$Activity;-><init>(Lo/Bc;)V

    check-cast v2, Lo/VintfObject;

    .line 199
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 203
    iget-object p1, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 204
    const-class v0, Lo/FH;

    .line 205
    sget-object v1, Lo/FH$TaskStackBuilder;->b:Lo/FH$TaskStackBuilder;

    check-cast v1, Lo/VintfObject;

    .line 203
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public static final synthetic c(Lo/Do;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/Do;->a(I)V

    return-void
.end method

.method public static final synthetic c(Lo/Do;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/Do;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic c(Lo/Do;Ljava/util/List;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/Do;->e(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic c(Lo/Do;Lo/Bc;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/Do;->c(Lo/Bc;)V

    return-void
.end method

.method public static final synthetic c(Lo/Do;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lo/Do;->c:Z

    return-void
.end method

.method private final d(I)I
    .locals 5

    .line 392
    iget-object v0, p0, Lo/Do;->d:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 393
    iget-object v3, p0, Lo/Do;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "currSeasonsList[i]"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lo/Ba;

    invoke-interface {v3}, Lo/Ba;->X()I

    move-result v3

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :cond_1
    iget-object p1, p0, Lo/Do;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static final synthetic d(Lo/Do;)I
    .locals 0

    .line 57
    iget p0, p0, Lo/Do;->h:I

    return p0
.end method

.method public static final synthetic d(Lo/Do;I)I
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/Do;->d(I)I

    move-result p0

    return p0
.end method

.method private final d(Landroid/view/ViewGroup;)V
    .locals 3

    .line 638
    invoke-virtual {p0}, Lo/Do;->b()V

    .line 640
    iget-object v0, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    new-instance v1, Lo/PS;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/PS;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lo/Do;->n:Lo/PS;

    .line 643
    iget-object p1, p0, Lo/Do;->n:Lo/PS;

    check-cast p1, Lo/nV;

    invoke-interface {v0, p1}, Lo/nS;->e(Lo/nV;)V

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lo/Do;)Lo/UpdateEngine;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->s:Lo/UpdateEngine;

    return-object p0
.end method

.method private final e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 623
    iget-object p1, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 624
    const-class v0, Lo/ApduList;

    .line 625
    new-instance v1, Lo/ApduList$Application;

    iget v2, p0, Lo/Do;->l:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lo/ApduList$Application;-><init>(Z)V

    check-cast v1, Lo/VintfObject;

    .line 623
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 627
    iget-object p1, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 628
    const-class v0, Lo/DC;

    .line 629
    new-instance v1, Lo/DC$PendingIntent;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/VintfObject;

    .line 627
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 631
    iget-object p1, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 632
    const-class v0, Lo/FH;

    .line 633
    sget-object v1, Lo/FH$TaskDescription;->d:Lo/FH$TaskDescription;

    check-cast v1, Lo/VintfObject;

    .line 631
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private final e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Ba;",
            ">;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 284
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lo/Do;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v1, p0, Lo/Do;->d:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 290
    iget-object v1, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 291
    const-class v2, Lo/DC;

    .line 292
    new-instance v3, Lo/DC$PendingIntent;

    invoke-direct {v3, p1}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    check-cast v3, Lo/VintfObject;

    .line 290
    invoke-virtual {v1, v2, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 295
    iget-object p1, p0, Lo/Do;->q:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    new-instance p1, Lo/Do$Fragment;

    invoke-direct {p1, p0}, Lo/Do$Fragment;-><init>(Lo/Do;)V

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0}, Lo/Do;->j()V

    :goto_0
    return-void
.end method

.method public static final synthetic e(Lo/Do;I)V
    .locals 0

    .line 57
    iput p1, p0, Lo/Do;->i:I

    return-void
.end method

.method public static final synthetic e(Lo/Do;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lo/Do;->m:Z

    return-void
.end method

.method private final e(Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    const-string v0, "netflixActivity.serviceManager"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-object p1, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lo/Do;->c:Z

    .line 217
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 219
    iget-object v1, p0, Lo/Do;->o:Lo/FI;

    iget-object v3, p0, Lo/Do;->y:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v5, p0, Lo/Do;->q:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lo/FI;->d(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lo/Do;->w:Lio/reactivex/Observable;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 222
    new-instance v0, Lo/Do$StateListAnimator;

    invoke-direct {v0, p0}, Lo/Do$StateListAnimator;-><init>(Lo/Do;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 276
    sget-object v1, Lo/Do$TaskDescription;->b:Lo/Do$TaskDescription;

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 221
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic f(Lo/Do;)Lo/FI;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->o:Lo/FI;

    return-object p0
.end method

.method private final f()V
    .locals 4

    .line 614
    iget-object v0, p0, Lo/Do;->s:Lo/UpdateEngine;

    const-class v1, Lo/ApduList;

    new-instance v2, Lo/ApduList$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/ApduList$TaskDescription;-><init>(Z)V

    check-cast v2, Lo/VintfObject;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 615
    iget-object v0, p0, Lo/Do;->s:Lo/UpdateEngine;

    .line 616
    const-class v1, Lo/DC;

    .line 617
    new-instance v2, Lo/DC$PendingIntent;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    check-cast v2, Lo/VintfObject;

    .line 615
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public static final synthetic g(Lo/Do;)Lio/reactivex/Observable;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->w:Lio/reactivex/Observable;

    return-object p0
.end method

.method private final g()V
    .locals 2

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Lo/Do;->c:Z

    .line 469
    iput-boolean v0, p0, Lo/Do;->m:Z

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 470
    iput-wide v0, p0, Lo/Do;->g:J

    const/4 v0, 0x0

    .line 471
    iput v0, p0, Lo/Do;->i:I

    .line 473
    invoke-direct {p0}, Lo/Do;->h()V

    return-void
.end method

.method private final h()V
    .locals 9

    .line 477
    iget-object v0, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    const-string v1, "netflixActivity.serviceManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lo/Do;->b:Lo/Ba;

    if-eqz v1, :cond_5

    .line 483
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lo/Do;->g:J

    .line 484
    iget v2, p0, Lo/Do;->i:I

    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 485
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lo/Do;->m:Z

    return-void

    .line 491
    :cond_1
    iget v2, p0, Lo/Do;->i:I

    add-int/lit8 v2, v2, 0x28

    add-int/lit8 v2, v2, -0x1

    .line 492
    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 493
    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    move v8, v2

    .line 496
    invoke-interface {v1}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v2, "seasonDetails.id"

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-static {v4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    invoke-virtual {v0}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    iget-object v2, p0, Lo/Do;->y:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lo/adS;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lo/Ba;)V

    return-void

    .line 507
    :cond_3
    sget-object v1, Lo/gB;->e:Lo/gB$Application;

    invoke-virtual {v1}, Lo/gB$Application;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    iget-object v3, p0, Lo/Do;->o:Lo/FI;

    .line 510
    iget-wide v5, p0, Lo/Do;->g:J

    .line 511
    iget v7, p0, Lo/Do;->i:I

    .line 508
    invoke-virtual/range {v3 .. v8}, Lo/FI;->e(Ljava/lang/String;JII)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    .line 515
    :cond_4
    iget-object v1, p0, Lo/Do;->o:Lo/FI;

    .line 518
    iget-wide v5, p0, Lo/Do;->g:J

    .line 519
    iget v7, p0, Lo/Do;->i:I

    move-object v2, v0

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move v7, v8

    .line 515
    invoke-virtual/range {v1 .. v7}, Lo/FI;->b(Lo/Am;Ljava/lang/String;JII)Lio/reactivex/Observable;

    move-result-object v1

    .line 524
    :goto_0
    iget-object v2, p0, Lo/Do;->w:Lio/reactivex/Observable;

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 525
    new-instance v2, Lo/Do$Activity;

    invoke-direct {v2, p0, v0}, Lo/Do$Activity;-><init>(Lo/Do;Lo/Am;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_5
    return-void
.end method

.method public static final synthetic h(Lo/Do;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/Do;->j()V

    return-void
.end method

.method public static final synthetic i(Lo/Do;)Ljava/lang/Integer;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method private final i()V
    .locals 7

    .line 380
    iget v0, p0, Lo/Do;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lo/Do;->a:Lo/Bb;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lo/Do;->d:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 382
    iget-object v4, p0, Lo/Do;->a:Lo/Bb;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lo/Bb;->aA()I

    move-result v4

    iget-object v5, p0, Lo/Do;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "currSeasonsList[i]"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lo/Ba;

    invoke-interface {v5}, Lo/Ba;->X()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 383
    iput v3, p0, Lo/Do;->h:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lo/Do;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    iput v1, p0, Lo/Do;->h:I

    :cond_3
    return-void
.end method

.method public static final synthetic j(Lo/Do;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->q:Ljava/lang/String;

    return-object p0
.end method

.method private final j()V
    .locals 1

    .line 367
    invoke-direct {p0}, Lo/Do;->i()V

    .line 369
    iget v0, p0, Lo/Do;->h:I

    if-gez v0, :cond_0

    .line 370
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 374
    :cond_0
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 376
    iget v0, p0, Lo/Do;->h:I

    invoke-direct {p0, v0}, Lo/Do;->a(I)V

    return-void
.end method

.method public static final synthetic k(Lo/Do;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lo/Do;->m:Z

    return p0
.end method

.method public static final synthetic l(Lo/Do;)I
    .locals 0

    .line 57
    iget p0, p0, Lo/Do;->i:I

    return p0
.end method

.method public static final synthetic m(Lo/Do;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lo/Do;->x:J

    return-wide v0
.end method

.method public static final synthetic n(Lo/Do;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lo/Do;->g:J

    return-wide v0
.end method

.method public static final synthetic o(Lo/Do;)Ljava/lang/Integer;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/Do;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic s(Lo/Do;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/Do;->h()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 649
    iget-object v0, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v1, p0, Lo/Do;->n:Lo/PS;

    if-eqz v1, :cond_0

    .line 651
    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    const/4 v0, 0x0

    .line 652
    check-cast v0, Lo/PS;

    iput-object v0, p0, Lo/Do;->n:Lo/PS;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 428
    iget-boolean v0, p0, Lo/Do;->e:Z

    if-eqz v0, :cond_5

    .line 429
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 430
    iget-object v0, p0, Lo/Do;->t:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    const-string v1, "netflixActivity.serviceManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lo/Do;->b:Lo/Ba;

    if-nez v1, :cond_1

    .line 437
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 441
    invoke-interface {v1}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 446
    :goto_0
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 447
    invoke-virtual {v0}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    iget-object v1, p0, Lo/Do;->y:Ljava/lang/String;

    iget-object v2, p0, Lo/Do;->b:Lo/Ba;

    invoke-static {v0, v1, v2}, Lo/adS;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lo/Ba;)V

    return-void

    .line 451
    :cond_3
    invoke-virtual {v0}, Lo/Am;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 458
    :cond_4
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {v0, v1, v2}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    :cond_5
    return-void
.end method

.method public d()V
    .locals 0

    .line 657
    invoke-direct {p0}, Lo/Do;->f()V

    .line 658
    invoke-virtual {p0}, Lo/Do;->e()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 666
    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 667
    invoke-direct {p0}, Lo/Do;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Do;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
