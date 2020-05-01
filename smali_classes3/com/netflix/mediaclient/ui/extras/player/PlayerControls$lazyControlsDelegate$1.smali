.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;-><init>(Landroid/view/View;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 194
    sget v1, Lo/GS$FragmentManager;->u:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->n()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 195
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$lazyControlsDelegate$1;->c()Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;

    move-result-object v0

    return-object v0
.end method
