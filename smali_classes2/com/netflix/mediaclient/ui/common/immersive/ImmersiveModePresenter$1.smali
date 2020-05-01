.class public final Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModePresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dm;-><init>(Lo/Dq;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Dr;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Dm;


# direct methods
.method public constructor <init>(Lo/Dm;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModePresenter$1;->d:Lo/Dm;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/Dr;)V
    .locals 4

    .line 27
    instance-of v0, p1, Lo/Dr$ActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lo/Dr$ActionBar;

    invoke-virtual {p1}, Lo/Dr$ActionBar;->e()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModePresenter$1;->d:Lo/Dm;

    invoke-virtual {p1}, Lo/Dr$ActionBar;->c()Landroid/view/Window;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lo/Dm;->b(Lo/Dm;Landroid/view/Window;ZILjava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lo/Dr$StateListAnimator;

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModePresenter$1;->d:Lo/Dm;

    .line 34
    check-cast p1, Lo/Dr$StateListAnimator;

    invoke-virtual {p1}, Lo/Dr$StateListAnimator;->a()Landroid/view/Window;

    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lo/Dr$StateListAnimator;->e()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 33
    :cond_1
    invoke-static {v0, v3, v1}, Lo/Dm;->a(Lo/Dm;Landroid/view/Window;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lo/Dr;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/immersive/ImmersiveModePresenter$1;->c(Lo/Dr;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
