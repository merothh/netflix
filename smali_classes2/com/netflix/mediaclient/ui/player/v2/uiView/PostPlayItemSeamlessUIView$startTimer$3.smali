.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xr;->q()V
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
.field final synthetic e:Lo/Xr;


# direct methods
.method public constructor <init>(Lo/Xr;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;->e:Lo/Xr;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;->e:Lo/Xr;

    invoke-virtual {v0}, Lo/Xr;->k()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 199
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;->e:Lo/Xr;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lo/Xr;->e(Ljava/lang/Long;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;->e:Lo/Xr;

    invoke-virtual {v0}, Lo/Xr;->b()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$3;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
