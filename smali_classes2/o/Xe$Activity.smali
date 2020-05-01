.class public final Lo/Xe$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Xe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Activity"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lo/Xe;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lo/Xe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lo/Xe$Activity;->c:Lo/Xe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lo/Xe$Activity;->e:Z

    return-void
.end method

.method private final a(Landroid/widget/SeekBar;I)V
    .locals 2

    .line 295
    iget-object v0, p0, Lo/Xe$Activity;->c:Lo/Xe;

    new-instance v1, Lo/Xe$Activity$StateListAnimator;

    invoke-direct {v1, p0, p1, p2}, Lo/Xe$Activity$StateListAnimator;-><init>(Lo/Xe$Activity;Landroid/widget/SeekBar;I)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, p2, v1}, Lo/Xe;->d(Lo/Xe;ILjava/lang/Runnable;)V

    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .locals 4

    .line 276
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 277
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->trickplayScrubberThumb:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 278
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget v2, p0, Lo/Xe$Activity;->a:I

    const/4 v3, 0x0

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 276
    :goto_0
    invoke-virtual {v0, v1, p1, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;ZZ)V

    return-void
.end method

.method private final c(F)Z
    .locals 1

    const/16 v0, -0x12c

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/16 v0, 0x12c

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

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


# virtual methods
.method public final a(Landroid/widget/SeekBar;Landroid/view/MotionEvent;I)Z
    .locals 4

    const-string v0, "seekbar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v1

    .line 259
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p2}, Lo/Xe$Activity;->c(F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 260
    iget-boolean p2, p0, Lo/Xe$Activity;->d:Z

    if-nez p2, :cond_2

    .line 261
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    .line 262
    invoke-direct {p0, p1, p2}, Lo/Xe$Activity;->a(Landroid/widget/SeekBar;I)V

    .line 263
    iput-boolean v2, p0, Lo/Xe$Activity;->d:Z

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0, p1, p3, v2}, Lo/Xe$Activity;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 267
    iput-boolean v1, p0, Lo/Xe$Activity;->d:Z

    :cond_2
    :goto_0
    return v2

    .line 241
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p2}, Lo/Xe$Activity;->c(F)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 243
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    .line 244
    invoke-virtual {p0, p1, p2, v2}, Lo/Xe$Activity;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 246
    :cond_4
    invoke-direct {p0, p1}, Lo/Xe$Activity;->c(Landroid/widget/SeekBar;)V

    .line 247
    invoke-virtual {p0, p1}, Lo/Xe$Activity;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return v2

    .line 252
    :cond_5
    iput-boolean v1, p0, Lo/Xe$Activity;->d:Z

    .line 253
    invoke-virtual {p0, p1}, Lo/Xe$Activity;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 254
    invoke-virtual {p0, p1, p3, v2}, Lo/Xe$Activity;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return v2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 182
    :cond_0
    iput p2, p0, Lo/Xe$Activity;->a:I

    .line 183
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iget p3, p0, Lo/Xe$Activity;->a:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p3, p0, Lo/Xe$Activity;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, p3, :cond_2

    .line 184
    iget-boolean p2, p0, Lo/Xe$Activity;->e:Z

    if-eqz p2, :cond_1

    .line 185
    iput-boolean v1, p0, Lo/Xe$Activity;->e:Z

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 191
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget p2, p0, Lo/Xe$Activity;->a:I

    if-lt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 193
    :goto_1
    iget-object p1, p0, Lo/Xe$Activity;->c:Lo/Xe;

    new-instance p2, Lo/UU$AssistContent;

    .line 194
    iget p3, p0, Lo/Xe$Activity;->a:I

    .line 195
    invoke-static {p1, p3}, Lo/Xe;->c(Lo/Xe;I)I

    move-result v1

    iget-object v2, p0, Lo/Xe$Activity;->c:Lo/Xe;

    invoke-virtual {v2}, Lo/Xe;->n()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 193
    invoke-direct {p2, p3, v1, v0}, Lo/UU$AssistContent;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Lo/Xe;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lo/Xe$Activity;->e:Z

    .line 203
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f689374bc6a7efaL    # 0.003

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lo/Xe$Activity;->b:I

    .line 205
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lo/Xe$Activity;->a:I

    .line 206
    iget-object p1, p0, Lo/Xe$Activity;->c:Lo/Xe;

    new-instance v0, Lo/UU$LoaderManager;

    iget v1, p0, Lo/Xe$Activity;->a:I

    iget-object v2, p0, Lo/Xe$Activity;->c:Lo/Xe;

    iget v3, p0, Lo/Xe$Activity;->a:I

    invoke-static {v2, v3}, Lo/Xe;->c(Lo/Xe;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lo/UU$LoaderManager;-><init>(II)V

    invoke-virtual {p1, v0}, Lo/Xe;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "fSeekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    instance-of v0, p1, Lo/RemoteViewsService;

    if-nez v0, :cond_0

    const-string p1, "PlayerFragment got not a Netflix seekbar!"

    const-string v0, "PlayerSeekbarUIView"

    .line 214
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lo/RemoteViewsService;

    invoke-virtual {v0}, Lo/RemoteViewsService;->getProgress()I

    move-result v0

    .line 220
    iget-boolean v1, p0, Lo/Xe$Activity;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 221
    iget-object v0, p0, Lo/Xe$Activity;->c:Lo/Xe;

    iget v1, p0, Lo/Xe$Activity;->a:I

    invoke-static {v0, v1}, Lo/Xe;->d(Lo/Xe;I)I

    move-result v0

    .line 222
    iput v2, p0, Lo/Xe$Activity;->a:I

    .line 224
    :cond_1
    check-cast p1, Lo/RemoteViewsService;

    invoke-virtual {p1, v0}, Lo/RemoteViewsService;->setProgress(I)V

    .line 225
    iget-object p1, p0, Lo/Xe$Activity;->c:Lo/Xe;

    new-instance v1, Lo/UU$ClipData;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lo/UU$ClipData;-><init>(ZIZ)V

    invoke-virtual {p1, v1}, Lo/Xe;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
