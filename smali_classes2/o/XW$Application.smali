.class Lo/XW$Application;
.super Landroid/view/TextureView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/XW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic d:Lo/XW;


# direct methods
.method public constructor <init>(Lo/XW;Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lo/XW$Application;->d:Lo/XW;

    .line 33
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    const-string v0, "MeasurableTextureView"

    const-string v1, "Measureable TextureView measure called. "

    .line 50
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 56
    iget-object v3, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v3}, Lo/XW;->b(Lo/XW;)I

    move-result v3

    .line 57
    iget-object v4, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v4}, Lo/XW;->d(Lo/XW;)I

    move-result v4

    .line 58
    iget-object v5, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v5}, Lo/XW;->a(Lo/XW;)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v7}, Lo/XW;->b(Lo/XW;)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    .line 59
    iget-object v7, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v7}, Lo/XW;->c(Lo/XW;)I

    move-result v7

    int-to-double v7, v7

    iget-object v9, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v9}, Lo/XW;->d(Lo/XW;)I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    .line 60
    iget-object v9, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v9}, Lo/XW;->e(Lo/XW;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 61
    iget-object v3, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v3}, Lo/XW;->a(Lo/XW;)I

    move-result v3

    .line 62
    iget-object v4, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v4}, Lo/XW;->c(Lo/XW;)I

    move-result v4

    .line 64
    :cond_0
    sget-object v9, Lo/XW$3;->b:[I

    iget-object v10, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v10}, Lo/XW;->g(Lo/XW;)Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    const-string v11, "scaley="

    const-string v12, "Video image has crop, scalex="

    if-eq v9, v10, :cond_4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    const-string v3, "unsupported scale type"

    .line 105
    invoke-static {v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    const-string v9, "Zoomin but preserve aspect ratio ..."

    .line 85
    invoke-static {v0, v9}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v9, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v9}, Lo/XW;->b(Lo/XW;)I

    move-result v9

    if-lez v9, :cond_7

    iget-object v9, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v9}, Lo/XW;->d(Lo/XW;)I

    move-result v9

    if-lez v9, :cond_7

    mul-int v9, v3, v2

    mul-int v10, v1, v4

    if-le v9, v10, :cond_2

    .line 88
    div-int v1, v9, v4

    goto :goto_0

    :cond_2
    if-ge v9, v10, :cond_3

    .line 90
    div-int v2, v10, v3

    .line 97
    :cond_3
    :goto_0
    iget-object v3, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v3}, Lo/XW;->e(Lo/XW;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 66
    :cond_4
    iget-object v9, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v9}, Lo/XW;->b(Lo/XW;)I

    move-result v9

    if-lez v9, :cond_7

    iget-object v9, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v9}, Lo/XW;->d(Lo/XW;)I

    move-result v9

    if-lez v9, :cond_7

    mul-int v9, v3, v2

    mul-int v10, v1, v4

    if-le v9, v10, :cond_5

    .line 68
    div-int v2, v10, v3

    goto :goto_1

    :cond_5
    if-ge v9, v10, :cond_6

    .line 70
    div-int v1, v9, v4

    .line 77
    :cond_6
    :goto_1
    iget-object v3, p0, Lo/XW$Application;->d:Lo/XW;

    invoke-static {v3}, Lo/XW;->e(Lo/XW;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    int-to-double v0, v1

    div-double/2addr v0, v5

    double-to-int v1, v0

    int-to-double v2, v2

    div-double/2addr v2, v7

    double-to-int v2, v2

    .line 107
    :cond_7
    :goto_3
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method
