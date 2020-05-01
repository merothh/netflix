.class Lo/SubmitInfo$Activity;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SubmitInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(Lo/BrightnessChangeEvent;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;II)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    .line 76
    iput p2, p0, Lo/SubmitInfo$Activity;->b:I

    .line 77
    iput p3, p0, Lo/SubmitInfo$Activity;->a:I

    return-void
.end method

.method private b(Lo/CompatibilityInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 89
    invoke-virtual {p1}, Lo/CompatibilityInfo;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyRequestMapper;

    if-eqz p1, :cond_5

    .line 94
    invoke-virtual {p1}, Lo/LegacyRequestMapper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    instance-of v0, p1, Lo/LegacyMetadataMapper;

    if-eqz v0, :cond_5

    .line 99
    check-cast p1, Lo/LegacyMetadataMapper;

    .line 100
    invoke-virtual {p1}, Lo/LegacyMetadataMapper;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 105
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 106
    iget v1, p0, Lo/SubmitInfo$Activity;->b:I

    if-ge v0, v1, :cond_3

    return-void

    .line 109
    :cond_3
    iget v1, p0, Lo/SubmitInfo$Activity;->a:I

    if-le v0, v1, :cond_4

    return-void

    .line 113
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Lo/CompatibilityInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lo/SubmitInfo$Activity;->b(Lo/CompatibilityInfo;)V

    .line 85
    invoke-virtual {p0}, Lo/SubmitInfo$Activity;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 65
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/SubmitInfo$Activity;->a(Lo/CompatibilityInfo;I)V

    return-void
.end method
