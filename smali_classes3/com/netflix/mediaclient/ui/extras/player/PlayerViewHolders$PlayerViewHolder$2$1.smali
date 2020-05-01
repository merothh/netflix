.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;->d(Lo/akj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/HY;",
        "Lo/GK;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/HY;Lo/GK;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasFeedViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2;->d:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->i(Lo/Ia$StateListAnimator;)Lo/UpdateEngine;

    move-result-object v0

    .line 245
    new-instance v1, Lo/GY$ActionBar$Activity;

    .line 246
    invoke-virtual {p2}, Lo/GK;->C()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 247
    invoke-virtual {p1}, Lo/HY;->M()I

    move-result p1

    .line 245
    invoke-direct {v1, p2, p1}, Lo/GY$ActionBar$Activity;-><init>(ZI)V

    check-cast v1, Lo/VintfObject;

    .line 979
    const-class p1, Lo/GY;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Lo/HY;

    check-cast p2, Lo/GK;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$2$1;->b(Lo/HY;Lo/GK;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
