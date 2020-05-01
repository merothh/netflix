.class public Lo/RemoteViews;
.super Lo/EdgeEffect;
.source ""


# instance fields
.field private b:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lo/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)I
    .locals 4

    .line 108
    invoke-virtual {p0}, Lo/RemoteViews;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lo/RemoteViews;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lo/RemoteViews;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 113
    invoke-virtual {p0}, Lo/RemoteViews;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lo/RemoteViews;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lo/RemoteViews;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 120
    :goto_0
    invoke-virtual {p0}, Lo/RemoteViews;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr p1, v3

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lo/RemoteViews;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 83
    invoke-virtual {p0}, Lo/RemoteViews;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lo/RemoteViews;->c(Landroid/view/MotionEvent;)I

    move-result v0

    .line 94
    iget-object v1, p0, Lo/RemoteViews;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    instance-of v2, v1, Lo/Xe$Activity;

    if-eqz v2, :cond_1

    check-cast v1, Lo/Xe$Activity;

    .line 95
    invoke-virtual {v1, p0, p1, v0}, Lo/Xe$Activity;->a(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_1
    invoke-super {p0, p1}, Lo/EdgeEffect;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lo/RemoteViews;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 75
    invoke-super {p0, p1}, Lo/EdgeEffect;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
