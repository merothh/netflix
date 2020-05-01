.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$9;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Long;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$9;->a:Lo/Nl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(J)V
    .locals 0

    .line 400
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$9;->a:Lo/Nl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/Nl;->e(Z)V

    .line 401
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 55
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$9;->d(J)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
