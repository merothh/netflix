.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$play$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$play$3;->c:Lo/Nl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    if-lez p2, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    .line 492
    div-int/2addr p1, p2

    int-to-long p1, p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x64

    .line 496
    :goto_0
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$play$3;->c:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/HZ;->e(J)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$play$3;->a(II)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
