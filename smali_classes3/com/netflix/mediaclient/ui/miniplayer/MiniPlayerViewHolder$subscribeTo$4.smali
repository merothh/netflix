.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;->c(Lo/Nh;)V
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
.field final synthetic b:Lo/Nh;

.field final synthetic e:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;Lo/Nh;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->b:Lo/Nh;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 727
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 728
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->b:Lo/Nh;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v0

    invoke-virtual {v0}, Lo/HZ;->c()Z

    move-result v0

    const/16 v1, 0x29

    const/16 v2, 0x28

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v0

    invoke-virtual {v0}, Lo/HZ;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_8

    .line 756
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 757
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->b:Lo/Nh;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lo/Nl;->c(Lo/Nl;Lo/Nh;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xa

    const/4 v4, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0x15

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 740
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->f(Lo/Nl;)Lo/UE;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 741
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-virtual {p1, v3}, Lo/Nl;->c(Z)V

    goto :goto_1

    .line 735
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/HZ;->c(Z)V

    .line 736
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-virtual {p1, v3}, Lo/Nl;->e(Z)V

    goto :goto_1

    .line 751
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-virtual {p1, v3}, Lo/Nl;->c(Z)V

    goto :goto_1

    .line 750
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-virtual {p1, v3}, Lo/Nl;->e(Z)V

    goto :goto_1

    .line 748
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-virtual {p1, v4}, Lo/Nl;->c(Z)V

    goto :goto_1

    .line 746
    :cond_7
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->e:Lo/Nl;

    invoke-virtual {p1, v4}, Lo/Nl;->e(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$4;->a(I)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
