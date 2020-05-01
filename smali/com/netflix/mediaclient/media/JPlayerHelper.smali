.class public Lcom/netflix/mediaclient/media/JPlayerHelper;
.super Ljava/lang/Object;
.source "JPlayerHelper.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/MediaPlayerHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "NF_JPlayer"

.field private static sLoaded:Z


# instance fields
.field private jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/netflix/mediaclient/media/JPlayerHelper;->loadLibraries(Landroid/content/Context;)Z

    .line 38
    return-void
.end method

.method private static declared-synchronized loadLibraries(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/netflix/mediaclient/media/JPlayerHelper;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayerHelper;->sLoaded:Z

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v2, "We already loaded native libraries!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v0, 0x1

    .line 54
    :goto_0
    monitor-exit v1

    return v0

    .line 53
    :cond_0
    :try_start_1
    const-string/jumbo v0, "netflix_jpjni"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/media/JPlayerHelper;->sLoaded:Z

    .line 54
    sget-boolean v0, Lcom/netflix/mediaclient/media/JPlayerHelper;->sLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public prepare(Lcom/netflix/mediaclient/javabridge/ui/IMedia;Landroid/view/Surface;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public prepareJPlayer(Lcom/netflix/mediaclient/javabridge/ui/IMedia;Landroid/view/Surface;Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;ZLorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 63
    const-string/jumbo v0, "NF_JPlayer"

    const-string/jumbo v1, "Create JPlayer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->release()V

    .line 67
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-direct {v0, p2, p5}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;-><init>(Landroid/view/Surface;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    .line 68
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->getNativePlayer()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVOapi(JJ)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->setJplayerListener(Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;)V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->setEnablePlatformDrs(Z)V

    .line 74
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer;->release()V

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayerHelper;->jp:Lcom/netflix/mediaclient/media/JPlayer/JPlayer;

    .line 83
    return-void
.end method
