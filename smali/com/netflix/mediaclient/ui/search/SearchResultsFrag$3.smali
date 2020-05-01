.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field final synthetic val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/android/widget/StaticGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->fireImpressionEvents()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;->val$gridView:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
