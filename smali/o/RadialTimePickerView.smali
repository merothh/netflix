.class public Lo/RadialTimePickerView;
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
        Lo/RadialTimePickerView$ActionBar;,
        Lo/RadialTimePickerView$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/Rect;

.field private e:Z

.field private g:Z

.field private h:Z

.field private i:Lo/RadialTimePickerView$StateListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lo/RadialTimePickerView;->b:I

    .line 42
    invoke-direct {p0}, Lo/RadialTimePickerView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lo/RadialTimePickerView;->b:I

    .line 47
    invoke-direct {p0}, Lo/RadialTimePickerView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lo/RadialTimePickerView;->b:I

    .line 52
    invoke-direct {p0}, Lo/RadialTimePickerView;->c()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lo/RadialTimePickerView;->e:Z

    .line 175
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getProgress()I

    move-result v0

    iput v0, p0, Lo/RadialTimePickerView;->b:I

    .line 176
    invoke-virtual {p0}, Lo/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 139
    iget-object v0, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lo/RadialTimePickerView;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 141
    iget v0, p0, Lo/RadialTimePickerView;->b:I

    invoke-direct {p0, v0}, Lo/RadialTimePickerView;->d(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getThumbOffset()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 142
    iget-object v1, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 143
    iget-object v1, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 145
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 146
    iget-object v3, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 147
    iget-object v4, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 148
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lo/RadialTimePickerView;->d:Landroid/graphics/Rect;

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getThumbOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    iget-object v0, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lo/RadialTimePickerView;->d:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lo/RadialTimePickerView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/RadialTimePickerView;->a()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lo/RadialTimePickerView;->setSplitTrack(Z)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lo/RadialTimePickerView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getThumbOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    iget-object v0, p0, Lo/RadialTimePickerView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lo/RadialTimePickerView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/RadialTimePickerView;->e()V

    return-void
.end method

.method private d(I)F
    .locals 2

    .line 205
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getWidth()I

    move-result v0

    .line 206
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int v0, v0, p1

    .line 207
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getMax()I

    move-result p1

    div-int/2addr v0, p1

    int-to-float p1, v0

    return p1
.end method

.method private d(Landroid/view/MotionEvent;)I
    .locals 4

    .line 187
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getWidth()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 192
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 199
    :goto_0
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr p1, v3

    float-to-int p1, p1

    return p1
.end method

.method static synthetic d(Lo/RadialTimePickerView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lo/RadialTimePickerView;->g:Z

    return p0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lo/RadialTimePickerView;->e:Z

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lo/RadialTimePickerView;->d:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 182
    iput v0, p0, Lo/RadialTimePickerView;->b:I

    .line 183
    invoke-virtual {p0}, Lo/RadialTimePickerView;->invalidate()V

    return-void
.end method


# virtual methods
.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/RadialTimePickerView;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-boolean v0, p0, Lo/RadialTimePickerView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lo/RadialTimePickerView;->a(Landroid/graphics/Canvas;)V

    .line 134
    invoke-direct {p0, p1}, Lo/RadialTimePickerView;->c(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lo/RadialTimePickerView;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lo/RadialTimePickerView;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 101
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getThumbOffset()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 102
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lo/RadialTimePickerView;->getThumbOffset()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-boolean v2, p0, Lo/RadialTimePickerView;->h:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 116
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 118
    invoke-direct {p0, p1}, Lo/RadialTimePickerView;->d(Landroid/view/MotionEvent;)I

    move-result v1

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    :cond_2
    iget-object p1, p0, Lo/RadialTimePickerView;->i:Lo/RadialTimePickerView$StateListAnimator;

    if-eqz p1, :cond_3

    .line 120
    invoke-static {p1, v1}, Lo/RadialTimePickerView$StateListAnimator;->c(Lo/RadialTimePickerView$StateListAnimator;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 122
    iget p1, p0, Lo/RadialTimePickerView;->b:I

    invoke-virtual {p0, p1}, Lo/RadialTimePickerView;->setProgress(I)V

    :cond_3
    return v0
.end method

.method public setDisableTrackTouching(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lo/RadialTimePickerView;->h:Z

    return-void
.end method

.method public setScrubberDentBitmap(I)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lo/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/RadialTimePickerView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SnappableSeekBar"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setShouldSnapToTouchStartPosition(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lo/RadialTimePickerView;->g:Z

    return-void
.end method

.method public setSnappableOnSeekBarChangeListener(Lo/RadialTimePickerView$ActionBar;)V
    .locals 1

    .line 89
    new-instance v0, Lo/RadialTimePickerView$StateListAnimator;

    invoke-direct {v0, p0, p1}, Lo/RadialTimePickerView$StateListAnimator;-><init>(Lo/RadialTimePickerView;Lo/RadialTimePickerView$ActionBar;)V

    iput-object v0, p0, Lo/RadialTimePickerView;->i:Lo/RadialTimePickerView$StateListAnimator;

    .line 90
    iget-object p1, p0, Lo/RadialTimePickerView;->i:Lo/RadialTimePickerView$StateListAnimator;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lo/RadialTimePickerView;->c:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
