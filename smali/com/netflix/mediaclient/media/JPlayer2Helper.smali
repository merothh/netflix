.class public Lcom/netflix/mediaclient/media/JPlayer2Helper;
.super Ljava/lang/Object;
.source "JPlayer2Helper.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/MediaPlayerHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "NF_JPlayer2"

.field private static sLoaded:Z


# instance fields
.field private jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/media/JPlayer2Helper;->loadLibraries(Landroid/content/Context;)Z

    return-void
.end method

.method private static declared-synchronized loadLibraries(Landroid/content/Context;)Z
    .locals 3

    const-class v1, Lcom/netflix/mediaclient/media/JPlayer2Helper;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->sLoaded:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v2, "We already loaded native libraries!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "netflix_jp2jni"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->sLoaded:Z

    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->sLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public prepare(Lcom/netflix/mediaclient/javabridge/ui/IMedia;Landroid/view/Surface;Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "NF_JPlayer2"

    const-string/jumbo v1, "Create JPlayer2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->release()V

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getNativePlayer()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVOapi(JJ)V

    return-void
.end method

.method public prepareJPlayer(Lcom/netflix/mediaclient/javabridge/ui/IMedia;Landroid/view/Surface;Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;ZLorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    return-void
.end method

.method public setAudioDuck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->setAudioDuck(Z)V

    :cond_0
    return-void
.end method

.method public setMaxVideoHeight(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->setMaxVideoHeight(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V

    :cond_0
    return-void
.end method

.method public updateSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer2Helper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->updateSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
