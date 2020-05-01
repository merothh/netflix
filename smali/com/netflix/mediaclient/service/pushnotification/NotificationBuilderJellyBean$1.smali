.class final Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;
.super Ljava/lang/Object;
.source "NotificationBuilderJellyBean.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic val$builder:Landroid/app/Notification$Builder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field final synthetic val$msgId:I

.field final synthetic val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;Landroid/content/Context;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$msgId:I

    iput-object p5, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to downlod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    iget v3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$msgId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->access$000(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Image is downloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->createSquaredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    iget v3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$msgId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->access$000(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Large icon image set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method
