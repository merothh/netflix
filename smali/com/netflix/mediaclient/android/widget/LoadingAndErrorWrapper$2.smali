.class Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$2;
.super Ljava/lang/Object;
.source "LoadingAndErrorWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$2;->this$0:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$2;->this$0:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->access$000(Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->activityIsDead(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "LoadingAndErrorWrapper"

    const-string/jumbo v1, "Showing loading view with animation (via runnable)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper$2;->this$0:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->access$000(Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method
