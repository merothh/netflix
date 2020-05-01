.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xw;->h()V
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
.field final synthetic b:Lo/Xw;


# direct methods
.method public constructor <init>(Lo/Xw;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;->b:Lo/Xw;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;->b:Lo/Xw;

    invoke-static {v0}, Lo/Xw;->c(Lo/Xw;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 173
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;->b:Lo/Xw;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/Xw;->b(Lo/Xw;Ljava/lang/Long;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;->b:Lo/Xw;

    invoke-virtual {v0}, Lo/Xw;->b()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$3;->e()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
