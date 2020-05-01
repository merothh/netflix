.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$6;
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
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$6;->a:Lo/Nl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/akj;)V
    .locals 1

    .line 774
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$6;->a:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Preparing"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$subscribeTo$6;->a(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
