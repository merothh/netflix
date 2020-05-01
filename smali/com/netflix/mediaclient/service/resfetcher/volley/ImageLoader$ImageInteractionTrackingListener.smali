.class public abstract Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;


# instance fields
.field private hasRegistered:Z

.field protected final imgUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

.field protected final view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->imgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->hasRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    sget-object v1, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->NETWORK:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    invoke-virtual {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;->onImageLoaded(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->hasRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    invoke-virtual {v0, p0, p2}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;->onImageLoaded(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;)V

    :cond_0
    return-void
.end method

.method public registerForTTR(Lcom/android/volley/Request$Priority;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;->shouldTrack(Landroid/widget/ImageView;Lcom/android/volley/Request$Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->mTTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->view:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;->registerListener(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;Landroid/widget/ImageView;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageInteractionTrackingListener;->hasRegistered:Z

    :cond_0
    return-void
.end method
