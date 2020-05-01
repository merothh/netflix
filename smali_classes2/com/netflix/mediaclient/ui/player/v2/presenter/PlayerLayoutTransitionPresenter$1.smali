.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VG;-><init>(Landroid/view/ViewGroup;Ljava/util/List;Lio/reactivex/Observable;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
.field final synthetic e:Lo/VG;


# direct methods
.method public constructor <init>(Lo/VG;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->e:Lo/VG;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p1, Lo/UP$CursorFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 34
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->e:Lo/VG;

    invoke-static {p1}, Lo/VG;->c(Lo/VG;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->e:Lo/VG;

    invoke-static {p1}, Lo/VG;->a(Lo/VG;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->e:Lo/VG;

    invoke-static {p1}, Lo/VG;->e(Lo/VG;)V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->e:Lo/VG;

    invoke-static {p1, v1}, Lo/VG;->d(Lo/VG;Z)V

    goto :goto_0

    .line 41
    :cond_1
    instance-of p1, p1, Lo/UP$Application;

    if-eqz p1, :cond_2

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->e:Lo/VG;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/VG;->d(Lo/VG;Z)V

    .line 43
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->e:Lo/VG;

    invoke-static {p1, v1}, Lo/VG;->a(Lo/VG;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$1;->a(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
