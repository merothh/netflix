.class public abstract Lo/HV;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HV$StateListAnimator;,
        Lo/HV$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HV$StateListAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lo/HV$ActionBar;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

.field private i:Ljava/lang/Integer;

.field public j:Lo/GK;

.field private k:Lo/HY;

.field private final l:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Lo/GY;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/HV$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HV$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/HV;->h:Lo/HV$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lo/GR;-><init>()V

    .line 33
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    iput-object v0, p0, Lo/HV;->g:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$onExtraStateEvent$1;-><init>(Lo/HV;)V

    check-cast v0, Lo/alA;

    iput-object v0, p0, Lo/HV;->l:Lo/alA;

    return-void
.end method

.method public static final synthetic b(Lo/HV;)Lo/alA;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/HV;->l:Lo/alA;

    return-object p0
.end method

.method public static final synthetic b(Lo/HV;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/HV;->o:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/HV;)Lo/HY;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/HV;->k:Lo/HY;

    return-object p0
.end method

.method private final c(Lo/HV$StateListAnimator;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HV$StateListAnimator;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lo/HV;->o()Ljava/lang/Integer;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lo/HV;->m()Lo/GW;

    move-result-object v1

    invoke-virtual {v1}, Lo/GW;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lo/HV;->m()Lo/GW;

    move-result-object v2

    invoke-virtual {v2}, Lo/GW;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    .line 115
    new-instance v3, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/models/VideoViewModel$bindVideoViewHolder$1;-><init>(Lo/HV;Lo/HV$StateListAnimator;Ljava/util/List;)V

    check-cast v3, Lo/alO;

    .line 111
    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    if-eqz p1, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "itemPosition/playContext should not be null ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/HV;->o()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/HV;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method static synthetic d(Lo/HV;Lo/HV$StateListAnimator;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 110
    check-cast p2, Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/HV;->c(Lo/HV$StateListAnimator;Ljava/util/List;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: bindVideoViewHolder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic e(Lo/HV;Lo/HY;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/HV;->k:Lo/HY;

    return-void
.end method


# virtual methods
.method public a(Lo/HV$StateListAnimator;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lo/HV$StateListAnimator;->c()V

    return-void
.end method

.method public bridge synthetic a(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->a(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->d(Lo/HV$StateListAnimator;)Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    .line 101
    sget v0, Lo/GS$FragmentManager;->v:I

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->a(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lo/HV;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Lo/HV$StateListAnimator;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lo/HV;->k:Lo/HY;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    move-object v0, v1

    check-cast v0, Lo/HY;

    iput-object v0, p0, Lo/HV;->k:Lo/HY;

    .line 151
    :cond_0
    iget-object v0, p0, Lo/HV;->o:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 154
    check-cast v1, Lio/reactivex/disposables/Disposable;

    iput-object v1, p0, Lo/HV;->o:Lio/reactivex/disposables/Disposable;

    .line 156
    :cond_1
    invoke-virtual {p1}, Lo/HV$StateListAnimator;->a()V

    return-void
.end method

.method public synthetic b(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->c(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->b(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HV;->d(Lo/HV$StateListAnimator;Ljava/util/List;)V

    return-void
.end method

.method public c(Lo/HV$StateListAnimator;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lo/HV$StateListAnimator;->e()V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->e(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;Ljava/util/List;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HV;->d(Lo/HV$StateListAnimator;Ljava/util/List;)V

    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lo/HV;->g:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->e(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/HV$StateListAnimator;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HV$StateListAnimator;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1, p2}, Lo/HV;->c(Lo/HV$StateListAnimator;Ljava/util/List;)V

    return-void
.end method

.method public d(Lo/HV$StateListAnimator;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lo/HV$StateListAnimator;->b()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Lo/TimeUnit;)Z
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->d(Lo/HV$StateListAnimator;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/HV;->i:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->c(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public e(Lo/HV$StateListAnimator;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 137
    invoke-static {p0, p1, v0, v1, v0}, Lo/HV;->d(Lo/HV;Lo/HV$StateListAnimator;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HV;->b(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/HV;->x()Lo/HV$StateListAnimator;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/HV;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/HV;->g:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    return-object v0
.end method

.method public final r()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/HV;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public final u()Lo/GK;
    .locals 2

    .line 40
    iget-object v0, p0, Lo/HV;->j:Lo/GK;

    if-nez v0, :cond_0

    const-string v1, "extrasFeedViewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected x()Lo/HV$StateListAnimator;
    .locals 2

    .line 104
    new-instance v0, Lo/HV$StateListAnimator;

    invoke-virtual {p0}, Lo/HV;->h()Lo/UpdateEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/HV$StateListAnimator;-><init>(Lo/UpdateEngine;)V

    return-object v0
.end method
