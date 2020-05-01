.class public final Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


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
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/TS;


# direct methods
.method public constructor <init>(Lo/TS;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$5;->c:Lo/TS;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object p1, Lo/TS;->a:Lo/TS$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 192
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$5;->c:Lo/TS;

    invoke-static {p1}, Lo/TS;->h(Lo/TS;)V

    .line 193
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$5;->c:Lo/TS;

    invoke-static {p1}, Lo/TS;->e(Lo/TS;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$5;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
