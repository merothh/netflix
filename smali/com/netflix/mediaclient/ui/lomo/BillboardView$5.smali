.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;
.super Ljava/lang/Object;
.source "BillboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->toggleVolume()V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$600(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    .line 849
    return-void
.end method
