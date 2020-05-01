.class Lo/xd;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/xd$StateListAnimator;,
        Lo/xd$Activity;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Lo/xd$StateListAnimator;

.field private c:Landroid/content/IntentFilter;

.field private final d:Landroid/content/Context;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/xd$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/xd$Activity;)V
    .locals 1

    .line 46
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 32
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/xd;->c:Landroid/content/IntentFilter;

    .line 33
    new-instance p2, Lo/xd$StateListAnimator;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lo/xd$StateListAnimator;-><init>(Lo/xd;Lo/xd$2;)V

    iput-object p2, p0, Lo/xd;->b:Lo/xd$StateListAnimator;

    .line 47
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lo/xd;->e:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object p1, p0, Lo/xd;->d:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lo/xd;->b()I

    move-result p1

    iput p1, p0, Lo/xd;->f:I

    .line 50
    iget-object p1, p0, Lo/xd;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/LogAudioSinkType;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/xd;->a:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lo/xd;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    iget-object p1, p0, Lo/xd;->d:Landroid/content/Context;

    iget-object p2, p0, Lo/xd;->b:Lo/xd$StateListAnimator;

    iget-object p3, p0, Lo/xd;->c:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 4

    .line 58
    iget-object v0, p0, Lo/xd;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 60
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 61
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xf4240

    mul-int v3, v3, v1

    .line 62
    div-int/2addr v3, v0

    move v1, v3

    :cond_0
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/xd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 93
    iget-object v0, p0, Lo/xd;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 94
    iget-object v0, p0, Lo/xd;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    iget-object v0, p0, Lo/xd;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/xd;->b:Lo/xd$StateListAnimator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lo/xd;->b()I

    move-result p1

    .line 74
    iget-object v0, p0, Lo/xd;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/LogAudioSinkType;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lo/xd;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 77
    iput-object v0, p0, Lo/xd;->a:Ljava/lang/String;

    .line 78
    iput v2, p0, Lo/xd;->f:I

    .line 81
    :cond_0
    iget v0, p0, Lo/xd;->f:I

    if-ne p1, v0, :cond_1

    if-ne v0, v2, :cond_3

    .line 82
    :cond_1
    iget-object v0, p0, Lo/xd;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xd$Activity;

    if-eqz v0, :cond_2

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume changed : AudioSink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/xd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/xd;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  newVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumeChangeObserver"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lo/xd;->a:Ljava/lang/String;

    iget v2, p0, Lo/xd;->f:I

    invoke-interface {v0, v1, v2, p1}, Lo/xd$Activity;->b(Ljava/lang/String;II)V

    .line 88
    :cond_2
    iput p1, p0, Lo/xd;->f:I

    :cond_3
    return-void
.end method
