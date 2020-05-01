.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveLoadingUIView$label$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vt;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Vt;


# direct methods
.method public constructor <init>(Lo/Vt;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveLoadingUIView$label$2;->c:Lo/Vt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Landroid/widget/TextView;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveLoadingUIView$label$2;->c:Lo/Vt;

    invoke-virtual {v0}, Lo/Vt;->d()Landroid/view/View;

    move-result-object v0

    sget v1, Lo/NdefMessage$TaskDescription;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveLoadingUIView$label$2;->c()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
