.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;
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
        "Lo/UU;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/VG;


# direct methods
.method public constructor <init>(Lo/VG;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;->a:Lo/VG;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UU;)V
    .locals 1

    .line 54
    instance-of v0, p1, Lo/UW$AssistContent;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;->a:Lo/VG;

    invoke-static {v0}, Lo/VG;->a(Lo/VG;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    check-cast p1, Lo/UW$AssistContent;

    invoke-virtual {p1}, Lo/UW$AssistContent;->a()I

    move-result p1

    if-lez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;->a:Lo/VG;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/VG;->a(Lo/VG;Z)V

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;->a:Lo/VG;

    invoke-static {p1}, Lo/VG;->c(Lo/VG;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;->a:Lo/VG;

    invoke-static {p1}, Lo/VG;->e(Lo/VG;)V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerLayoutTransitionPresenter$2;->c(Lo/UU;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
