.class public final Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;
.super Ljava/lang/Object;
.source "MdxImageLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxImageLoader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;

.field private final mContext:Landroid/content/Context;

.field private final mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mCallback:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mCallback:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fetchImageWithResourceFetcher(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdxImageLoader"

    const-string/jumbo v1, "Res fetcher url empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf_mdxImageLoader"

    const-string/jumbo v1, "ResourceFetcher is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public fetchImage(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->fetchImageWithLoader(Ljava/lang/String;)V

    return-void
.end method

.method public fetchImageWithLoader(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdxImageLoader"

    const-string/jumbo v1, "Loader url empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$1;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)V

    move-object v1, p1

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nf_mdxImageLoader"

    const-string/jumbo v1, "ImageLoader is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
