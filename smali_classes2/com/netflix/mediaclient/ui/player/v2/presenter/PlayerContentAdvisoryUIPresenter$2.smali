.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VE;-><init>(Lo/Wu;Lio/reactivex/Observable;Lo/UserManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/VE;


# direct methods
.method public constructor <init>(Lo/VE;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;->a:Lo/VE;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UP;)V
    .locals 2

    .line 54
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_1

    .line 55
    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->a()Lo/Tv;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "AdvisoryUIPresenter"

    const-string v1, "Fetching advisories..."

    .line 56
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;->a:Lo/VE;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/VE;->d(Lo/VE;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;->a:Lo/VE;

    invoke-virtual {v0}, Lo/VE;->c()V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;->a:Lo/VE;

    invoke-static {v0}, Lo/VE;->d(Lo/VE;)Lo/UserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/Wm;

    invoke-virtual {v0, p1}, Lo/Wm;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.repository.ContentAdvisoryRepository"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerContentAdvisoryUIPresenter$2;->c(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
