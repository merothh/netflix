.class Lo/XZ$TaskDescription;
.super Landroid/view/SurfaceView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field private final c:Landroid/graphics/Rect;

.field final synthetic d:Lo/XZ;

.field private final e:[I


# direct methods
.method public constructor <init>(Lo/XZ;Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    .line 35
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/XZ$TaskDescription;->c:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 32
    iput-object p1, p0, Lo/XZ$TaskDescription;->e:[I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    const-string v0, "MeasurableSurfaceView"

    const-string v1, "Measureable SurfaceView measure called. "

    .line 48
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 50
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 53
    iget-object v3, p0, Lo/XZ$TaskDescription;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lo/XZ$TaskDescription;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 54
    iget-object v3, p0, Lo/XZ$TaskDescription;->e:[I

    invoke-virtual {p0, v3}, Lo/XZ$TaskDescription;->getLocationOnScreen([I)V

    .line 55
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

    iget-object v4, p0, Lo/XZ$TaskDescription;->e:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/XZ$TaskDescription;->e:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v3}, Lo/XZ;->b(Lo/XZ;)I

    move-result v3

    .line 74
    iget-object v4, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v4}, Lo/XZ;->c(Lo/XZ;)I

    move-result v4

    .line 75
    iget-object v6, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v6}, Lo/XZ;->a(Lo/XZ;)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v8}, Lo/XZ;->b(Lo/XZ;)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 76
    iget-object v8, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v8}, Lo/XZ;->e(Lo/XZ;)I

    move-result v8

    int-to-double v8, v8

    iget-object v10, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v10}, Lo/XZ;->c(Lo/XZ;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 77
    iget-object v10, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v10}, Lo/XZ;->d(Lo/XZ;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 78
    iget-object v3, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v3}, Lo/XZ;->a(Lo/XZ;)I

    move-result v3

    .line 79
    iget-object v4, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v4}, Lo/XZ;->e(Lo/XZ;)I

    move-result v4

    .line 81
    :cond_0
    sget-object v10, Lo/XZ$5;->c:[I

    iget-object v11, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v11}, Lo/XZ;->h(Lo/XZ;)Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

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

    .line 134
    invoke-static {v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    const-string v5, "Zoomin but preserve aspect ratio ..."

    .line 114
    invoke-static {v0, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v5, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v5}, Lo/XZ;->b(Lo/XZ;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v5}, Lo/XZ;->c(Lo/XZ;)I

    move-result v5

    if-lez v5, :cond_9

    mul-int v5, v3, v2

    mul-int v10, v1, v4

    if-le v5, v10, :cond_2

    .line 117
    div-int v1, v5, v4

    goto :goto_0

    :cond_2
    if-ge v5, v10, :cond_3

    .line 119
    div-int v2, v10, v3

    .line 126
    :cond_3
    :goto_0
    iget-object v3, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v3}, Lo/XZ;->d(Lo/XZ;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v5, "Video content preserve aspect ratio"

    .line 94
    invoke-static {v0, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v5}, Lo/XZ;->b(Lo/XZ;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v5}, Lo/XZ;->c(Lo/XZ;)I

    move-result v5

    if-lez v5, :cond_9

    mul-int v5, v3, v2

    mul-int v10, v1, v4

    if-le v5, v10, :cond_5

    .line 97
    div-int v2, v10, v3

    goto :goto_1

    :cond_5
    if-ge v5, v10, :cond_6

    .line 99
    div-int v1, v5, v4

    .line 106
    :cond_6
    :goto_1
    iget-object v3, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v3}, Lo/XZ;->d(Lo/XZ;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 86
    invoke-static {v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v3, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v3}, Lo/XZ;->d(Lo/XZ;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v1, "Video image has crop"

    .line 88
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v0}, Lo/XZ;->b(Lo/XZ;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v1}, Lo/XZ;->a(Lo/XZ;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v1}, Lo/XZ;->b(Lo/XZ;)I

    move-result v1

    mul-int v1, v1, v0

    .line 90
    iget-object v0, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v0}, Lo/XZ;->c(Lo/XZ;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v2}, Lo/XZ;->e(Lo/XZ;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lo/XZ$TaskDescription;->d:Lo/XZ;

    invoke-static {v2}, Lo/XZ;->c(Lo/XZ;)I

    move-result v2

    mul-int v2, v2, v0

    goto :goto_3

    :cond_8
    const-string v3, "unsupported scale type"

    .line 83
    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_9
    :goto_3
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    return-void
.end method
