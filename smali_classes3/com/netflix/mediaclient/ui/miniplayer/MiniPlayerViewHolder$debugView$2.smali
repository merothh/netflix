.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$debugView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/ServiceManagerNative;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Landroid/view/View;

.field final synthetic e:Lo/Nl;


# direct methods
.method public constructor <init>(Lo/Nl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$debugView$2;->e:Lo/Nl;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$debugView$2;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lo/ServiceManagerNative;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$debugView$2;->e()Lo/ServiceManagerNative;

    move-result-object v0

    return-object v0
.end method
