.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoBottomView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xq;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Xq;


# direct methods
.method public constructor <init>(Lo/Xq;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoBottomView$2;->a:Lo/Xq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/view/View;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoBottomView$2;->a:Lo/Xq;

    invoke-virtual {v0}, Lo/Xq;->h()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoBottomView$2;->a:Lo/Xq;

    invoke-virtual {v1}, Lo/Xq;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerVideoUIView$videoBottomView$2;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
