.class public final Lo/ZS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZS$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/ZS$Activity;


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final e:Lo/bs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZS$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZS$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZS;->c:Lo/ZS$Activity;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ZS;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 34
    sget-object p1, Lo/bw;->a:Lo/bw$ActionBar;

    invoke-virtual {p1, p2}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object p1

    iput-object p1, p0, Lo/ZS;->e:Lo/bs;

    return-void
.end method

.method private final a()Lo/SyncConstValue;
    .locals 4

    .line 203
    sget-object v0, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {v0}, Lo/eM$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lo/eM;->e:Lo/eM$Application;

    invoke-virtual {v0}, Lo/eM$Application;->a()Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lo/NegationValidator;

    .line 206
    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v3, 0x2

    .line 205
    invoke-direct {v0, v2, v3, v1}, Lo/NegationValidator;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Lo/NegationValidator;

    .line 212
    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v3, 0x1

    .line 211
    invoke-direct {v0, v2, v3, v1}, Lo/NegationValidator;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V

    .line 204
    :goto_0
    check-cast v0, Lo/SyncConstValue;

    goto :goto_1

    .line 218
    :cond_1
    new-instance v0, Lo/TrustAnchor;

    .line 219
    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 218
    invoke-direct {v0, v1}, Lo/TrustAnchor;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    check-cast v0, Lo/SyncConstValue;

    :goto_1
    return-object v0
.end method

.method public static final synthetic c(Lo/ZS;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/ZS;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0
.end method

.method public static final synthetic d(Lo/ZS;I)Lo/SyncConstValue;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/ZS;->e(I)Lo/SyncConstValue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/ZS;)Lo/bs;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/ZS;->e:Lo/bs;

    return-object p0
.end method

.method private final e(I)Lo/SyncConstValue;
    .locals 2

    .line 225
    new-instance v0, Lo/ManifestConfigSource;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-direct {v0, v1, p1}, Lo/ManifestConfigSource;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;I)V

    check-cast v0, Lo/SyncConstValue;

    return-object v0
.end method

.method public static final synthetic e(Lo/ZS;)Lo/SyncConstValue;
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/ZS;->a()Lo/SyncConstValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(ILjava/lang/String;J)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/Observable<",
            "Lo/ZR;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lo/ZS$Application;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lo/ZS$Application;-><init>(Lo/ZS;ILjava/lang/String;J)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026              )\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lo/ZR;",
            ">;"
        }
    .end annotation

    const-string v0, "sectionList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 39
    new-instance v1, Lo/ZS$TaskDescription;

    invoke-direct {v1, p0, p1, v0}, Lo/ZS$TaskDescription;-><init>(Lo/ZS;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create {\n    \u2026}\n            }\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/ZR;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lo/ZS$StateListAnimator;

    invoke-direct {v0, p0}, Lo/ZS$StateListAnimator;-><init>(Lo/ZS;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.create {\n    \u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;JIIILjava/lang/String;)Lio/reactivex/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIII",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/ZR;",
            ">;"
        }
    .end annotation

    const-string v0, "query"

    move-object v3, p1

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {v0}, Lo/fl$ActionBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 135
    iget-object v1, v0, Lo/ZS;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    .line 136
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 134
    invoke-static {v1, v2}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v1

    move v9, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    const/16 v1, 0x32

    const/16 v9, 0x32

    .line 141
    :goto_0
    new-instance v11, Lo/ZS$ActionBar;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lo/ZS$ActionBar;-><init>(Lo/ZS;Ljava/lang/String;JIIIILjava/lang/String;)V

    check-cast v11, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v11}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "Observable.create { subs\u2026              )\n        }"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
