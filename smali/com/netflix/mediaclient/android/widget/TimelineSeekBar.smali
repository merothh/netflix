.class public Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;
.super Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;
.source "TimelineSeekBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_timelineseekbar"


# instance fields
.field private onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private touchEventToProgress(Landroid/view/MotionEvent;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingLeft()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    if-le v3, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public computeXOffsetFromProgress(J)F
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, p1

    long-to-float v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public hideThumb(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0xff

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->touchEventToProgress(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_timelineseekbar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;->handleTouchEvent(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
