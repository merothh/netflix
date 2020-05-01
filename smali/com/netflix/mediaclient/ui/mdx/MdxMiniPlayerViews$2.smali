.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$2;
.super Ljava/lang/Object;
.source "MdxMiniPlayerViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 867
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "Dummy click listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$600(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$2;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$600(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->invalidate()V

    .line 873
    :cond_0
    return-void
.end method
