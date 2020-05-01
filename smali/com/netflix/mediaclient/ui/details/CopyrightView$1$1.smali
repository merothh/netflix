.class Lcom/netflix/mediaclient/ui/details/CopyrightView$1$1;
.super Ljava/lang/Object;
.source "CopyrightView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/CopyrightView$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/CopyrightView$1;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1$1;->this$1:Lcom/netflix/mediaclient/ui/details/CopyrightView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1$1;->this$1:Lcom/netflix/mediaclient/ui/details/CopyrightView$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1$1;->this$1:Lcom/netflix/mediaclient/ui/details/CopyrightView$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->access$300(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1$1;->this$1:Lcom/netflix/mediaclient/ui/details/CopyrightView$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->access$400(Lcom/netflix/mediaclient/ui/details/CopyrightView;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)V

    .line 110
    return-void
.end method
