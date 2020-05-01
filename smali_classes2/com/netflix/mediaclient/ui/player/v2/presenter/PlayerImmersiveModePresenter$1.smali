.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VD;-><init>(Lo/Wy;Lio/reactivex/Observable;)V
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
.field final synthetic a:Lo/VD;


# direct methods
.method public constructor <init>(Lo/VD;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->a:Lo/VD;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/UP;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p1, Lo/UP$CursorFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->a:Lo/VD;

    invoke-virtual {p1}, Lo/VD;->c()Z

    move-result p1

    if-nez p1, :cond_4

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->a:Lo/VD;

    invoke-static {p1, v2, v3, v3, v1}, Lo/VD;->d(Lo/VD;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lo/UP$ClipData;->c:Lo/UP$ClipData;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->a:Lo/VD;

    invoke-static {p1, v2, v3, v3, v1}, Lo/VD;->d(Lo/VD;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_1
    instance-of v0, p1, Lo/UP$Canvas;

    if-eqz v0, :cond_2

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->a:Lo/VD;

    invoke-static {p1, v2, v2, v3, v1}, Lo/VD;->d(Lo/VD;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_2
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->a:Lo/VD;

    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->a()Z

    move-result p1

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Lo/VD;->d(Lo/VD;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_3
    instance-of p1, p1, Lo/UP$StateListAnimator;

    if-eqz p1, :cond_4

    .line 48
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->a:Lo/VD;

    invoke-static {p1, v2, v3, v3, v1}, Lo/VD;->d(Lo/VD;ZZILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$1;->b(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
