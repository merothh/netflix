.class Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$2;
.super Ljava/lang/Object;
.source "PlayerSuspendNotification.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$100()Ljava/lang/String;

    move-result-object v0

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

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;Landroid/graphics/Bitmap;)V

    .line 149
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$100()Ljava/lang/String;

    move-result-object v0

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

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;Landroid/graphics/Bitmap;)V

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$100()Ljava/lang/String;

    move-result-object v0

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

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification$2;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->access$200(Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
