.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl$2;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Nl$2;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;


# direct methods
.method public constructor <init>(Lo/Nl$2;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;->a:Lo/Nl$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/akj;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;->a:Lo/Nl$2;

    iget-object p1, p1, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->i()V

    .line 214
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;->a:Lo/Nl$2;

    iget-object p1, p1, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->g()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;->e(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
