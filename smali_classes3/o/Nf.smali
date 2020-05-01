.class public abstract Lo/Nf;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Nf$ActionBar;,
        Lo/Nf$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Nf$ActionBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/Nf$Activity;


# instance fields
.field public a:Lo/UpdateEngine;

.field public b:Lo/UE;

.field private final f:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Lo/Nj;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/Nh;

.field private h:Lio/reactivex/disposables/Disposable;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Nf$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Nf$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Nf;->c:Lo/Nf$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerEpoxyModel$onMiniPlayerStateEvent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerEpoxyModel$onMiniPlayerStateEvent$1;-><init>(Lo/Nf;)V

    check-cast v0, Lo/alA;

    iput-object v0, p0, Lo/Nf;->f:Lo/alA;

    return-void
.end method

.method private final c(Lo/Nf$ActionBar;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Nf$ActionBar;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lo/Nf;->g:Lo/Nh;

    if-eqz v0, :cond_3

    .line 102
    iget-object v1, p0, Lo/Nf;->a:Lo/UpdateEngine;

    if-nez v1, :cond_0

    const-string v2, "eventBusFactory"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 194
    :cond_0
    const-class v2, Lo/Nj;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 102
    iget-object v6, p0, Lo/Nf;->f:Lo/alA;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lo/Nf;->h:Lio/reactivex/disposables/Disposable;

    .line 104
    iget-object v1, p0, Lo/Nf;->b:Lo/UE;

    if-nez v1, :cond_1

    const-string v2, "playbablesFeedViewModel"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 103
    :cond_1
    invoke-virtual {p1, v1, v0, p2}, Lo/Nf$ActionBar;->a(Lo/UE;Lo/Nh;Ljava/util/List;)V

    .line 108
    invoke-virtual {p1}, Lo/Nf$ActionBar;->c()Lo/Nl;

    move-result-object p1

    invoke-virtual {p1}, Lo/Nl;->b()Lo/GridView;

    move-result-object p1

    iget-object p2, p0, Lo/Nf;->g:Lo/Nh;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lo/Nh;->u()Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerAspectRatio;->a()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lo/GridView;->setAspectRatio(Ljava/lang/Float;)V

    return-void

    .line 110
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PlaybableViewModel should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method static synthetic c(Lo/Nf;Lo/Nf$ActionBar;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 100
    check-cast p2, Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Nf;->c(Lo/Nf$ActionBar;Ljava/util/List;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: bindVideoViewHolder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lo/Nf$ActionBar;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lo/Nf$ActionBar;->b()V

    return-void
.end method

.method public final a(Lo/Nh;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/Nf;->g:Lo/Nh;

    return-void
.end method

.method public synthetic a(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->d(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->b(Lo/Nf$ActionBar;)Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    .line 91
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cL:I

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->d(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public b(Lo/Nf$ActionBar;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Nf$ActionBar;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1, p2}, Lo/Nf;->c(Lo/Nf$ActionBar;Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->a(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public b(Lo/Nf$ActionBar;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lo/Nf$ActionBar;->d()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->c(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Nf;->b(Lo/Nf$ActionBar;Ljava/util/List;)V

    return-void
.end method

.method public c(Lo/Nf$ActionBar;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lo/Nf;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 128
    check-cast v0, Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lo/Nf;->h:Lio/reactivex/disposables/Disposable;

    .line 130
    :cond_0
    invoke-virtual {p1}, Lo/Nf$ActionBar;->a()V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->e(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;Ljava/util/List;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Nf;->b(Lo/Nf$ActionBar;Ljava/util/List;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->e(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/Nf;->j:Ljava/lang/String;

    return-void
.end method

.method public d(Lo/Nf$ActionBar;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lo/Nf$ActionBar;->e()V

    return-void
.end method

.method public final d(Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lo/Nf;->a:Lo/UpdateEngine;

    return-void
.end method

.method public synthetic d(Lo/TimeUnit;)Z
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->b(Lo/Nf$ActionBar;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->a(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public e(Lo/Nf$ActionBar;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 114
    invoke-static {p0, p1, v0, v1, v0}, Lo/Nf;->c(Lo/Nf;Lo/Nf$ActionBar;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1}, Lo/Nf;->c(Lo/Nf$ActionBar;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/Nf;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lo/UpdateEngine;
    .locals 2

    .line 37
    iget-object v0, p0, Lo/Nf;->a:Lo/UpdateEngine;

    if-nez v0, :cond_0

    const-string v1, "eventBusFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected l()Lo/Nf$ActionBar;
    .locals 3

    .line 94
    new-instance v0, Lo/Nf$ActionBar;

    iget-object v1, p0, Lo/Nf;->a:Lo/UpdateEngine;

    if-nez v1, :cond_0

    const-string v2, "eventBusFactory"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1}, Lo/Nf$ActionBar;-><init>(Lo/UpdateEngine;)V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Nf;->l()Lo/Nf$ActionBar;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()Lo/Nh;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/Nf;->g:Lo/Nh;

    return-object v0
.end method
