.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$10;
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
        "Ljava/lang/Boolean;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$10;->a:Lo/Nl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$10;->a:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lo/HZ;->c(F)V

    .line 795
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$10;->a:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a(Z)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$10;->a(Z)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
