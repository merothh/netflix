.class public final Lo/FN;
.super Lo/Eo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FN$Application;
    }
.end annotation


# static fields
.field public static final u:Lo/FN$Application;


# instance fields
.field private final A:Lo/aka;

.field private B:Z

.field private final C:Lo/FN$Fragment;

.field private D:Lo/DI;

.field private E:Ljava/util/HashMap;

.field private final H:Lo/FN$TaskDescription;

.field private final v:Lo/FL;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/FN$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FN$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/FN;->u:Lo/FN$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lo/Eo;-><init>()V

    .line 101
    new-instance v0, Lo/FL;

    iget-object v1, p0, Lo/FN;->k:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/FL;-><init>(Lio/reactivex/Observable;)V

    iput-object v0, p0, Lo/FN;->v:Lo/FL;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$primaryDetailsContainer$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$primaryDetailsContainer$2;-><init>(Lo/FN;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/FN;->A:Lo/aka;

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lo/FN;->B:Z

    .line 1027
    new-instance v0, Lo/FN$Fragment;

    invoke-direct {v0, p0}, Lo/FN$Fragment;-><init>(Lo/FN;)V

    iput-object v0, p0, Lo/FN;->C:Lo/FN$Fragment;

    .line 1035
    new-instance v0, Lo/FN$TaskDescription;

    invoke-direct {v0, p0}, Lo/FN$TaskDescription;-><init>(Lo/FN;)V

    iput-object v0, p0, Lo/FN;->H:Lo/FN$TaskDescription;

    return-void
.end method

.method public static final synthetic a(Lo/FN;)Lo/UpdateEngine;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/FN;->k:Lo/UpdateEngine;

    return-object p0
.end method

.method private final a(Lio/reactivex/Observable;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;Z)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "detailsDataObservable\n  \u2026y.getDestroyObservable())"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance p1, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;-><init>(Lo/FN;Z)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    .line 585
    sget-object p1, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$2;->e:Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$2;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 196
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/FN;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lo/FN;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic a(Lo/FN;Lo/Bc;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lo/FN;->b(Lo/Bc;)V

    return-void
.end method

.method public static final synthetic a(Lo/FN;Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lo/FN;->z:Z

    return-void
.end method

.method private final a(Z)V
    .locals 1

    .line 602
    iget-object v0, p0, Lo/FN;->x:Lo/Oc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/Oc;->d(Z)V

    :cond_0
    return-void
.end method

.method private final ab()Lo/MenuInflater;
    .locals 1

    iget-object v0, p0, Lo/FN;->A:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    return-object v0
.end method

.method public static final synthetic b(Lo/FN;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/FN;->n:Ljava/lang/String;

    return-object p0
.end method

.method private final b(Lo/Bc;Z)V
    .locals 8

    .line 989
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 990
    new-instance v7, Lo/DC$ContextWrapper;

    .line 991
    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result v2

    .line 992
    invoke-interface {p1}, Lo/Bc;->getUserThumbRating()I

    move-result v3

    .line 993
    invoke-interface {p1}, Lo/Bc;->getMatchPercentage()I

    move-result v4

    .line 994
    invoke-interface {p1}, Lo/Bc;->isNewForPvr()Z

    move-result v5

    move-object v1, v7

    move v6, p2

    .line 990
    invoke-direct/range {v1 .. v6}, Lo/DC$ContextWrapper;-><init>(ZIIZZ)V

    check-cast v7, Lo/VintfObject;

    .line 1168
    const-class p1, Lo/DC;

    invoke-virtual {v0, p1, v7}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public static final synthetic b(Lo/FN;Ljava/util/List;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lo/FN;->e(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lo/FN;Lo/Bc;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/FN;->m(Lo/Bc;)V

    return-void
.end method

.method public static final synthetic b(Lo/FN;Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lo/FN;->b:Z

    return-void
.end method

.method public static final synthetic c(Lo/FN;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/FN;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lo/FN;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lo/FN;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic c(Lo/FN;Lio/reactivex/Observable;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lo/FN;->a(Lio/reactivex/Observable;Z)V

    return-void
.end method

.method public static synthetic c(Lo/FN;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;IILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    .line 905
    check-cast p4, Ljava/lang/String;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, -0x1

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 906
    invoke-direct/range {v0 .. v5}, Lo/FN;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c(Lo/FN;Lo/Bc;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/FN;->l(Lo/Bc;)V

    return-void
.end method

.method public static final synthetic c(Lo/FN;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/FN;->c(Z)V

    return-void
.end method

.method private final c(Z)V
    .locals 1

    .line 1096
    iget-boolean v0, p0, Lo/FN;->B:Z

    .line 1097
    iput-boolean p1, p0, Lo/FN;->B:Z

    .line 1101
    sget-object p1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {p1}, Lo/eG$Application;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lo/FN;->B:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo/FN;->z()Lo/Bc;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lo/FN;->E()Lo/Bb;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1107
    invoke-virtual {p0}, Lo/FN;->E()Lo/Bb;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "it"

    .line 1108
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/FN;->d(Lo/Bb;)V

    :cond_1
    return-void
.end method

.method public static final synthetic d(Lo/FN;)Lo/FL;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/FN;->v:Lo/FL;

    return-object p0
.end method

.method private final d(Lo/Bb;)V
    .locals 9

    .line 922
    invoke-interface {p1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 923
    iget-object v0, p0, Lo/FN;->v:Lo/FL;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 924
    invoke-static/range {v0 .. v8}, Lo/FI;->a(Lo/FI;Ljava/lang/String;ZZZZZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 925
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "detailsPageRepositoryAb1\u2026y.getDestroyObservable())"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 927
    new-instance p1, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$sendUpdateDownloadButtonForCurrentEpisode$$inlined$let$lambda$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$sendUpdateDownloadButtonForCurrentEpisode$$inlined$let$lambda$1;-><init>(Lo/FN;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 926
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/FN;Lo/Bb;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/FN;->d(Lo/Bb;)V

    return-void
.end method

.method public static final synthetic d(Lo/FN;Lo/Bc;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lo/FN;->e(Lo/Bc;)V

    return-void
.end method

.method public static final synthetic e(Lo/FN;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/FN;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0
.end method

.method private final e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;I)V
    .locals 9

    .line 908
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 909
    new-instance v8, Lo/DC$TaskStackBuilder;

    .line 913
    invoke-virtual {p0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lo/RL;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v5

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    .line 909
    invoke-direct/range {v1 .. v7}, Lo/DC$TaskStackBuilder;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZZLjava/lang/String;I)V

    check-cast v8, Lo/VintfObject;

    .line 1162
    const-class p1, Lo/DC;

    invoke-virtual {v0, p1, v8}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public static final synthetic e(Lo/FN;IZ)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Lo/FN;->e(IZ)V

    return-void
.end method

.method public static final synthetic e(Lo/FN;Landroid/os/Parcelable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/FN;->i:Landroid/os/Parcelable;

    return-void
.end method

.method public static final synthetic e(Lo/FN;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;I)V
    .locals 0

    .line 75
    invoke-direct/range {p0 .. p5}, Lo/FN;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;I)V

    return-void
.end method

.method public static final synthetic e(Lo/FN;Ljava/util/List;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lo/FN;->d(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic e(Lo/FN;Lo/Bc;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lo/FN;->c(Lo/Bc;)V

    return-void
.end method

.method public static final synthetic e(Lo/FN;Lo/Bc;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lo/FN;->b(Lo/Bc;Z)V

    return-void
.end method

.method public static final synthetic e(Lo/FN;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/FN;->a(Z)V

    return-void
.end method

.method public static final synthetic f(Lo/FN;)Landroid/os/Parcelable;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/FN;->i:Landroid/os/Parcelable;

    return-object p0
.end method

.method public static final synthetic g(Lo/FN;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lo/FN;->T()V

    return-void
.end method

.method public static final synthetic h(Lo/FN;)Lo/DD;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lo/FN;->U()Lo/DD;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lo/FN;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lo/FN;->W()V

    return-void
.end method

.method public static final synthetic j(Lo/FN;)I
    .locals 0

    .line 75
    iget p0, p0, Lo/FN;->j:I

    return p0
.end method

.method public static final synthetic l(Lo/FN;)Lo/Oc;
    .locals 0

    .line 75
    iget-object p0, p0, Lo/FN;->x:Lo/Oc;

    return-object p0
.end method

.method private final l(Lo/Bc;)V
    .locals 7

    .line 1124
    invoke-virtual {p0}, Lo/FN;->V()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1125
    :goto_0
    invoke-virtual {p0}, Lo/FN;->V()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, -0x122

    .line 1129
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "requestId"

    .line 1131
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "trackId"

    .line 1132
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "row"

    .line 1133
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "rank"

    .line 1134
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "videoId"

    .line 1135
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "imageKey"

    .line 1136
    invoke-interface {p1}, Lo/Bc;->getBoxartId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1138
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 1139
    sget-object v1, Lo/amj;->c:Lo/amj;

    .line 1140
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1142
    sget-object v5, Lo/FN;->u:Lo/FN$Application;

    invoke-virtual {v5}, Lo/FN$Application;->getLogTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x1

    .line 1143
    iget-object v6, p0, Lo/FN;->h:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 1139
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s: Invalid videoId %s"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    check-cast p1, Ljava/lang/Throwable;

    .line 1138
    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1148
    :goto_2
    sget-object p1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {p1}, Lo/eG$Application;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1149
    sget-object p1, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    goto :goto_3

    .line 1151
    :cond_2
    sget-object p1, Lcom/netflix/cl/model/AppView;->storyArt:Lcom/netflix/cl/model/AppView;

    .line 1153
    :goto_3
    invoke-static {v2}, Lo/acG;->d(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, p1, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    return-void
.end method

.method public static final synthetic m(Lo/FN;)Lo/Bc;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lo/FN;->z()Lo/Bc;

    move-result-object p0

    return-object p0
.end method

.method private final m(Lo/Bc;)V
    .locals 5

    .line 592
    invoke-virtual {p0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 594
    new-instance v1, Lo/DC$PictureInPictureParams;

    .line 595
    sget-object v2, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {p0}, Lo/FN;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    const-string v4, "requireNetflixActivity()"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lo/DJ;->c(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object p1

    .line 594
    invoke-direct {v1, p1}, Lo/DC$PictureInPictureParams;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/VintfObject;

    .line 1157
    const-class p1, Lo/DC;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected F()Landroid/view/ViewTreeObserver;
    .locals 2

    .line 865
    invoke-direct {p0}, Lo/FN;->ab()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    const-string v1, "primaryDetailsContainer.viewTreeObserver"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected I()V
    .locals 2

    .line 843
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lo/FN;->r:Lo/FO;

    invoke-virtual {v0}, Lo/FO;->w()Lio/reactivex/Observable;

    move-result-object v0

    .line 846
    sget-object v1, Lo/FN$ActionBar;->d:Lo/FN$ActionBar;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lo/FN;->k:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 848
    new-instance v1, Lo/FN$LoaderManager;

    invoke-direct {v1, p0}, Lo/FN$LoaderManager;-><init>(Lo/FN;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 856
    :cond_0
    invoke-super {p0}, Lo/Eo;->I()V

    :goto_0
    return-void
.end method

.method protected J()V
    .locals 3

    .line 884
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 885
    sget-object v1, Lo/DC$LoaderManager;->e:Lo/DC$LoaderManager;

    check-cast v1, Lo/VintfObject;

    .line 1160
    const-class v2, Lo/DC;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method protected K()Landroid/view/View;
    .locals 1

    .line 880
    iget-object v0, p0, Lo/FN;->D:Lo/DI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DI;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected L()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 2

    .line 971
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {p0}, Lo/FN;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->va:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected M()V
    .locals 0

    return-void
.end method

.method protected N()V
    .locals 0

    return-void
.end method

.method protected O()V
    .locals 0

    return-void
.end method

.method protected P()V
    .locals 0

    return-void
.end method

.method protected Q()Landroid/view/ViewGroup;
    .locals 1

    .line 1014
    iget-object v0, p0, Lo/FN;->D:Lo/DI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DI;->d()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected R()Z
    .locals 1

    .line 1057
    iget-boolean v0, p0, Lo/FN;->z:Z

    return v0
.end method

.method protected S()V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {p0}, Lo/FN;->B()V

    .line 1086
    invoke-virtual {p0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1087
    new-instance v1, Lo/PV;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/PV;-><init>(Landroid/view/ViewGroup;Z)V

    check-cast v1, Lo/PS;

    iput-object v1, p0, Lo/FN;->s:Lo/PS;

    .line 1088
    iget-object p1, p0, Lo/FN;->s:Lo/PS;

    check-cast p1, Lo/nV;

    invoke-interface {v0, p1}, Lo/nS;->e(Lo/nV;)V

    .line 1089
    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_0

    .line 1091
    :cond_0
    invoke-super {p0, p1}, Lo/Eo;->a(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    const-string v0, "onGlobalLayoutListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    invoke-direct {p0}, Lo/FN;->ab()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected a(Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object p1, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 1072
    sget-object v0, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    check-cast v0, Lo/VintfObject;

    .line 1172
    const-class v1, Lo/ApduList;

    invoke-virtual {p1, v1, v0}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1074
    iget-object p1, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    new-instance v1, Lo/FH$FragmentManager;

    invoke-direct {v1, v0, p2}, Lo/FH$FragmentManager;-><init>(Ljava/util/List;I)V

    check-cast v1, Lo/VintfObject;

    .line 1174
    const-class p2, Lo/FH;

    invoke-virtual {p1, p2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 1078
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Eo;->a(Lcom/netflix/mediaclient/android/app/Status;I)V

    :goto_0
    return-void
.end method

.method protected a(Lo/Bc;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 891
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 892
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v0, "it.id"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    const-string v0, "it.type"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    const-string v0, "it.playable"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/AK;->e()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lo/FN;->c(Lo/FN;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p0}, Lo/FN;->E()Lo/Bb;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "sd"

    .line 895
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/FN;->d(Lo/Bb;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ac()V
    .locals 1

    iget-object v0, p0, Lo/FN;->E:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public ae_()V
    .locals 2

    .line 1116
    iget-object v0, p0, Lo/FN;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1118
    invoke-super {p0}, Lo/Eo;->ae_()V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1018
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 1019
    new-instance v1, Lo/DC$SharedElementCallback;

    invoke-direct {v1, p1}, Lo/DC$SharedElementCallback;-><init>(I)V

    check-cast v1, Lo/VintfObject;

    .line 1170
    const-class p1, Lo/DC;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lo/FN;->ab()Lo/MenuInflater;

    move-result-object p1

    .line 614
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 1159
    const-class v1, Lo/DC;

    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lo/FN;->k:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 616
    iget-object v2, p0, Lo/FN;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string v3, "videoType"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    new-instance v3, Lo/DI;

    invoke-direct {v3, p1, v0, v1, v2}, Lo/DI;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    iput-object v3, p0, Lo/FN;->D:Lo/DI;

    .line 623
    iget-object p1, p0, Lo/FN;->D:Lo/DI;

    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p1}, Lo/DI;->e()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 622
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 623
    new-instance v0, Lo/FN$Activity;

    invoke-direct {v0, p0}, Lo/FN$Activity;-><init>(Lo/FN;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lo/FN;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lo/Eo;->d(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected d(Z)V
    .locals 0

    return-void
.end method

.method protected d(ZZ)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lo/FN$StateListAnimator;

    invoke-direct {v1, p0, p1, p2}, Lo/FN$StateListAnimator;-><init>(Lo/FN;ZZ)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method protected e(ZZ)Landroid/view/View;
    .locals 0

    .line 876
    invoke-direct {p0}, Lo/FN;->ab()Lo/MenuInflater;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected e(I)V
    .locals 1

    .line 835
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(I)V

    goto :goto_0

    .line 838
    :cond_0
    invoke-super {p0, p1}, Lo/Eo;->e(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 3

    const-string v0, "actionBarBuilder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p0}, Lo/FN;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 826
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    sget v2, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->g:I

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/Serializable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 827
    :goto_0
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    goto :goto_1

    .line 830
    :cond_1
    invoke-super {p0, p1}, Lo/Eo;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1063
    invoke-super {p0, p1}, Lo/Eo;->e(Z)V

    :cond_0
    return-void
.end method

.method protected f(Lo/Bc;)V
    .locals 1

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected g(Lo/Bc;)V
    .locals 1

    const-string v0, "movieDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected h(Lo/Bc;)V
    .locals 1

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public i(Lo/Bc;)V
    .locals 2

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 980
    sget-object v1, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {v1, p1}, Lo/DJ;->c(Lo/Bc;)Lo/DC$DialogInterface;

    move-result-object p1

    check-cast p1, Lo/VintfObject;

    .line 1166
    const-class v1, Lo/DC;

    invoke-virtual {v0, v1, p1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public j(Lo/Bc;)V
    .locals 4

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lo/FN;->k:Lo/UpdateEngine;

    .line 948
    new-instance v1, Lo/DC$ComponentCallbacks;

    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    const-string v3, "videoDetails.type"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Bc;->aU()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lo/DC$ComponentCallbacks;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    check-cast v1, Lo/VintfObject;

    .line 1164
    const-class p1, Lo/DC;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public k(Lo/Bc;)V
    .locals 1

    const-string v0, "details"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 985
    invoke-direct {p0, p1, v0}, Lo/FN;->b(Lo/Bc;Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 145
    invoke-super {p0}, Lo/Eo;->onDestroyView()V

    .line 147
    invoke-virtual {p0}, Lo/FN;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lo/FN;->H:Lo/FN$TaskDescription;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lo/FN;->C:Lo/FN$Fragment;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lo/FN;->ac()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1, p2}, Lo/Eo;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lo/FN;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    .line 133
    iget-object v0, p0, Lo/FN;->H:Lo/FN$TaskDescription;

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2, v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lo/FN;->C:Lo/FN$Fragment;

    check-cast p2, Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, p2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected x()V
    .locals 0

    return-void
.end method
