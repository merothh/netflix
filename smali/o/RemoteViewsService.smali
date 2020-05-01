.class public final Lo/RemoteViewsService;
.super Landroid/widget/SeekBar;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RemoteViewsService$Activity;,
        Lo/RemoteViewsService$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/RemoteViewsService$StateListAnimator;


# instance fields
.field private a:Lo/RemoteViewsService$Activity;

.field private b:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RemoteViewsService$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RemoteViewsService$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/RemoteViewsService;->e:Lo/RemoteViewsService$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/RemoteViewsService;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/RemoteViewsService;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lo/RemoteViewsService;->setSplitTrack(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 26
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/RemoteViewsService;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final b(Landroid/view/MotionEvent;)I
    .locals 4

    .line 98
    invoke-virtual {p0}, Lo/RemoteViewsService;->getWidth()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 103
    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 110
    :goto_0
    invoke-virtual {p0}, Lo/RemoteViewsService;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr p1, v3

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public final d(J)F
    .locals 2

    .line 122
    invoke-virtual {p0}, Lo/RemoteViewsService;->getWidth()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    long-to-float p1, p1

    mul-float v0, v0, p1

    .line 124
    invoke-virtual {p0}, Lo/RemoteViewsService;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p0}, Lo/RemoteViewsService;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lo/RemoteViewsService;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e(Z)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lo/RemoteViewsService;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "this.thumb"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lo/RemoteViewsService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lo/RemoteViewsService;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 82
    sget-object v1, Lo/RemoteViewsService;->e:Lo/RemoteViewsService$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 84
    iget-object v1, p0, Lo/RemoteViewsService;->a:Lo/RemoteViewsService$Activity;

    if-eqz v1, :cond_1

    .line 86
    move-object v2, p0

    check-cast v2, Landroid/widget/SeekBar;

    invoke-interface {v1, v2, p1, v0}, Lo/RemoteViewsService$Activity;->c(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/RemoteViewsService;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 69
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final setUglySeekBarListener(Lo/RemoteViewsService$Activity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/RemoteViewsService;->a:Lo/RemoteViewsService$Activity;

    return-void
.end method
