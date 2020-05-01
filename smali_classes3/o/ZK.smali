.class public final Lo/ZK;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZK$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/ZR;",
        "Lo/ZR;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/ZK$StateListAnimator;


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;

.field private e:Lo/ZU;

.field private f:I

.field private final g:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

.field private final h:Lo/ZS;

.field private final i:Ljava/lang/String;

.field private final j:Lio/reactivex/Observable;
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

    new-instance v0, Lo/ZK$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZK$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZK;->d:Lo/ZK$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;Lo/ZS;Lio/reactivex/Observable;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/ZR;",
            ">;",
            "Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;",
            "Lo/ZS;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiRepo"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 26
    move-object v1, p2

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 24
    invoke-direct {p0, p1, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p2, p0, Lo/ZK;->g:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    iput-object p3, p0, Lo/ZK;->h:Lo/ZS;

    iput-object p4, p0, Lo/ZK;->j:Lio/reactivex/Observable;

    iput-object p5, p0, Lo/ZK;->i:Ljava/lang/String;

    const-string p2, ""

    .line 33
    iput-object p2, p0, Lo/ZK;->c:Ljava/lang/String;

    .line 165
    iget-object p2, p0, Lo/ZK;->g:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->v()V

    .line 168
    new-instance p2, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;-><init>(Lo/ZK;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    .line 167
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/ZK;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lo/ZK;->a:J

    return-wide v0
.end method

.method private final a(Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    move-object v6, p0

    .line 49
    iget-object v7, v6, Lo/ZK;->h:Lo/ZS;

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p8

    invoke-virtual/range {v7 .. v14}, Lo/ZS;->d(Ljava/lang/String;JIIILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 50
    iget-object v1, v6, Lo/ZK;->j:Lio/reactivex/Observable;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v7

    const-string v0, "uiRepo.fetchSearchResult\u2026eUntil(destroyObservable)"

    invoke-static {v7, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v8, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;-><init>(Lo/ZK;Lo/ZU;ILjava/lang/String;I)V

    move-object v0, v8

    check-cast v0, Lo/alA;

    .line 157
    new-instance v1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$2;-><init>(Lo/ZK;)V

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 p1, v7

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v0

    move/from16 p5, v3

    move-object/from16 p6, v4

    .line 51
    invoke-static/range {p1 .. p6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/ZK;Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p8}, Lo/ZK;->a(Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lo/ZK;)Lo/ZU;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/ZK;->e:Lo/ZU;

    return-object p0
.end method

.method public static final synthetic c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/ZK;->g:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    return-object p0
.end method

.method public static final synthetic c(Lo/ZK;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/ZK;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic d(Lo/ZK;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/ZK;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lo/ZK;Lo/ZU;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/ZK;->e:Lo/ZU;

    return-void
.end method

.method public static final synthetic e(Lo/ZK;)I
    .locals 0

    .line 18
    iget p0, p0, Lo/ZK;->f:I

    return p0
.end method

.method public static final synthetic e(Lo/ZK;I)V
    .locals 0

    .line 18
    iput p1, p0, Lo/ZK;->f:I

    return-void
.end method

.method public static final synthetic f(Lo/ZK;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/ZK;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final b(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lo/ZK;->a:J

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lo/ZK;->b:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lo/ZK;->b:Z

    return v0
.end method
