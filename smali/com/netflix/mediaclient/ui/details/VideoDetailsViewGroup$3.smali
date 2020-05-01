.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;
.super Ljava/lang/Object;
.source "VideoDetailsViewGroup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VideoDetailsViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "img group width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->alignViews()V

    return-void
.end method
