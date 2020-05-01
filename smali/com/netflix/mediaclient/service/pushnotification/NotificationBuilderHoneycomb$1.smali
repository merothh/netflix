.class final Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;
.super Ljava/lang/Object;
.source "NotificationBuilderHoneycomb.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic val$builder:Landroid/app/Notification$Builder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgId:I

.field final synthetic val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$builder:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to downlod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

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

    .line 102
    :cond_0
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Image is downloaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

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

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$builder:Landroid/app/Notification$Builder;

    iget v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$msgId:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->access$000(Landroid/content/Context;Landroid/app/Notification$Builder;I)V

    .line 94
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Image set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
