.class final Lo/Process$StateListAnimator;
.super Lo/NoSuchFieldError$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/lang/String;

.field final synthetic c:Lo/Process;

.field private d:I

.field private final e:Ljava/lang/String;

.field private h:Lo/Process$TaskDescription;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lo/Process;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lo/Process$StateListAnimator;->c:Lo/Process;

    invoke-direct {p0}, Lo/NoSuchFieldError$ActionBar;-><init>()V

    const/4 p1, -0x1

    .line 349
    iput p1, p0, Lo/Process$StateListAnimator;->d:I

    .line 356
    iput-object p2, p0, Lo/Process$StateListAnimator;->b:Ljava/lang/String;

    .line 357
    iput-object p3, p0, Lo/Process$StateListAnimator;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 377
    iget-object v0, p0, Lo/Process$StateListAnimator;->h:Lo/Process$TaskDescription;

    if-eqz v0, :cond_0

    .line 378
    iget v1, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {v0, v1}, Lo/Process$TaskDescription;->c(I)V

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lo/Process$StateListAnimator;->h:Lo/Process$TaskDescription;

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lo/Process$StateListAnimator;->j:I

    :cond_0
    return-void
.end method

.method public a(Lo/Process$TaskDescription;)V
    .locals 2

    .line 361
    iput-object p1, p0, Lo/Process$StateListAnimator;->h:Lo/Process$TaskDescription;

    .line 362
    iget-object v0, p0, Lo/Process$StateListAnimator;->b:Ljava/lang/String;

    iget-object v1, p0, Lo/Process$StateListAnimator;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/Process$TaskDescription;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/Process$StateListAnimator;->j:I

    .line 363
    iget-boolean v0, p0, Lo/Process$StateListAnimator;->a:Z

    if-eqz v0, :cond_1

    .line 364
    iget v0, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {p1, v0}, Lo/Process$TaskDescription;->d(I)V

    .line 365
    iget v0, p0, Lo/Process$StateListAnimator;->d:I

    if-ltz v0, :cond_0

    .line 366
    iget v1, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {p1, v1, v0}, Lo/Process$TaskDescription;->d(II)V

    const/4 v0, -0x1

    .line 367
    iput v0, p0, Lo/Process$StateListAnimator;->d:I

    .line 369
    :cond_0
    iget v0, p0, Lo/Process$StateListAnimator;->i:I

    if-eqz v0, :cond_1

    .line 370
    iget v1, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {p1, v1, v0}, Lo/Process$TaskDescription;->c(II)V

    const/4 p1, 0x0

    .line 371
    iput p1, p0, Lo/Process$StateListAnimator;->i:I

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 386
    iget-object v0, p0, Lo/Process$StateListAnimator;->c:Lo/Process;

    invoke-virtual {v0, p0}, Lo/Process;->c(Lo/Process$StateListAnimator;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 422
    iget-object v0, p0, Lo/Process$StateListAnimator;->h:Lo/Process$TaskDescription;

    if-eqz v0, :cond_0

    .line 423
    iget v1, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {v0, v1, p1}, Lo/Process$TaskDescription;->c(II)V

    goto :goto_0

    .line 425
    :cond_0
    iget v0, p0, Lo/Process$StateListAnimator;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/Process$StateListAnimator;->i:I

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, v0}, Lo/Process$StateListAnimator;->e(I)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 412
    iget-object v0, p0, Lo/Process$StateListAnimator;->h:Lo/Process$TaskDescription;

    if-eqz v0, :cond_0

    .line 413
    iget v1, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {v0, v1, p1}, Lo/Process$TaskDescription;->d(II)V

    goto :goto_0

    .line 415
    :cond_0
    iput p1, p0, Lo/Process$StateListAnimator;->d:I

    const/4 p1, 0x0

    .line 416
    iput p1, p0, Lo/Process$StateListAnimator;->i:I

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lo/Process$StateListAnimator;->a:Z

    .line 392
    iget-object v0, p0, Lo/Process$StateListAnimator;->h:Lo/Process$TaskDescription;

    if-eqz v0, :cond_0

    .line 393
    iget v1, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {v0, v1}, Lo/Process$TaskDescription;->d(I)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lo/Process$StateListAnimator;->a:Z

    .line 405
    iget-object v0, p0, Lo/Process$StateListAnimator;->h:Lo/Process$TaskDescription;

    if-eqz v0, :cond_0

    .line 406
    iget v1, p0, Lo/Process$StateListAnimator;->j:I

    invoke-virtual {v0, v1, p1}, Lo/Process$TaskDescription;->a(II)V

    :cond_0
    return-void
.end method
