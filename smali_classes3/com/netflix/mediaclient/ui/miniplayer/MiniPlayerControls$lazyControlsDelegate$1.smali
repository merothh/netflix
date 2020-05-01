.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$lazyControlsDelegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;-><init>(Landroid/view/View;Lo/alA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls<",
        "TPVM;>.ActionBar;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$lazyControlsDelegate$1;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls<",
            "TPVM;>.ActionBar;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$lazyControlsDelegate$1;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$lazyControlsDelegate$1;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->y(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$lazyControlsDelegate$1;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->n()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 218
    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$lazyControlsDelegate$1;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$lazyControlsDelegate$1;->d()Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;

    move-result-object v0

    return-object v0
.end method
