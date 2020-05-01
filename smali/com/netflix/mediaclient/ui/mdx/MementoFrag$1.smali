.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;
.super Ljava/lang/Object;
.source "MementoFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

.field final synthetic val$pagerIndex:I

.field final synthetic val$showRDP:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iput p2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->val$pagerIndex:I

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->val$showRDP:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->val$pagerIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->setCurrentItem(IZ)V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->val$showRDP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "POS_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$1;->val$pagerIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0f01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method
