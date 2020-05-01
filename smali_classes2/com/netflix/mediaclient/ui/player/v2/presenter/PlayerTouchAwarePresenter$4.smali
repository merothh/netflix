.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VW;-><init>(Lo/WI;Lio/reactivex/Observable;)V
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
.field final synthetic c:Lo/VW;


# direct methods
.method public constructor <init>(Lo/VW;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UP;)V
    .locals 1

    .line 56
    sget-object v0, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->l()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->c()V

    goto :goto_1

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->b()V

    goto :goto_1

    .line 63
    :cond_1
    instance-of v0, p1, Lo/UP$SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 64
    check-cast p1, Lo/UP$SQLiteDatabase;

    invoke-virtual {p1}, Lo/UP$SQLiteDatabase;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->b()V

    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->c()V

    goto :goto_1

    .line 70
    :cond_3
    sget-object v0, Lo/UP$TaskStackBuilder;->e:Lo/UP$TaskStackBuilder;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 71
    :cond_4
    instance-of v0, p1, Lo/UP$DialogInterface;

    if-eqz v0, :cond_5

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->n()Lo/WI;

    move-result-object p1

    invoke-interface {p1}, Lo/WI;->m()V

    goto :goto_1

    .line 75
    :cond_5
    sget-object v0, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->j()Z

    move-result p1

    if-nez p1, :cond_6

    .line 78
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c:Lo/VW;

    invoke-virtual {p1}, Lo/VW;->b()V

    :cond_6
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerTouchAwarePresenter$4;->c(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
