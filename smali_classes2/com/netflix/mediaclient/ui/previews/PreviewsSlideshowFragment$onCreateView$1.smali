.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yq;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Yq;


# direct methods
.method public constructor <init>(Lo/Yq;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$1;->b:Lo/Yq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$1;->b:Lo/Yq;

    invoke-virtual {v0}, Lo/Yq;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$1;->b:Lo/Yq;

    invoke-virtual {v1}, Lo/Yq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lo/Serializable;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowFragment$onCreateView$1;->a()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
