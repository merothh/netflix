.class public final Lo/Ts;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ts$Application;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/AudioAttributes;

.field private final b:Landroid/media/AudioManager;

.field private final c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private final d:Lo/Ts$Application;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Landroid/media/AudioFocusRequest;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Landroid/os/Handler;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/Ts;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput-object p1, p0, Lo/Ts;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 81
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lo/Ts;->b:Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lo/Ts;->b:Landroid/media/AudioManager;

    .line 88
    :goto_0
    new-instance p1, Lo/Ts$Application;

    invoke-direct {p1, p0, p2}, Lo/Ts$Application;-><init>(Lo/Ts;Landroid/os/Handler;)V

    iput-object p1, p0, Lo/Ts;->d:Lo/Ts$Application;

    .line 89
    iput v1, p0, Lo/Ts;->j:I

    .line 90
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p2, 0x3

    .line 91
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 92
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lo/Ts;->a:Landroid/media/AudioAttributes;

    return-void
.end method

.method private a()V
    .locals 2

    .line 164
    iget-object v0, p0, Lo/Ts;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lo/Ts;->d:Lo/Ts$Application;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method static synthetic a(Lo/Ts;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/Ts;->c(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 127
    iget v0, p0, Lo/Ts;->j:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    iget-object p1, p0, Lo/Ts;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 133
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    .line 134
    invoke-direct {p0}, Lo/Ts;->g()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lo/Ts;->a()V

    .line 138
    :goto_0
    iput v1, p0, Lo/Ts;->j:I

    .line 140
    :cond_2
    iget-object p1, p0, Lo/Ts;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private b()I
    .locals 2

    .line 152
    iget-object v0, p0, Lo/Ts;->g:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 155
    iget-object v1, p0, Lo/Ts;->a:Landroid/media/AudioAttributes;

    .line 156
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/Ts;->d:Lo/Ts$Application;

    .line 157
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lo/Ts;->g:Landroid/media/AudioFocusRequest;

    .line 160
    :cond_0
    iget-object v0, p0, Lo/Ts;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lo/Ts;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private c()I
    .locals 3

    .line 144
    iget-object v0, p0, Lo/Ts;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lo/Ts;->d:Lo/Ts$Application;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 7

    const/4 v0, -0x3

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown focus change type: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 192
    :cond_0
    iput v4, p0, Lo/Ts;->j:I

    const-string p1, "AUDIOFOCUS_GAIN"

    goto :goto_0

    .line 180
    :cond_1
    iput v3, p0, Lo/Ts;->j:I

    const-string p1, "AUDIOFOCUS_LOSS"

    goto :goto_0

    .line 184
    :cond_2
    iput v1, p0, Lo/Ts;->j:I

    const-string p1, "AUDIOFOCUS_LOSS_TRANSIENT"

    goto :goto_0

    .line 188
    :cond_3
    iput v2, p0, Lo/Ts;->j:I

    const-string p1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const-string p1, "AudioFocusManager"

    const-string v6, "onAudioFocusChange "

    .line 197
    invoke-static {p1, v6, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    iget p1, p0, Lo/Ts;->j:I

    if-eq p1, v3, :cond_7

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_6

    if-eq p1, v1, :cond_5

    if-ne p1, v2, :cond_4

    .line 212
    iget-object p1, p0, Lo/Ts;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setAudioDuck(Z)V

    goto :goto_1

    .line 219
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio focus state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Ts;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_5
    iget-object p1, p0, Lo/Ts;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(I)V

    goto :goto_1

    .line 215
    :cond_6
    iget-object p1, p0, Lo/Ts;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v5}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setAudioDuck(Z)V

    .line 216
    iget-object p1, p0, Lo/Ts;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(I)V

    goto :goto_1

    .line 205
    :cond_7
    iget-object p1, p0, Lo/Ts;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(I)V

    .line 206
    invoke-direct {p0, v4}, Lo/Ts;->a(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method private g()V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/Ts;->g:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lo/Ts;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, v0}, Lo/Ts;->a(Z)V

    return-void
.end method

.method public e()Z
    .locals 4

    .line 99
    iget-object v0, p0, Lo/Ts;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget v0, p0, Lo/Ts;->j:I

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    .line 104
    invoke-direct {p0}, Lo/Ts;->b()I

    move-result v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lo/Ts;->c()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 108
    :goto_1
    iput v0, p0, Lo/Ts;->j:I

    .line 114
    :cond_3
    iget v0, p0, Lo/Ts;->j:I

    if-ne v0, v1, :cond_4

    .line 115
    iget-object v0, p0, Lo/Ts;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    :cond_4
    return v2
.end method
