.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$3;
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
.field final synthetic e:Lo/VD;


# direct methods
.method public constructor <init>(Lo/VD;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$3;->e:Lo/VD;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/UP;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 61
    check-cast p1, Lo/UP$Typeface;

    invoke-virtual {p1}, Lo/UP$Typeface;->d()I

    move-result p1

    and-int/lit16 p1, p1, 0x800

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$3;->e:Lo/VD;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lo/VD;->d(Lo/VD;ZZILjava/lang/Object;)V

    :cond_0
    return-void

    .line 61
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.PlayerStateEvent.SystemUIVisibilityUpdated"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerImmersiveModePresenter$3;->c(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
