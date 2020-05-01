.class Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;
.super Ljava/lang/Object;
.source "MdxImageLoader.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v0, "nf_mdxImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR resource cached from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    return-void
.end method

.method public onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 96
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "nf_mdxImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resource fetched to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_1
    return-void
.end method

.method public onResourcePrefetched(Ljava/lang/String;ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v0, "nf_mdxImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR resource prefetched from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return-void
.end method

.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "nf_mdxImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR resource raw fetched from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return-void
.end method
