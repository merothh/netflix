.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xb;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Xb;


# direct methods
.method public constructor <init>(Lo/Xb;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;->b:Lo/Xb;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;->b:Lo/Xb;

    invoke-static {v0}, Lo/Xb;->d(Lo/Xb;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 147
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;->b:Lo/Xb;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/Xb;->d(Lo/Xb;Ljava/lang/Long;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;->b:Lo/Xb;

    invoke-static {v0}, Lo/Xb;->b(Lo/Xb;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;->b()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
