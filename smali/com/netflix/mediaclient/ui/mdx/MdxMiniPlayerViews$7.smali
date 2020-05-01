.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$7;
.super Ljava/lang/Object;
.source "MdxMiniPlayerViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const-string/jumbo v1, "stop pressed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onStopClicked()V

    return-void
.end method
