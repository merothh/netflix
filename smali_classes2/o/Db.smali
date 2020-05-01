.class public Lo/Db;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Db$TaskDescription;
    }
.end annotation


# instance fields
.field a:Z

.field protected b:Landroid/view/TextureView;

.field protected c:Ljava/lang/String;

.field protected d:Landroid/view/Surface;

.field protected e:Lcom/netflix/mediaclient/api/res/AssetType;

.field protected f:Z

.field protected g:J

.field private h:Lo/Db$TaskDescription;

.field private i:I

.field protected j:J

.field private k:I

.field private l:F

.field private m:I

.field private n:Landroid/media/MediaPlayer;

.field private o:I

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/api/res/AssetType;Lo/Db$TaskDescription;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lo/Db;->l:F

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lo/Db;->f:Z

    .line 76
    iput-object p5, p0, Lo/Db;->e:Lcom/netflix/mediaclient/api/res/AssetType;

    .line 77
    iput-object p6, p0, Lo/Db;->h:Lo/Db$TaskDescription;

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lo/Db;->b:Landroid/view/TextureView;

    .line 80
    iget-object p1, p0, Lo/Db;->b:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lo/Db;->f:Z

    .line 84
    :goto_0
    iput-boolean p2, p0, Lo/Db;->a:Z

    .line 85
    iput p3, p0, Lo/Db;->i:I

    .line 86
    iput p4, p0, Lo/Db;->l:F

    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 416
    invoke-virtual {p0}, Lo/Db;->h()V

    .line 417
    invoke-direct {p0, p1}, Lo/Db;->e(Landroid/graphics/SurfaceTexture;)V

    .line 418
    iget-object p1, p0, Lo/Db;->h:Lo/Db$TaskDescription;

    if-eqz p1, :cond_0

    .line 419
    invoke-interface {p1}, Lo/Db$TaskDescription;->c()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/Db;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/Db;->i()V

    return-void
.end method

.method private e(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lo/Db;->f:Z

    .line 445
    iget-object v0, p0, Lo/Db;->d:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lo/Db;->d:Landroid/view/Surface;

    :cond_0
    if-eqz p1, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 217
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 218
    iget v1, p0, Lo/Db;->l:F

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 180
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 190
    iget-boolean v1, p0, Lo/Db;->f:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 191
    iget v0, p0, Lo/Db;->k:I

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 193
    :cond_1
    iget v0, p0, Lo/Db;->k:I

    if-eq v0, v2, :cond_2

    .line 194
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    iget v1, p0, Lo/Db;->o:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 200
    :cond_2
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x4

    .line 201
    iput v0, p0, Lo/Db;->k:I

    .line 202
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_3
    return-void
.end method

.method private j()V
    .locals 3

    .line 170
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 171
    iget v1, p0, Lo/Db;->k:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lo/Db;->o:I

    .line 173
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x5

    .line 174
    iput v0, p0, Lo/Db;->k:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 223
    iget v0, p0, Lo/Db;->i:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 227
    :cond_0
    iget v2, p0, Lo/Db;->m:I

    iget-boolean v3, p0, Lo/Db;->a:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lo/Db;->b:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 407
    :goto_0
    invoke-direct {p0, p1}, Lo/Db;->a(Landroid/graphics/SurfaceTexture;)V

    .line 408
    iget-object p1, p0, Lo/Db;->q:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/Db;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lo/Db;->f:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lo/Db;->i()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, v0}, Lo/Db;->b(Z)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 310
    iget-object v0, p0, Lo/Db;->q:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/Db;->q:Landroid/os/Handler;

    .line 314
    :cond_0
    iget-object v0, p0, Lo/Db;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 315
    new-instance v0, Lo/Db$1;

    invoke-direct {v0, p0}, Lo/Db$1;-><init>(Lo/Db;)V

    iput-object v0, p0, Lo/Db;->r:Ljava/lang/Runnable;

    .line 326
    :cond_1
    iget-object v0, p0, Lo/Db;->q:Landroid/os/Handler;

    iget-object v1, p0, Lo/Db;->r:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d()V
    .locals 9

    .line 100
    iget-boolean v0, p0, Lo/Db;->f:Z

    if-eqz v0, :cond_6

    .line 102
    :try_start_0
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lo/Db;->k:I

    .line 105
    iget-object v2, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 106
    iget-object v2, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 107
    iget-object v2, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 108
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 109
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 110
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 111
    invoke-direct {p0}, Lo/Db;->f()V

    .line 114
    :cond_0
    iget-object v0, p0, Lo/Db;->d:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lo/Db;->d:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 122
    :cond_1
    iget v0, p0, Lo/Db;->k:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    iget v0, p0, Lo/Db;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    iget v0, p0, Lo/Db;->k:I

    if-eqz v0, :cond_3

    iget v0, p0, Lo/Db;->k:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 125
    :cond_3
    iget-object v0, p0, Lo/Db;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lo/Db;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 129
    iget-object v3, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-wide v5, p0, Lo/Db;->g:J

    iget-wide v7, p0, Lo/Db;->j:J

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 130
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x1

    .line 131
    iput v0, p0, Lo/Db;->k:I

    .line 132
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 133
    iput v1, p0, Lo/Db;->k:I

    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {p0}, Lo/Db;->c()V

    goto :goto_1

    .line 123
    :cond_5
    :goto_0
    invoke-direct {p0}, Lo/Db;->i()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    invoke-virtual {p0}, Lo/Db;->c()V

    :cond_6
    :goto_1
    return-void
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 0

    .line 90
    iput-object p1, p0, Lo/Db;->c:Ljava/lang/String;

    .line 91
    iput-wide p2, p0, Lo/Db;->g:J

    .line 92
    iput-wide p4, p0, Lo/Db;->j:J

    return-void
