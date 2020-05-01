.class public Lo/BaseAdapter;
.super Lo/NetworkMetrics;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/NetworkMetrics;-><init>(Landroid/content/Context;)V

    .line 36
    sget p1, Lo/TagLostException$ActionBar;->d:I

    iput p1, p0, Lo/BaseAdapter;->a:I

    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lo/BaseAdapter;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lo/NetworkMetrics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget p1, Lo/TagLostException$ActionBar;->d:I

    iput p1, p0, Lo/BaseAdapter;->a:I

    .line 47
    invoke-direct {p0, p2}, Lo/BaseAdapter;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lo/NetworkMetrics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget p1, Lo/TagLostException$ActionBar;->d:I

    iput p1, p0, Lo/BaseAdapter;->a:I

    .line 52
    invoke-direct {p0, p2}, Lo/BaseAdapter;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lo/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/TagLostException$TaskDescription;->h:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget v0, Lo/TagLostException$TaskDescription;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lo/BaseAdapter;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lo/BaseAdapter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lo/BaseAdapter;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/BaseAdapter;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    sget v0, Lo/TagLostException$TaskDescription;->j:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/BaseAdapter;->e:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static c(Landroid/widget/ImageView;)V
    .locals 2

    .line 234
    sget v0, Lo/TagLostException$StateListAnimator;->e:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 236
    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    .line 237
    sget v0, Lo/TagLostException$StateListAnimator;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private h()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 2

    .line 244
    :try_start_0
    const-class v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 247
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "ImageLoader not ready during lookup"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Lo/DigitalClock;
    .locals 1

    .line 79
    sget v0, Lo/TagLostException$StateListAnimator;->c:I

    invoke-virtual {p0, v0}, Lo/BaseAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DigitalClock;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void
.end method

.method public c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V
    .locals 2

    .line 259
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lo/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lo/Serializable;

    invoke-static {v0, v1}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Serializable;

    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Lo/Serializable;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    .line 262
    :cond_0
    sget-object v0, Lo/FormatException;->c:Lo/FormatException$ActionBar;

    invoke-virtual {p0}, Lo/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FormatException$ActionBar;->a(Landroid/content/Context;)Lo/FormatException;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a()Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lo/FormatException;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Lo/NetworkMetrics;->draw(Landroid/graphics/Canvas;)V

    .line 179
    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 149
    invoke-super {p0}, Lo/NetworkMetrics;->drawableStateChanged()V

    .line 150
    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lo/BaseAdapter;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lo/BaseAdapter;->h()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lo/BaseAdapter;->a()Lo/DigitalClock;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, v1, Lo/DigitalClock;->c:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-interface {v0, p0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/mediaclient/api/res/AssetType;)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 207
    invoke-virtual {p0}, Lo/BaseAdapter;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lo/BaseAdapter;->a()Lo/DigitalClock;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 214
    :cond_1
    iget-boolean v0, v0, Lo/DigitalClock;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lo/BaseAdapter;->j()V

    .line 230
    invoke-static {p0}, Lo/BaseAdapter;->c(Landroid/widget/ImageView;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 268
    sget-object v0, Lo/FormatException;->c:Lo/FormatException$ActionBar;

    invoke-virtual {p0}, Lo/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/FormatException$ActionBar;->a(Landroid/content/Context;)Lo/FormatException;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/FormatException;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 141
    invoke-super {p0}, Lo/NetworkMetrics;->jumpDrawablesToCurrentState()V

    .line 142
    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 157
    invoke-super {p0, p1, p2}, Lo/NetworkMetrics;->onMeasure(II)V

    .line 158
    iget-boolean p1, p0, Lo/BaseAdapter;->e:Z

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lo/BaseAdapter;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lo/BaseAdapter;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/BaseAdapter;->setMeasuredDimension(II)V

    .line 161
    :cond_0
    iget-object p1, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lo/BaseAdapter;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lo/BaseAdapter;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    invoke-virtual {p0}, Lo/BaseAdapter;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Lo/NetworkMetrics;->onSizeChanged(IIII)V

    .line 170
    iget-object p3, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 171
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    invoke-virtual {p0}, Lo/BaseAdapter;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 189
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 193
    :cond_2
    invoke-super {p0, p1}, Lo/NetworkMetrics;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 118
    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/BaseAdapter;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_1
    iput-object p1, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lo/BaseAdapter;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 130
    :cond_2
    invoke-virtual {p0}, Lo/BaseAdapter;->requestLayout()V

    .line 131
    invoke-virtual {p0}, Lo/BaseAdapter;->invalidate()V

    return-void
.end method

.method public setForegroundResource(I)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lo/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/BaseAdapter;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageLoaderInfo(Lo/DigitalClock;)V
    .locals 1

    .line 74
    sget v0, Lo/TagLostException$StateListAnimator;->c:I

    invoke-virtual {p0, v0, p1}, Lo/BaseAdapter;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lo/NetworkMetrics;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/BaseAdapter;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
