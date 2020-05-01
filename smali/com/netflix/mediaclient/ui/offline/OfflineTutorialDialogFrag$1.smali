.class Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag$1;
.super Ljava/lang/Object;
.source "OfflineTutorialDialogFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;Landroid/view/View;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
