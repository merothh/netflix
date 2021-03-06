.class Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/android/volley/VolleyError;

.field private final mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Lcom/android/volley/Request;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Lcom/android/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-void
.end method
