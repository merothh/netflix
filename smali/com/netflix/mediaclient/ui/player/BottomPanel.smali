.class public final Lcom/netflix/mediaclient/ui/player/BottomPanel;
.super Lcom/netflix/mediaclient/ui/player/PlayerSection;
.source "BottomPanel.java"


# static fields
.field private static final EXTRA_HANDLER_ANIMATION_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field private bottomGradient:Landroid/view/View;

.field protected bottomPanel:Landroid/view/View;

.field protected currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

.field private currentTimeProgress:I

.field protected durationLabel:Landroid/widget/TextView;

.field private extraSeekbarHandler:Landroid/view/View;

.field protected formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

.field private mZoomEnabled:Z

.field protected mdxSid:Ljava/lang/String;

.field protected media:Landroid/widget/ImageButton;

.field protected skipBack:Landroid/widget/ImageButton;

.field protected timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

.field protected timelineWasPreviouslyRendered:I

.field private videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field protected zoom:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSection;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    .line 127
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->init(Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    .line 128
    return-void
.end method

.method public static calculateTimelineMargin(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I
    .locals 4

    .prologue
    .line 277
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 278
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getLocationOnScreen([I)V

    .line 280
    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->computeXOffsetFromProgress(J)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 281
    return v0
.end method

.method private init(Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 133
    const v0, 0x7f0f029c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0f0298

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    .line 135
    const v0, 0x7f0f0294

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomGradient:Landroid/view/View;

    .line 137
    const v0, 0x7f0f029b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    .line 138
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v3

    iget v3, v3, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->timelineThumbOffsetInDip:I

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setThumbOffset(I)V

    .line 143
    const v0, 0x7f0f0299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->playPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f0f029a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->skipBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0f029d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->zoomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0f02a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->newInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    .line 155
    return-void
.end method

.method public static playExtraHandlerAnimation(ILjava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)V
    .locals 5

    .prologue
    .line 296
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 297
    invoke-static {p4, p0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->calculateTimelineMargin(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    .line 299
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 300
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 301
    new-instance v2, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;

    invoke-direct {v2, v0, p3}, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 309
    new-instance v0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;

    invoke-direct {v0, p2, p3, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;-><init>(Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 335
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 336
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 337
    return-void
.end method


# virtual methods
.method public changeActionState(Z)V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->changeActionState(ZZ)V

    .line 203
    return-void
.end method

.method public changeActionState(ZZ)V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 208
    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setEnabled(Z)V

    .line 213
    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7f0e00fc

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    return-void

    .line 213
    :cond_1
    const v0, 0x7f0e005e

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    :cond_3
    return-void
.end method

.method public enableButtons(Z)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButton(Landroid/view/View;Z)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButton(Landroid/view/View;Z)V

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButton(Landroid/view/View;Z)V

    .line 225
    return-void
.end method

.method public finishDragging()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 467
    return-void
.end method

.method public getCurrentProgress()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTimeProgress:I

    return v0
.end method

.method public getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    return-object v0
.end method

.method public getFormatter()Lcom/netflix/mediaclient/util/TimeFormatterHelper;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    return-object v0
.end method

.method public getTimeXAndUpdateHandler(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTimeProgress:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->calculateTimelineMargin(Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I

    move-result v1

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 265
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    return v0
.end method

.method public getTimeline()Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    return-object v0
.end method

.method public declared-synchronized hide()V
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->hide()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomGradient:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->finishDragging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initProgress(I)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setMax(I)V

    .line 417
    :cond_0
    return-void
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playExtraHandlerAnimation(ILjava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)V

    .line 286
    return-void
.end method

.method public setMediaImage(Z)V
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->play:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 254
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->pause:I

    goto :goto_0
.end method

.method public setPlayPauseVisibility(I)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 354
    return-void
.end method

.method public setProgress(IIZZ)I
    .locals 3

    .prologue
    .line 375
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SetProgress: pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", updateSeekBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", forceUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 381
    :cond_1
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Ignoring setProgress"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 p1, 0x0

    .line 402
    :cond_2
    :goto_0
    return p1

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-lez p2, :cond_5

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    sub-int v2, p2, p1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_5
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTimeProgress:I

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateCurrentTime()V

    goto :goto_0

    .line 398
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "setProgress: bottomPanel is not visible, aborting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSeekbarTrackingEnabled(Z)V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setZoomEnabled(Z)V
    .locals 0

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    .line 426
    return-void
.end method

.method public setZoomImage(Z)V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->zoomIn:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 346
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->zoomOut:I

    goto :goto_0
.end method

.method public setZoomVisibility(I)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    .line 362
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized show()V
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->show()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomGradient:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateCurrentTime()V

    .line 179
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timelineWasPreviouslyRendered:I

    if-gtz v0, :cond_1

    .line 180
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Timeline was NOT visible before, its location is NOT known, delay until is rendered first time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    .line 182
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 183
    new-instance v2, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;-><init>(Lcom/netflix/mediaclient/ui/player/BottomPanel;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_1
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startDragging()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 460
    return-void
.end method
