.class Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$4;
.super Ljava/lang/Object;
.source "CoppolaDetailsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

.field final synthetic val$fragView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$4;->val$fragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$4;->val$fragView:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 555
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->access$300(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 556
    return-void
.end method
