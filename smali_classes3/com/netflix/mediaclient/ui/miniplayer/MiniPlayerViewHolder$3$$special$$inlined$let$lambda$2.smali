.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$2;
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
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Nl$2;

.field final synthetic c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;


# direct methods
.method public constructor <init>(Lo/Nl$2;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$2;->a:Lo/Nl$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$2;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$2;->a:Lo/Nl$2;

    iget-object v0, v0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v0, p1}, Lo/Nl;->e(Lo/Nl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$2;->d(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
