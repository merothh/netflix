.class public final Lo/TY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TY$Activity;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private final d:Lo/TY$Activity;

.field private e:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-class v0, Lo/TY;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/TY;->a:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.google.android.googlequicksearchbox"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lo/TY;->f:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lo/TY;->c:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NetflixMediaSession"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 70
    new-instance v0, Lo/TY$Activity;

    iget-object v1, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lo/TY$Activity;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Landroid/support/v4/media/session/MediaSessionCompat;Lo/TY$5;)V

    iput-object v0, p0, Lo/TY;->d:Lo/TY$Activity;

    .line 72
    iget-object p2, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 75
    iget-object p2, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p2, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 77
    iget-object p2, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lo/TY;->d:Lo/TY$Activity;

    invoke-virtual {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 78
    iput-object p1, p0, Lo/TY;->b:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 4

    .line 149
    sget-object v0, Lo/nd;->b:Lo/nd;

    invoke-virtual {v0}, Lo/nd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lo/TY;->a:Ljava/lang/String;

    const-string v1, "no mde - safetyNet failed"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "isRemote"

    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "uuid"

    const-string v3, ""

    .line 156
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v2, Lo/TY;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v1, "extrasInSession %s"

    invoke-static {v2, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    iget-object v1, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    .line 225
    sget-object v0, Lo/TY;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private c(Z)V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    :cond_0
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lo/TY;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 107
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lo/TY;->c:Ljava/lang/String;

    .line 111
    :cond_0
    iget-object p1, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    iget-object p1, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    if-nez p1, :cond_2

    .line 117
    new-instance p1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    move-object p1, v0

    .line 119
    :goto_0
    iget-object v0, p0, Lo/TY;->c:Ljava/lang/String;

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 120
    iget-object v0, p0, Lo/TY;->b:Landroid/content/Context;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lX:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 121
    iget-object v0, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 123
    invoke-direct {p0}, Lo/TY;->a()V

    return-void

    .line 112
    :cond_3
    :goto_1
    sget-object p1, Lo/TY;->a:Ljava/lang/String;

    const-string v0, "could not update boxart in mediasession"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4

    .line 168
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-wide/16 v1, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x16b

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x16c

    .line 199
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    const-wide/16 v1, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 200
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 201
    iget-object p1, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_2
    return-void
.end method

.method b()V
    .locals 2

    .line 162
    sget-object v0, Lo/TY;->a:Ljava/lang/String;

    const-string v1, "stopMediaSession"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0}, Lo/TY;->a(I)V

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lo/TY;->c(Z)V

    return-void
.end method

.method c()V
    .locals 2

    .line 207
    sget-object v0, Lo/TY;->a:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    iget-object v0, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    move-object v0, v1

    :goto_0
    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 145
    iget-object p1, p0, Lo/TY;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 138
    :cond_2
    :goto_1
    sget-object p1, Lo/TY;->a:Ljava/lang/String;

    const-string v0, "could not update boxart in mediasession"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .line 91
    sget-object v0, Lo/TY;->a:Ljava/lang/String;

    const-string v1, "startMediaSession"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, v0}, Lo/TY;->c(Z)V

    const/4 v0, 0x3

    .line 93
    invoke-virtual {p0, v0}, Lo/TY;->a(I)V

    .line 94
    invoke-direct {p0, p1}, Lo/TY;->e(Ljava/lang/String;)V

    return-void
.end method

.method e(Lo/Bc;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lo/TY;->d:Lo/TY$Activity;

    invoke-static {v0, p1}, Lo/TY$Activity;->e(Lo/TY$Activity;Lo/Bc;)V

    return-void
.end method
