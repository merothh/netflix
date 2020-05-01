.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;
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
.field final synthetic c:Lo/Nh;

.field final synthetic e:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;Lo/Nh;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->c:Lo/Nh;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 5

    .line 627
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v0

    invoke-virtual {v0}, Lo/HZ;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 629
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 630
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    .line 631
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "focus-auto-pause"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-virtual {p1, v1}, Lo/Nl;->e(Z)V

    goto/16 :goto_1

    .line 635
    :cond_1
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-static {v4}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lo/Nh;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_3
    const-string v0, "focus"

    .line 638
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 640
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->k()V

    .line 642
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/StartPlay;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-static {v3}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v3

    invoke-virtual {v3}, Lo/HZ;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->c:Lo/Nh;

    invoke-virtual {v4}, Lo/Nh;->d()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/netflix/cl/model/event/session/action/StartPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 643
    sget-object v2, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v2, Lo/MessagePdu;

    .line 644
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v3, v0

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 642
    invoke-static {p1, v0}, Lo/Nl;->a(Lo/Nl;Lcom/netflix/cl/model/event/session/action/StartPlay;)V

    .line 646
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "auto-play"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 647
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    invoke-virtual {p1, v1}, Lo/Nl;->c(Z)V

    goto :goto_1

    .line 649
    :cond_5
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 650
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->e:Lo/Nl;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->c:Lo/Nh;

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v3, v2}, Lo/Nl;->c(Lo/Nl;Lo/Nh;ZILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$2;->a(Ljava/lang/Boolean;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
