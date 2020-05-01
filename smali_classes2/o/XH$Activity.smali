.class Lo/XH$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/nio/FloatBuffer;

.field private static final c:[F

.field private static final d:[F

.field private static final e:[F


# instance fields
.field private f:I

.field private g:I

.field private h:Ljava/nio/FloatBuffer;

.field private final i:[I

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private m:I

.field private n:I

.field private o:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 284
    fill-array-data v1, :array_0

    sput-object v1, Lo/XH$Activity;->e:[F

    new-array v1, v0, [F

    .line 290
    fill-array-data v1, :array_1

    sput-object v1, Lo/XH$Activity;->d:[F

    new-array v0, v0, [F

    .line 296
    fill-array-data v0, :array_2

    sput-object v0, Lo/XH$Activity;->c:[F

    const-string v0, "y_tex"

    const-string v1, "u_tex"

    const-string v2, "v_tex"

    .line 310
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/XH$Activity;->a:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 326
    fill-array-data v0, :array_3

    invoke-static {v0}, Lo/XH$Activity;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lo/XH$Activity;->b:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 331
    iput-object v0, p0, Lo/XH$Activity;->i:[I

    const/4 v0, -0x1

    .line 347
    iput v0, p0, Lo/XH$Activity;->m:I

    .line 348
    iput v0, p0, Lo/XH$Activity;->k:I

    .line 349
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/XH$Activity;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static varargs b([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 508
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 511
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 477
    iget-object v0, p0, Lo/XH$Activity;->i:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v1, v2, :cond_0

    .line 479
    iget v0, p0, Lo/XH$Activity;->g:I

    sget-object v3, Lo/XH$Activity;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    add-int/2addr v0, v1

    .line 480
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 481
    iget-object v0, p0, Lo/XH$Activity;->i:[I

    aget v0, v0, v1

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 482
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 484
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 486
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 488
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_0
    invoke-direct {p0}, Lo/XH$Activity;->e()V

    return-void
.end method

.method private c(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 496
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(ILjava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 464
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 465
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 466
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v3, 0x8b81

    .line 467
    invoke-static {p1, v3, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 468
    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 468
    invoke-direct {p0, v0, p2}, Lo/XH$Activity;->c(ZLjava/lang/String;)V

    .line 470
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 471
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 473
    invoke-direct {p0}, Lo/XH$Activity;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 501
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 503
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20 error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lo/XH$Activity;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    .line 404
    iget-object p1, p0, Lo/XH$Activity;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-nez p1, :cond_0

    .line 405
    iget-object v0, p0, Lo/XH$Activity;->o:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 410
    iget-object v0, p0, Lo/XH$Activity;->o:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->release()V

    .line 413
    :cond_1
    iput-object p1, p0, Lo/XH$Activity;->o:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 415
    :cond_2
    iget-object p1, p0, Lo/XH$Activity;->o:Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;

    .line 417
    sget-object v0, Lo/XH$Activity;->d:[F

    .line 418
    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->colorspace:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 423
    :cond_3
    sget-object v0, Lo/XH$Activity;->c:[F

    goto :goto_0

    .line 420
    :cond_4
    sget-object v0, Lo/XH$Activity;->e:[F

    .line 429
    :goto_0
    iget v1, p0, Lo/XH$Activity;->n:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v2, :cond_6

    if-nez v0, :cond_5

    .line 432
    iget v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    goto :goto_2

    :cond_5
    iget v5, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->height:I

    add-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    :goto_2
    move v9, v1

    const v1, 0x84c0

    add-int/2addr v1, v0

    .line 433
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    .line 434
    iget-object v5, p0, Lo/XH$Activity;->i:[I

    aget v5, v5, v0

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xcf5

    .line 435
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1909

    .line 436
    iget-object v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvStrides:[I

    aget v8, v1, v0

    const/4 v10, 0x0

    const/16 v11, 0x1909

    const/16 v12, 0x1401

    iget-object v1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v13, v1, v0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_6
    iget v0, p0, Lo/XH$Activity;->m:I

    iget v5, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-ne v0, v5, :cond_7

    iget v0, p0, Lo/XH$Activity;->k:I

    iget-object v5, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvStrides:[I

    aget v5, v5, v4

    if-eq v0, v5, :cond_8

    .line 442
    :cond_7
    iget v0, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    int-to-float v0, v0

    iget-object v5, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvStrides:[I

    aget v5, v5, v4

    int-to-float v5, v5

    div-float/2addr v0, v5

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v8, 0x0

    aput v8, v5, v4

    aput v8, v5, v3

    aput v8, v5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v5, v2

    aput v0, v5, v7

    aput v8, v5, v6

    const/4 v2, 0x6

    aput v0, v5, v2

    const/4 v0, 0x7

    aput v1, v5, v0

    .line 445
    invoke-static {v5}, Lo/XH$Activity;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/XH$Activity;->h:Ljava/nio/FloatBuffer;

    .line 450
    iget v8, p0, Lo/XH$Activity;->f:I

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lo/XH$Activity;->h:Ljava/nio/FloatBuffer;

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 452
    iget v0, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->width:I

    iput v0, p0, Lo/XH$Activity;->m:I

    .line 453
    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;->yuvStrides:[I

    aget p1, p1, v4

    iput p1, p0, Lo/XH$Activity;->k:I

    :cond_8
    const/16 p1, 0x4000

    .line 455
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 456
    invoke-static {v6, v4, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 457
    invoke-direct {p0}, Lo/XH$Activity;->e()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 399
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .line 369
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    iput p1, p0, Lo/XH$Activity;->g:I

    .line 372
    iget p1, p0, Lo/XH$Activity;->g:I

    const p2, 0x8b31

    const-string v0, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n"

    invoke-direct {p0, p2, v0, p1}, Lo/XH$Activity;->d(ILjava/lang/String;I)V

    .line 373
    iget p1, p0, Lo/XH$Activity;->g:I

    const p2, 0x8b30

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-direct {p0, p2, v0, p1}, Lo/XH$Activity;->d(ILjava/lang/String;I)V

    .line 376
    iget p1, p0, Lo/XH$Activity;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const/4 v0, 0x0

    aput v0, p2, v0

    aput v0, p2, v0

    .line 381
    iget v1, p0, Lo/XH$Activity;->g:I

    const v2, 0x8b82

    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 382
    aget p2, p2, v0

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lo/XH$Activity;->g:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/XH$Activity;->c(ZLjava/lang/String;)V

    .line 383
    iget p1, p0, Lo/XH$Activity;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 384
    iget p1, p0, Lo/XH$Activity;->g:I

    const-string p2, "in_pos"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 385
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 386
    sget-object v5, Lo/XH$Activity;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 388
    iget p1, p0, Lo/XH$Activity;->g:I

    const-string p2, "in_tc"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/XH$Activity;->f:I

    .line 389
    iget p1, p0, Lo/XH$Activity;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 390
    invoke-direct {p0}, Lo/XH$Activity;->e()V

    .line 391
    iget p1, p0, Lo/XH$Activity;->g:I

    const-string p2, "mColorConversion"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/XH$Activity;->n:I

    .line 392
    invoke-direct {p0}, Lo/XH$Activity;->e()V

    .line 393
    invoke-direct {p0}, Lo/XH$Activity;->b()V

    .line 394
    invoke-direct {p0}, Lo/XH$Activity;->e()V

    return-void
.end method
