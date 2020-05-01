.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VX;-><init>(Lo/WK;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/VX;


# direct methods
.method public constructor <init>(Lo/VX;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b:Lo/VX;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_1

    .line 28
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b:Lo/VX;

    invoke-static {p1}, Lo/VX;->c(Lo/VX;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    if-lez p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b:Lo/VX;

    invoke-static {p1}, Lo/VX;->d(Lo/VX;)Lo/WK;

    move-result-object p1

    invoke-interface {p1}, Lo/WK;->j()V

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b:Lo/VX;

    invoke-static {p1, v0}, Lo/VX;->e(Lo/VX;Z)V

    goto :goto_0

    .line 33
    :cond_1
    instance-of v0, p1, Lo/UP$Application;

    if-eqz v0, :cond_2

    .line 34
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b:Lo/VX;

    invoke-static {p1}, Lo/VX;->d(Lo/VX;)Lo/WK;

    move-result-object p1

    invoke-interface {p1}, Lo/WK;->i()V

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b:Lo/VX;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/VX;->e(Lo/VX;Z)V

    goto :goto_0

    .line 37
    :cond_2
    instance-of p1, p1, Lo/UP$Drawable;

    if-eqz p1, :cond_3

    .line 38
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b:Lo/VX;

    invoke-static {p1}, Lo/VX;->d(Lo/VX;)Lo/WK;

    move-result-object p1

    invoke-interface {p1}, Lo/WK;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerVideoPresenter_Ab12543$1;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
