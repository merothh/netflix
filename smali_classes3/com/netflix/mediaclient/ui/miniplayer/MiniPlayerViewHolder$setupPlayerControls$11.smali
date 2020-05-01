.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$11;
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
.field final synthetic b:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$11;->b:Lo/Nl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 413
    :cond_0
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$11;->b:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/HZ;->a(J)V

    .line 416
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/command/SeekCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/SeekCommand;-><init>()V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 417
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string p2, "SeekCommand"

    invoke-virtual {p1, p2}, Lcom/netflix/cl/ExtLogger;->endCommand(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 55
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$11;->e(J)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
