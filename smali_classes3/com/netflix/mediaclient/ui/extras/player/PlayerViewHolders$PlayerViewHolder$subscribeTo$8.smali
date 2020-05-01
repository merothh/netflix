.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ia$StateListAnimator;->c(Lo/HY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Boolean;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/HY;

.field final synthetic e:Lo/Ia$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/Ia$StateListAnimator;Lo/HY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->a:Lo/HY;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 7

    .line 781
    sget-object p1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 782
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->a:Lo/HY;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 783
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/HZ;->c(Z)V

    .line 784
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object p1

    invoke-virtual {p1}, Lo/HZ;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 785
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "focus-auto-pause"

    invoke-virtual {p1, v1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 786
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/Ia$StateListAnimator;->c(Z)V

    goto :goto_0

    .line 787
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->g(Lo/Ia$StateListAnimator;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 789
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "focus-auto-idle"

    invoke-virtual {p1, v1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 790
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-virtual {p1}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 791
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;ZZZILjava/lang/Object;)V

    .line 792
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->a:Lo/HY;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;Lo/HY;ZILjava/lang/Object;)V

    .line 793
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1, v0}, Lo/Ia$StateListAnimator;->b(Lo/Ia$StateListAnimator;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$8;->a(Ljava/lang/Boolean;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
