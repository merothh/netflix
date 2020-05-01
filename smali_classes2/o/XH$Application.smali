.class public Lo/XH$Application;
.super Landroid/opengl/GLSurfaceView;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/ext/av1/AV1OutputBufferRenderer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Application"
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field final synthetic c:Lo/XH;

.field private final d:[I

.field private final e:Lo/XH$Activity;


# direct methods
.method public constructor <init>(Lo/XH;IILandroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 61
    invoke-direct/range {v0 .. v5}, Lo/XH$Application;-><init>(Lo/XH;IILandroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lo/XH;IILandroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/XH$Application;->c:Lo/XH;

    .line 65
    invoke-direct {p0, p4, p5}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lo/XH$Application;->b:Landroid/graphics/Rect;

    const/4 p4, 0x2

    new-array p5, p4, [I

    .line 58
    iput-object p5, p0, Lo/XH$Application;->d:[I

    .line 66
    invoke-static {p1, p2}, Lo/XH;->c(Lo/XH;I)I

    .line 67
    invoke-static {p1, p3}, Lo/XH;->a(Lo/XH;I)I

    .line 68
    new-instance p1, Lo/XH$Activity;

    invoke-direct {p1}, Lo/XH$Activity;-><init>()V

    iput-object p1, p0, Lo/XH$Application;->e:Lo/XH$Activity;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lo/XH$Application;->setPreserveEGLContextOnPause(Z)V

    .line 70
    invoke-virtual {p0, p4}, Lo/XH$Application;->setEGLContextClientVersion(I)V

    .line 71
    iget-object p1, p0, Lo/XH$Application;->e:Lo/XH$Activity;

    invoke-virtual {p0, p1}, Lo/XH$Application;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lo/XH$Application;->setRenderMode(I)V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v0}, Lo/XH;->d(Lo/XH;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v0}, Lo/XH;->b(Lo/XH;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    const-string v0, "AV1VideoSurfaceView"

    const-string v1, "Measureable SurfaceView measure called. "

    .line 87
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 89
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 91
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 92
    iget-object v3, p0, Lo/XH$Application;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lo/XH$Application;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 93
    iget-object v3, p0, Lo/XH$Application;->d:[I

    invoke-virtual {p0, v3}, Lo/XH$Application;->getLocationOnScreen([I)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", start coordinates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/XH$Application;->d:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/XH$Application;->d:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v3, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v3}, Lo/XH;->a(Lo/XH;)I

    move-result v3

    .line 97
    iget-object v4, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v4}, Lo/XH;->c(Lo/XH;)I

    move-result v4

    .line 98
    iget-object v6, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v6}, Lo/XH;->b(Lo/XH;)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v8}, Lo/XH;->a(Lo/XH;)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 99
    iget-object v8, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v8}, Lo/XH;->d(Lo/XH;)I

    move-result v8

    int-to-double v8, v8

    iget-object v10, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v10}, Lo/XH;->c(Lo/XH;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 100
    invoke-direct {p0}, Lo/XH$Application;->e()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 101
    iget-object v3, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v3}, Lo/XH;->b(Lo/XH;)I

    move-result v3

    .line 102
    iget-object v4, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v4}, Lo/XH;->d(Lo/XH;)I

    move-result v4

    .line 104
    :cond_0
    sget-object v10, Lo/XH$2;->a:[I

    iget-object v11, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v11}, Lo/XH;->e(Lo/XH;)Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v5, :cond_8

    const/4 v5, 0x2

    if-eq v10, v5, :cond_7

    const/4 v5, 0x3

    const-string v11, "scaley="

    const-string v12, "Video image has crop, scalex="

    if-eq v10, v5, :cond_4

    const/4 v5, 0x4

    if-eq v10, v5, :cond_1

    const-string v3, "unsupporte scale type"

    .line 157
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    const-string v5, "Zoomin but preserve aspect ratio ..."

    .line 137
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v5, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v5}, Lo/XH;->a(Lo/XH;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v5}, Lo/XH;->c(Lo/XH;)I

    move-result v5

    if-lez v5, :cond_9

    mul-int v5, v3, v2

    mul-int v10, v1, v4

    if-le v5, v10, :cond_2

    .line 140
    div-int v1, v5, v4

    goto :goto_0

    :cond_2
    if-ge v5, v10, :cond_3

    .line 142
    div-int v2, v10, v3

    .line 149
    :cond_3
    :goto_0
    invoke-direct {p0}, Lo/XH$Application;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v5, "Video content preserve aspect ratio"

    .line 117
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v5, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v5}, Lo/XH;->a(Lo/XH;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v5}, Lo/XH;->c(Lo/XH;)I

    move-result v5

    if-lez v5, :cond_9

    mul-int v5, v3, v2

    mul-int v10, v1, v4

    if-le v5, v10, :cond_5

    .line 120
    div-int v2, v10, v3

    goto :goto_1

    :cond_5
    if-ge v5, v10, :cond_6

    .line 122
    div-int v1, v5, v4

    .line 129
    :cond_6
    :goto_1
    invoke-direct {p0}, Lo/XH$Application;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    int-to-double v0, v1

    div-double/2addr v0, v6

    double-to-int v1, v0

    int-to-double v2, v2

    div-double/2addr v2, v8

    double-to-int v2, v2

    goto :goto_3

    :cond_7
    const-string v3, "Video content to fit the view"

    .line 109
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lo/XH$Application;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v1, "Video image has crop"

    .line 111
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v0}, Lo/XH;->a(Lo/XH;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v1}, Lo/XH;->b(Lo/XH;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v1}, Lo/XH;->a(Lo/XH;)I

    move-result v1

    mul-int v1, v1, v0

    .line 113
    iget-object v0, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v0}, Lo/XH;->c(Lo/XH;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v2}, Lo/XH;->d(Lo/XH;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lo/XH$Application;->c:Lo/XH;

    invoke-static {v2}, Lo/XH;->c(Lo/XH;)I

    move-result v2

    mul-int v2, v2, v0

    goto :goto_3

    :cond_8
    const-string v3, "unsupported scale type"

    .line 106
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_9
    :goto_3
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    return-void
.end method

.method public setOutputBuffer(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lo/XH$Application;->e:Lo/XH$Activity;

    invoke-virtual {v0, p1}, Lo/XH$Activity;->a(Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderOutputBuffer;)V

    .line 78
    invoke-virtual {p0}, Lo/XH$Application;->requestRender()V

    return-void
.end method
