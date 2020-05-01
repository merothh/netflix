.class public Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 815
    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 816
    iput-object p4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 817
    iput-object p5, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mListener:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    .line 818
    return-void
.end method

.method static synthetic access$1002(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mListener:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    return-object v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mListener:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageListener;

    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$1200(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;

    .line 829
    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)Z

    move-result v0

    .line 831
    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$1200(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$700(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;

    .line 837
    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;)Z

    .line 839
    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;->access$800(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->this$0:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;->access$700(Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 862
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    move v0, v1

    .line 863
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    move v2, v1

    .line 864
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 866
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ImageContainer [mBitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", byteCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRequestUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 863
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    .line 864
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/api/Api19Util;->getBitmapByteCount(Landroid/graphics/Bitmap;)I

    move-result v1

    goto :goto_2
.end method
