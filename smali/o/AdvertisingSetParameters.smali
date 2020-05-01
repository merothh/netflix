.class public Lo/AdvertisingSetParameters;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/PeriodicAdvertisingParameters$ActionBar;
.implements Landroid/graphics/drawable/Animatable;
.implements Lo/EncodedKeySpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AdvertisingSetParameters$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/AdvertisingSetParameters$TaskDescription;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/Rect;

.field private g:I

.field private h:Z

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/EncodedKeySpec$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/BackupManager;Lo/RestoreObserver;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/BackupManager;",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 146
    new-instance v0, Lo/AdvertisingSetParameters$TaskDescription;

    new-instance v8, Lo/PeriodicAdvertisingParameters;

    .line 150
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lo/PeriodicAdvertisingParameters;-><init>(Lcom/bumptech/glide/Glide;Lo/BackupManager;IILo/RestoreObserver;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lo/AdvertisingSetParameters$TaskDescription;-><init>(Lo/PeriodicAdvertisingParameters;)V

    .line 146
    invoke-direct {p0, v0}, Lo/AdvertisingSetParameters;-><init>(Lo/AdvertisingSetParameters$TaskDescription;)V

    return-void
.end method

.method constructor <init>(Lo/AdvertisingSetParameters$TaskDescription;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lo/AdvertisingSetParameters;->c:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lo/AdvertisingSetParameters;->g:I

    .line 159
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AdvertisingSetParameters$TaskDescription;

    iput-object p1, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    return-void
.end method

.method private h()V
    .locals 3

    .line 236
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lo/FeatureInfo;->c(ZLjava/lang/String;)V

    .line 239
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->i()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->invalidateSelf()V

    goto :goto_0

    .line 241
    :cond_0
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->e:Z

    if-nez v0, :cond_1

    .line 242
    iput-boolean v1, p0, Lo/AdvertisingSetParameters;->e:Z

    .line 243
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0, p0}, Lo/PeriodicAdvertisingParameters;->d(Lo/PeriodicAdvertisingParameters$ActionBar;)V

    .line 244
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lo/AdvertisingSetParameters;->e:Z

    .line 250
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0, p0}, Lo/PeriodicAdvertisingParameters;->e(Lo/PeriodicAdvertisingParameters$ActionBar;)V

    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lo/AdvertisingSetParameters;->i:I

    return-void
.end method

.method private k()Landroid/graphics/Rect;
    .locals 1

    .line 319
    iget-object v0, p0, Lo/AdvertisingSetParameters;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/AdvertisingSetParameters;->f:Landroid/graphics/Rect;

    .line 322
    :cond_0
    iget-object v0, p0, Lo/AdvertisingSetParameters;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 368
    iget-object v0, p0, Lo/AdvertisingSetParameters;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 369
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 370
    iget-object v2, p0, Lo/AdvertisingSetParameters;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/EncodedKeySpec$ActionBar;

    invoke-virtual {v2, p0}, Lo/EncodedKeySpec$ActionBar;->c(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .line 340
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 341
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 342
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private n()Landroid/graphics/Paint;
    .locals 2

    .line 326
    iget-object v0, p0, Lo/AdvertisingSetParameters;->j:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/AdvertisingSetParameters;->j:Landroid/graphics/Paint;

    .line 329
    :cond_0
    iget-object v0, p0, Lo/AdvertisingSetParameters;->j:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 202
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->d()I

    move-result v0

    return v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 1

    .line 188
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->h()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 169
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->b()I

    move-result v0

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .line 173
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 295
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 300
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lo/AdvertisingSetParameters;->k()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lo/AdvertisingSetParameters;->h:Z

    .line 304
    :cond_1
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->k()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lo/AdvertisingSetParameters;->n()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 192
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->i()I

    move-result v0

    return v0
.end method

.method public e(Lo/RestoreObserver;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0, p1, p2}, Lo/PeriodicAdvertisingParameters;->e(Lo/RestoreObserver;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lo/AdvertisingSetParameters;->d:Z

    .line 385
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->j()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->m()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->stop()V

    .line 351
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->invalidateSelf()V

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->invalidateSelf()V

    .line 357
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 358
    iget v0, p0, Lo/AdvertisingSetParameters;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/AdvertisingSetParameters;->i:I

    .line 361
    :cond_1
    iget v0, p0, Lo/AdvertisingSetParameters;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lo/AdvertisingSetParameters;->i:I

    if-lt v1, v0, :cond_2

    .line 362
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->l()V

    .line 363
    invoke-virtual {p0}, Lo/AdvertisingSetParameters;->stop()V

    :cond_2
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 377
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 274
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->a()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 269
    iget-object v0, p0, Lo/AdvertisingSetParameters;->a:Lo/AdvertisingSetParameters$TaskDescription;

    iget-object v0, v0, Lo/AdvertisingSetParameters$TaskDescription;->d:Lo/PeriodicAdvertisingParameters;

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters;->e()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->e:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 289
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lo/AdvertisingSetParameters;->h:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 310
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->n()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 315
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->n()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 255
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lo/FeatureInfo;->c(ZLjava/lang/String;)V

    .line 258
    iput-boolean p1, p0, Lo/AdvertisingSetParameters;->c:Z

    if-nez p1, :cond_0

    .line 260
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->i()V

    goto :goto_0

    .line 261
    :cond_0
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->b:Z

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->h()V

    .line 264
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lo/AdvertisingSetParameters;->b:Z

    .line 223
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->j()V

    .line 224
    iget-boolean v0, p0, Lo/AdvertisingSetParameters;->c:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->h()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lo/AdvertisingSetParameters;->b:Z

    .line 232
    invoke-direct {p0}, Lo/AdvertisingSetParameters;->i()V

    return-void
.end method
