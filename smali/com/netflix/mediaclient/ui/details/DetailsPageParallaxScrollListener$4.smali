.class Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;
.super Ljava/lang/Object;
.source "DetailsPageParallaxScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field final synthetic val$seasonNumber:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    iput p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->val$seasonNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->access$300(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->val$seasonNumber:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->tryGetSeasonIndexBySeasonNumber(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "DetailsPageParallaxScrollListener"

    const-string/jumbo v1, "No valid season index found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DetailsPageParallaxScrollListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting current season to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$4;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->access$300(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setSelection(IZ)V

    goto :goto_0
.end method
