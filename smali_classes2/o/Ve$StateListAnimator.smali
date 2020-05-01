.class public final Lo/Ve$StateListAnimator;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ve;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lo/Ve;

.field final synthetic c:Lo/Am;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/Audio;

.field final synthetic e:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Audio;Lo/Am;Ljava/util/Map$Entry;Ljava/util/Map;Lo/Ve;)V
    .locals 0

    iput-object p1, p0, Lo/Ve$StateListAnimator;->d:Lcom/netflix/model/leafs/originals/interactive/Audio;

    iput-object p2, p0, Lo/Ve$StateListAnimator;->c:Lo/Am;

    iput-object p3, p0, Lo/Ve$StateListAnimator;->e:Ljava/util/Map$Entry;

    iput-object p4, p0, Lo/Ve$StateListAnimator;->a:Ljava/util/Map;

    iput-object p5, p0, Lo/Ve$StateListAnimator;->b:Lo/Ve;

    .line 256
    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v2, p2

    if-eqz p7, :cond_1

    .line 264
    invoke-interface/range {p7 .. p7}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz v2, :cond_1

    .line 265
    new-instance v14, Landroid/media/MediaPlayer;

    invoke-direct {v14}, Landroid/media/MediaPlayer;-><init>()V

    .line 267
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 266
    invoke-virtual {v14, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 271
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    move-object v8, v14

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 276
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 279
    :cond_0
    new-instance v8, Lo/Ve$StateListAnimator$4;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lo/Ve$StateListAnimator$4;-><init>(Lo/Ve$StateListAnimator;Ljava/lang/String;JJ)V

    check-cast v8, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v14, v8}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 288
    sget-object v0, Lo/Vg;->a:Lo/Vg;

    check-cast v0, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v14, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 292
    iget-object v0, v7, Lo/Ve$StateListAnimator;->d:Lcom/netflix/model/leafs/originals/interactive/Audio;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Audio;->volume()F

    move-result v0

    iget-object v1, v7, Lo/Ve$StateListAnimator;->d:Lcom/netflix/model/leafs/originals/interactive/Audio;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Audio;->volume()F

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 294
    invoke-virtual {v14}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_1
    return-void
.end method
