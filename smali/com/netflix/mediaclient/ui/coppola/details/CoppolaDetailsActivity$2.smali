.class Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$2;
.super Ljava/lang/Object;
.source "CoppolaDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

.field final synthetic val$surface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$2;->val$surface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$2;->val$surface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity$2;->val$surface:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 405
    :cond_0
    return-void
.end method
