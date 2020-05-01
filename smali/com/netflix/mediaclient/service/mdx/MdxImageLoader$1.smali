.class Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$1;
.super Ljava/lang/Object;
.source "MdxImageLoader.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "nf_mdxImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to downlod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$002(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdxImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloaded image from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;->onBitmapReady(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    const-string/jumbo v0, "nf_mdxImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bitmap is not valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
