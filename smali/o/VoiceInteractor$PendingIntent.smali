.class public final Lo/VoiceInteractor$PendingIntent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PendingIntent"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/View;

.field h:Lo/Mode;

.field i:Landroid/view/View;

.field j:Landroid/view/ViewGroup;

.field k:Landroid/content/Context;

.field l:Z

.field m:Z

.field n:Lo/Bitmap;

.field o:Z

.field q:Landroid/os/Bundle;

.field r:Z

.field s:Z

.field public t:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 2323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2324
    iput p1, p0, Lo/VoiceInteractor$PendingIntent;->d:I

    const/4 p1, 0x0

    .line 2326
    iput-boolean p1, p0, Lo/VoiceInteractor$PendingIntent;->r:Z

    return-void
.end method


# virtual methods
.method a(Lo/Mode;)V
    .locals 2

    .line 2379
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2382
    iget-object v1, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    invoke-virtual {v0, v1}, Lo/Mode;->removeMenuPresenter(Lo/MediaController;)V

    .line 2384
    :cond_1
    iput-object p1, p0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-eqz p1, :cond_2

    .line 2386
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lo/Mode;->addMenuPresenter(Lo/MediaController;)V

    :cond_2
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 4

    .line 2347
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2349
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2352
    sget v2, Lo/LoaderManager$StateListAnimator;->d:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2353
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 2354
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2358
    :cond_0
    sget v2, Lo/LoaderManager$StateListAnimator;->H:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2359
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 2360
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 2362
    :cond_1
    sget v0, Lo/LoaderManager$LoaderManager;->e:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2365
    :goto_0
    new-instance v0, Lo/IntentSender;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lo/IntentSender;-><init>(Landroid/content/Context;I)V

    .line 2366
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2368
    iput-object v0, p0, Lo/VoiceInteractor$PendingIntent;->k:Landroid/content/Context;

    .line 2370
    sget-object p1, Lo/LoaderManager$Dialog;->aE:[I

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2371
    sget v0, Lo/LoaderManager$Dialog;->aI:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/VoiceInteractor$PendingIntent;->b:I

    .line 2373
    sget v0, Lo/LoaderManager$Dialog;->aL:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/VoiceInteractor$PendingIntent;->f:I

    .line 2375
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method d(Lo/MediaController$StateListAnimator;)Lo/Drawable;
    .locals 3

    .line 2391
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2393
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    if-nez v0, :cond_1

    .line 2394
    new-instance v0, Lo/Bitmap;

    iget-object v1, p0, Lo/VoiceInteractor$PendingIntent;->k:Landroid/content/Context;

    sget v2, Lo/LoaderManager$PendingIntent;->m:I

    invoke-direct {v0, v1, v2}, Lo/Bitmap;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    .line 2396
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    invoke-virtual {v0, p1}, Lo/Bitmap;->setCallback(Lo/MediaController$StateListAnimator;)V

    .line 2397
    iget-object p1, p0, Lo/VoiceInteractor$PendingIntent;->h:Lo/Mode;

    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    invoke-virtual {p1, v0}, Lo/Mode;->addMenuPresenter(Lo/MediaController;)V

    .line 2400
    :cond_1
    iget-object p1, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->j:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lo/Bitmap;->d(Landroid/view/ViewGroup;)Lo/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 3

    .line 2330
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->g:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2331
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->i:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 2333
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor$PendingIntent;->n:Lo/Bitmap;

    invoke-virtual {v0}, Lo/Bitmap;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
