.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;
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

.field final synthetic d:Lo/Ia$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/Ia$StateListAnimator;Lo/HY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->a:Lo/HY;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Boolean;)V
    .locals 2

    .line 753
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->a:Lo/HY;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    sget-object v0, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 756
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 757
    sget-object p1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 758
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lo/Ia$StateListAnimator;->b(Lo/Ia$StateListAnimator;Z)V

    .line 759
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/Ia$StateListAnimator;->c(Z)V

    .line 760
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "highlight-auto-pause"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object p1

    invoke-virtual {p1}, Lo/HZ;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->g(Lo/Ia$StateListAnimator;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 762
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/Ia$StateListAnimator;->e(Z)V

    .line 763
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "highlight-auto-resume"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_1
    sget-object p1, Lo/Ia$StateListAnimator;->c:Lo/Ia$StateListAnimator$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$subscribeTo$5;->d(Ljava/lang/Boolean;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