.end method

.method public e()V
    .locals 1

    .line 160
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lo/Db;->o:I

    .line 163
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x6

    .line 164
    iput v0, p0, Lo/Db;->k:I

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 431
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lo/Db;->j()V

    .line 435
    :cond_0
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    .line 436
    iput v0, p0, Lo/Db;->k:I

    .line 437
    iget-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/16 v0, 0x8

    .line 438
    iput v0, p0, Lo/Db;->k:I

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 p1, 0x7

    .line 256
    iput p1, p0, Lo/Db;->k:I

    .line 257
    iget p1, p0, Lo/Db;->m:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/Db;->m:I

    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lo/Db;->o:I

    .line 259
    invoke-virtual {p0}, Lo/Db;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object p1, p0, Lo/Db;->h:Lo/Db$TaskDescription;

    if-eqz p1, :cond_0

    .line 265
    invoke-interface {p1}, Lo/Db$TaskDescription;->d()V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lo/Db;->c()V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Lo/Db;->n:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    :cond_2
    if-eqz p1, :cond_3

    const/16 p1, 0x64

    .line 295
    invoke-virtual {p0, p1}, Lo/Db;->c(I)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-direct {p0}, Lo/Db;->i()V

    :goto_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x9

    .line 331
    iput p1, p0, Lo/Db;->k:I

    .line 337
    iget-object p1, p0, Lo/Db;->h:Lo/Db$TaskDescription;

    if-eqz p1, :cond_0

    .line 338
    invoke-interface {p1, p2, p3}, Lo/Db$TaskDescription;->c(II)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lo/Db;->c()V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 241
    iget-object p1, p0, Lo/Db;->h:Lo/Db$TaskDescription;

    if-eqz p1, :cond_0

    .line 242
    invoke-interface {p1}, Lo/Db$TaskDescription;->b()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x2

    .line 234
    iput p1, p0, Lo/Db;->k:I

    .line 235
    invoke-direct {p0}, Lo/Db;->i()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 372
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lo/Db;->d:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 373
    iput-boolean p1, p0, Lo/Db;->f:Z

    .line 375
    invoke-virtual {p0}, Lo/Db;->d()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lo/Db;->a(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 356
    invoke-direct {p0}, Lo/Db;->i()V

    :cond_0
    return-void
.end method
