.class Lo/CO$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CO;->e(Lo/aeW;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

.field final synthetic c:Lo/CO;


# direct methods
.method constructor <init>(Lo/CO;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lo/CO$1;->c:Lo/CO;

    iput-object p2, p0, Lo/CO$1;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lo/CO$1;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 199
    iget-object v0, p0, Lo/CO$1;->c:Lo/CO;

    invoke-virtual {v0}, Lo/CO;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CO$1;->c:Lo/CO;

    invoke-static {v0}, Lo/CO;->d(Lo/CO;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lo/CO$1;->c:Lo/CO;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1}, Lo/CO;->c(Lo/CO;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
