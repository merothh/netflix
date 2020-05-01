.class public final Lo/ZJ;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZJ$ActionBar;
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
.field public static final d:Lo/ZJ$ActionBar;


# instance fields
.field private final a:Lo/ZS;

.field private b:Lo/ZU;

.field private final c:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZJ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZJ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZJ;->d:Lo/ZJ$ActionBar;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;Lo/ZS;Lio/reactivex/Observable;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/ZR;",
            ">;",
            "Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;",
            "Lo/ZS;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;I",
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

    const-string v0, "entityType"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 23
    move-object v1, p2

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 21
    invoke-direct {p0, p1, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p2, p0, Lo/ZJ;->c:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    iput-object p3, p0, Lo/ZJ;->a:Lo/ZS;

    iput-object p4, p0, Lo/ZJ;->e:Lio/reactivex/Observable;

    iput p5, p0, Lo/ZJ;->j:I

    iput-object p6, p0, Lo/ZJ;->h:Ljava/lang/String;

    .line 107
    iget p1, p0, Lo/ZJ;->j:I

    iget-object p2, p0, Lo/ZJ;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo/ZJ;->c(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/ZJ;->c:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    return-object p0
.end method

.method public static final synthetic d(Lo/ZJ;Lo/ZU;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lo/ZJ;->b:Lo/ZU;

    return-void
.end method

.method public static final synthetic e(Lo/ZJ;)Lo/ZU;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/ZJ;->b:Lo/ZU;

    return-object p0
.end method


# virtual methods
.method public final c(ILjava/lang/String;)V
    .locals 6

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lo/ZJ;->c:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->v()V

    .line 31
    iget-object v0, p0, Lo/ZJ;->a:Lo/ZS;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lo/ZS;->c(ILjava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lo/ZJ;->e:Lio/reactivex/Observable;

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "uiRepo.fetchSearchEntity\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;-><init>(Lo/ZJ;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 99
    new-instance p1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$2;-><init>(Lo/ZJ;)V

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 33
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
