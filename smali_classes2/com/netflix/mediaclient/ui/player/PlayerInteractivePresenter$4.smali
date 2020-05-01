.class public final Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TS;-><init>(Lio/reactivex/Observable;)V
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
.field final synthetic b:Lo/TS;


# direct methods
.method public constructor <init>(Lo/TS;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$4;->b:Lo/TS;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 186
    sget-object v0, Lo/TS;->a:Lo/TS$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$4;->b:Lo/TS;

    invoke-static {v0}, Lo/TS;->h(Lo/TS;)V

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$4;->b:Lo/TS;

    invoke-static {v0}, Lo/TS;->e(Lo/TS;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$4;->a()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
