.class public final Lo/ZO;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZO$ActionBar;
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
.field public static final a:Lo/ZO$ActionBar;

# The value of this static final field might be set in the static constructor
.field private static final g:Ljava/lang/String; = "PreQuerySearchV3"


# instance fields
.field private final b:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/ZU;

.field private final d:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

.field private final e:Lo/ZS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZO$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZO$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZO;->a:Lo/ZO$ActionBar;

    const-string v0, "PreQuerySearchV3"

    .line 24
    sput-object v0, Lo/ZO;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;Lo/ZS;Lio/reactivex/Observable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/ZR;",
            ">;",
            "Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;",
            "Lo/ZS;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
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

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 21
    move-object v1, p2

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    invoke-direct {p0, p1, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p2, p0, Lo/ZO;->d:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    iput-object p3, p0, Lo/ZO;->e:Lo/ZS;

    iput-object p4, p0, Lo/ZO;->b:Lio/reactivex/Observable;

    const-string p1, ""

    const-wide/16 p2, 0x0

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lo/ZO;->e(Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lo/ZO;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Lo/ZO;)Lo/ZU;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/ZO;->c:Lo/ZU;

    return-object p0
.end method

.method public static final synthetic c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/ZO;->d:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    return-object p0
.end method

.method public static final synthetic e(Lo/ZO;Lo/ZU;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lo/ZO;->c:Lo/ZU;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;J)V
    .locals 6

    const-string p2, "query"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lo/ZO;->d:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->o()V

    .line 77
    iget-object p1, p0, Lo/ZO;->e:Lo/ZS;

    invoke-virtual {p1}, Lo/ZS;->d()Lio/reactivex/Observable;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lo/ZO;->b:Lio/reactivex/Observable;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "uiRepo.fetchPrequeryList\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance p1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;-><init>(Lo/ZO;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 122
    new-instance p1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$2;-><init>(Lo/ZO;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 79
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/SearchSectionSummary;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sections"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lo/ZO;->e:Lo/ZS;

    invoke-virtual {v0, p1}, Lo/ZS;->c(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lo/ZO;->b:Lio/reactivex/Observable;

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "uiRepo.fetchPreQueryVide\u2026eUntil(destroyObservable)"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;-><init>(Lo/ZO;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 32
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
