.class Lo/MultiAutoCompleteTextView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/As;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MultiAutoCompleteTextView;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/AR;

.field final synthetic e:Lo/MultiAutoCompleteTextView;


# direct methods
.method constructor <init>(Lo/MultiAutoCompleteTextView;Lo/AR;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lo/MultiAutoCompleteTextView$4;->e:Lo/MultiAutoCompleteTextView;

    iput-object p2, p0, Lo/MultiAutoCompleteTextView$4;->d:Lo/AR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$4;->d:Lo/AR;

    invoke-interface {v0}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 286
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$4;->d:Lo/AR;

    invoke-interface {v0}, Lo/AR;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lo/MultiAutoCompleteTextView$4;->d:Lo/AR;

    invoke-interface {v0}, Lo/AR;->isAvailableForDownload()Z

    move-result v0

    return v0
.end method
