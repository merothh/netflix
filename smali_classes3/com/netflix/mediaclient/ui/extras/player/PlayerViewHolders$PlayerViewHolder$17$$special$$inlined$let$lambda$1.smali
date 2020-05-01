.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ia$StateListAnimator$5;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Ia$StateListAnimator$5;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;


# direct methods
.method public constructor <init>(Lo/Ia$StateListAnimator$5;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;->a:Lo/Ia$StateListAnimator$5;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/akj;)V
    .locals 0

    .line 414
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;->a:Lo/Ia$StateListAnimator$5;

    iget-object p1, p1, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->h()V

    .line 415
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;->a:Lo/Ia$StateListAnimator$5;

    iget-object p1, p1, Lo/Ia$StateListAnimator$5;->a:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->i()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$$special$$inlined$let$lambda$1;->b(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
