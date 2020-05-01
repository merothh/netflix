.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;
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
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/HY;

.field final synthetic d:Lo/Ia$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/Ia$StateListAnimator;Lo/HY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->b:Lo/HY;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 4

    .line 809
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 810
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->b:Lo/HY;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object v0

    invoke-virtual {v0}, Lo/HZ;->c()Z

    move-result v0

    const/16 v1, 0x29

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object v0

    invoke-virtual {v0}, Lo/HZ;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_7

    :cond_0
    const/16 v0, 0xa

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb

    if-eq p1, v0, :cond_5

    const/16 v0, 0x14

    const/4 v3, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 821
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->b(Lo/Ia$StateListAnimator;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 823
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->j(Lo/Ia$StateListAnimator;)Lo/GK;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 824
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v3}, Lo/Ia$StateListAnimator;->e(Z)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/HZ;->c(Z)V

    .line 818
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v3}, Lo/Ia$StateListAnimator;->c(Z)V

    goto :goto_0

    .line 835
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v3}, Lo/Ia$StateListAnimator;->e(Z)V

    goto :goto_0

    .line 834
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v3}, Lo/Ia$StateListAnimator;->c(Z)V

    goto :goto_0

    .line 832
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v2}, Lo/Ia$StateListAnimator;->e(Z)V

    goto :goto_0

    .line 830
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v2}, Lo/Ia$StateListAnimator;->c(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$10;->c(I)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
