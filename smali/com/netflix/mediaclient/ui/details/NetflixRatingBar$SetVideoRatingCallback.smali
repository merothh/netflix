.class Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "NetflixRatingBar.java"


# instance fields
.field private final rating:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;I)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    const-string/jumbo v0, "NetflixRatingBar"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->rating:I

    return-void
.end method


# virtual methods
.method public onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const v3, 0x7f08017b

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$000(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$000(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;->destroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Activity destroyed - ignoring ratings update callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setEnabled(Z)V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$100(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {p2, v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createUIError(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$100(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v0, v4, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Rating has been updated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801ee

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->rating:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$102(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$200(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$200(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->rating:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;->setUserRating(F)V

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$300(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$100(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->dispatchSystemUiVisibilityChanged(I)V

    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Report rate action ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$SetVideoRatingCallback;->this$0:Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->access$100(Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v4, v4, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "NetflixRatingBar"

    const-string/jumbo v1, "Failed to update rating, ratableObject missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
