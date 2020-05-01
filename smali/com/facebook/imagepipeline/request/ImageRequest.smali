.class public Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;,
        Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field private final b:Z

.field private c:Ljava/io/File;

.field private final d:Landroid/net/Uri;

.field private final e:I

.field private final f:Lo/CameraConstrainedHighSpeedCaptureSession;

.field private final g:Lo/BiometricFingerprintConstants;

.field private final h:Z

.field private final i:Lo/CryptoObject;

.field private final j:Lo/CameraDevice;

.field private final k:Lcom/facebook/imagepipeline/common/Priority;

.field private final l:Ljava/lang/Boolean;

.field private final m:Z

.field private final n:Z

.field private final o:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private final q:Lo/PerfMeasurement;

.field private final r:Lo/GeofenceHardwareCallback;

.field private final t:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 119
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->e(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:I

    .line 122
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Z

    .line 123
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    .line 125
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j()Lo/CryptoObject;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lo/CryptoObject;

    .line 127
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b()Lo/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    .line 128
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lo/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lo/CameraDevice;->d()Lo/CameraDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lo/CameraDevice;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lo/CameraDevice;

    .line 130
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c()Lo/BiometricFingerprintConstants;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lo/BiometricFingerprintConstants;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    .line 133
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 134
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Z

    .line 135
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Z

    .line 136
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->q()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ljava/lang/Boolean;

    .line 138
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l()Lo/GeofenceHardwareCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lo/GeofenceHardwareCallback;

    .line 140
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o()Lo/PerfMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lo/PerfMeasurement;

    .line 142
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->s()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Ljava/lang/Boolean;

    return-void
.end method

.method private static e(Landroid/net/Uri;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 343
    :cond_0
    invoke-static {p0}, Lo/ResourcesKey;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 345
    :cond_1
    invoke-static {p0}, Lo/ResourcesKey;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ArtManagerInternal;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ArtManagerInternal;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    .line 351
    :cond_3
    invoke-static {p0}, Lo/ResourcesKey;->d(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x4

    return p0

    .line 353
    :cond_4
    invoke-static {p0}, Lo/ResourcesKey;->f(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x5

    return p0

    .line 355
    :cond_5
    invoke-static {p0}, Lo/ResourcesKey;->g(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x6

    return p0

    .line 357
    :cond_6
    invoke-static {p0}, Lo/ResourcesKey;->h(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x7

    return p0

    .line 359
    :cond_7
    invoke-static {p0}, Lo/ResourcesKey;->i(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    return v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v0, :cond_0

    iget v0, v0, Lo/CameraConstrainedHighSpeedCaptureSession;->a:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    :goto_0
    return v0
.end method

.method public c()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v0, :cond_0

    iget v0, v0, Lo/CameraConstrainedHighSpeedCaptureSession;->c:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 239
    instance-of v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 242
    :cond_0
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 243
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 244
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Ljava/io/File;

    .line 245
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lo/BiometricFingerprintConstants;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lo/BiometricFingerprintConstants;

    .line 246
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lo/CryptoObject;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lo/CryptoObject;

    .line 247
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    .line 248
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lo/CameraDevice;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lo/CameraDevice;

    .line 249
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lo/GeofenceHardwareCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 253
    invoke-interface {v0}, Lo/GeofenceHardwareCallback;->d()Lo/MacAuthenticatedInputStream;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 254
    :goto_0
    iget-object p1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lo/GeofenceHardwareCallback;

    if-eqz p1, :cond_3

    .line 255
    invoke-interface {p1}, Lo/GeofenceHardwareCallback;->d()Lo/MacAuthenticatedInputStream;

    move-result-object v1

    .line 256
    :cond_3
    invoke-static {v0, v1}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public f()Lo/CameraConstrainedHighSpeedCaptureSession;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    return-object v0
.end method

.method public g()Lo/BiometricFingerprintConstants;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lo/BiometricFingerprintConstants;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lo/GeofenceHardwareCallback;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lo/GeofenceHardwareCallback;->d()Lo/MacAuthenticatedInputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 263
    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lo/BiometricFingerprintConstants;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lo/CryptoObject;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lo/CameraDevice;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-static {v1}, Lo/Signature;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Lo/CameraDevice;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lo/CameraDevice;

    return-object v0
.end method

.method public j()Lo/CryptoObject;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lo/CryptoObject;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Z

    return v0
.end method

.method public m()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public n()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Z

    return v0
.end method

.method public p()Lo/GeofenceHardwareCallback;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lo/GeofenceHardwareCallback;

    return-object v0
.end method

.method public q()Ljava/lang/Boolean;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public r()Lo/PerfMeasurement;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lo/PerfMeasurement;

    return-object v0
.end method

.method public declared-synchronized s()Ljava/io/File;
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Ljava/io/File;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 277
    invoke-static {p0}, Lo/Signature;->b(Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Landroid/net/Uri;

    const-string v2, "uri"

    .line 278
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const-string v2, "cacheChoice"

    .line 279
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lo/CryptoObject;

    const-string v2, "decodeOptions"

    .line 280
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lo/GeofenceHardwareCallback;

    const-string v2, "postprocessor"

    .line 281
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    const-string v2, "priority"

    .line 282
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Lo/CameraConstrainedHighSpeedCaptureSession;

    const-string v2, "resizeOptions"

    .line 283
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lo/CameraDevice;

    const-string v2, "rotationOptions"

    .line 284
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Lo/BiometricFingerprintConstants;

    const-string v2, "bytesRange"

    .line 285
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Ljava/lang/Boolean;

    const-string v2, "resizingAllowedOverride"

    .line 286
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lo/Signature$ActionBar;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
