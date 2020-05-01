.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerLockUIView$hide$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WU;->b()V
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
.field final synthetic a:Lo/WU;


# direct methods
.method public constructor <init>(Lo/WU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerLockUIView$hide$1;->a:Lo/WU;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerLockUIView$hide$1;->a:Lo/WU;

    invoke-static {v0}, Lo/WU;->e(Lo/WU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerLockUIView$hide$1;->a:Lo/WU;

    new-instance v1, Lo/UU$Dialog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/UU$Dialog;-><init>(Z)V

    invoke-virtual {v0, v1}, Lo/WU;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerLockUIView$hide$1;->c()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
