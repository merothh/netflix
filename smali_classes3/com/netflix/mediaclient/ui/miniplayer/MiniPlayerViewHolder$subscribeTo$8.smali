.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$8;
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
.field final synthetic d:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$8;->d:Lo/Nl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$8;->d:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "portrait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$8;->d:Lo/Nl;

    invoke-static {v0, p1}, Lo/Nl;->d(Lo/Nl;Z)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$8;->d(Z)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
