.class Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;
.super Ljava/lang/Object;
.source "JPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v5, 0x2d0

    const/16 v4, 0x1e0

    .line 297
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    .line 298
    const-string/jumbo v2, "video/avc"

    .line 299
    const-string/jumbo v0, "mime"

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_3

    .line 301
    const-string/jumbo v0, "max-width"

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 302
    const-string/jumbo v0, "max-height"

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 303
    const-string/jumbo v0, "width"

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 304
    const-string/jumbo v0, "height"

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)I

    move-result v0

    if-eq v0, v9, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    :cond_1
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "mVideoPipe1 is idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_start_0
    iget-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {v1, v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Landroid/view/Surface;

    move-result-object v4

    const-string/jumbo v5, "1"

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v7, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$602(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, v9}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1302(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Z)Z

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    iget-object v1, v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;)V

    .line 372
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isDecoderCreated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->start()V

    .line 375
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$Clock;)V

    .line 380
    :goto_2
    return-void

    .line 306
    :cond_3
    const-string/jumbo v0, "max-input-size"

    const v1, 0x28000

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 307
    const-string/jumbo v0, "width"

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 308
    const-string/jumbo v0, "height"

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string/jumbo v1, "NF_JPlayer"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 322
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    const/4 v2, -0x2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;ILjava/lang/String;)V

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    goto :goto_2

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v1

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 334
    :cond_6
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "mVideoPipe2 is idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_8

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;->onGetTextureSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 340
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_8

    .line 341
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "TextureSurface is not ready, wait..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 343
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "configureVideoPipe interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 350
    :cond_8
    :try_start_2
    iget-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {v1, v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)V

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Landroid/view/Surface;

    move-result-object v4

    const-string/jumbo v5, "2"

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$1200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/VideoDecoderPipe;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v7, v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$802(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    iget-object v1, v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->mListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer$VideoEventListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe$EventListener;)V

    goto/16 :goto_1

    .line 351
    :catch_2
    move-exception v0

    .line 352
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v1, v8}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    .line 353
    const-string/jumbo v1, "NF_JPlayer"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 362
    :cond_9
    const-wide/16 v0, 0x32

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 366
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "video pipe is not ready, wait..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    :catch_3
    move-exception v0

    .line 363
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "configureVideoPipe interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 377
    :cond_a
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "VideoDecoder initialization failed, exiting..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-static {v0, v8}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->access$502(Lcom/netflix/mediaclient/media/JPlayer/JPlayer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe;

    goto/16 :goto_2
.end method
