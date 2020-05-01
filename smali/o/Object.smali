.class public final Lo/Object;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Object$StateListAnimator;,
        Lo/Object$Activity;,
        Lo/Object$TaskDescription;,
        Lo/Object$Application;,
        Lo/Object$ActionBar;,
        Lo/Object$PendingIntent;,
        Lo/Object$LoaderManager;
    }
.end annotation


# static fields
.field static a:Lo/Object$StateListAnimator;

.field static final c:Z


# instance fields
.field final b:Landroid/content/Context;

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Object$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouter"

    const/4 v1, 0x3

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lo/Object;->c:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Object;->d:Ljava/util/ArrayList;

    .line 236
    iput-object p1, p0, Lo/Object;->b:Landroid/content/Context;

    return-void
.end method

.method static b()V
    .locals 2

    .line 781
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)Lo/Object;
    .locals 2

    if-eqz p0, :cond_1

    .line 260
    invoke-static {}, Lo/Object;->b()V

    .line 262
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lo/Object$StateListAnimator;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Object$StateListAnimator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    .line 264
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0}, Lo/Object$StateListAnimator;->d()V

    .line 266
    :cond_0
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/Object$StateListAnimator;->d(Landroid/content/Context;)Lo/Object;

    move-result-object p0

    return-object p0

    .line 258
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d(Lo/Object$Application;)I
    .locals 3

    .line 644
    iget-object v0, p0, Lo/Object;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 646
    iget-object v2, p0, Lo/Object;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Object$Activity;

    iget-object v2, v2, Lo/Object$Activity;->b:Lo/Object$Application;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public b(Lo/OutOfMemoryError;I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 465
    invoke-static {}, Lo/Object;->b()V

    .line 467
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0, p1, p2}, Lo/Object$StateListAnimator;->b(Lo/OutOfMemoryError;I)Z

    move-result p1

    return p1

    .line 463
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lo/Object$LoaderManager;
    .locals 1

    .line 358
    invoke-static {}, Lo/Object;->b()V

    .line 359
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0}, Lo/Object$StateListAnimator;->a()Lo/Object$LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2

    .line 766
    sget-boolean v0, Lo/Object;->c:Z

    if-eqz v0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMediaSessionCompat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/Object$StateListAnimator;->b(Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method

.method public d()Lo/Object$LoaderManager;
    .locals 1

    .line 297
    invoke-static {}, Lo/Object;->b()V

    .line 298
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0}, Lo/Object$StateListAnimator;->e()Lo/Object$LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public d(Lo/Object$LoaderManager;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 401
    invoke-static {}, Lo/Object;->b()V

    .line 403
    sget-boolean v0, Lo/Object;->c:Z

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0, p1}, Lo/Object$StateListAnimator;->e(Lo/Object$LoaderManager;)V

    return-void

    .line 399
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Object$LoaderManager;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {}, Lo/Object;->b()V

    .line 275
    sget-object v0, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {v0}, Lo/Object$StateListAnimator;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Lo/Object$Application;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 630
    invoke-static {}, Lo/Object;->b()V

    .line 632
    sget-boolean v0, Lo/Object;->c:Z

    if-eqz v0, :cond_0

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    invoke-direct {p0, p1}, Lo/Object;->d(Lo/Object$Application;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 638
    iget-object v0, p0, Lo/Object;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 639
    sget-object p1, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {p1}, Lo/Object$StateListAnimator;->j()V

    :cond_1
    return-void

    .line 628
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lo/OutOfMemoryError;Lo/Object$Application;I)V
    .locals 3

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 588
    invoke-static {}, Lo/Object;->b()V

    .line 590
    sget-boolean v0, Lo/Object;->c:Z

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallback: selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    .line 591
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    invoke-direct {p0, p2}, Lo/Object;->d(Lo/Object$Application;)I

    move-result v0

    if-gez v0, :cond_1

    .line 598
    new-instance v0, Lo/Object$Activity;

    invoke-direct {v0, p0, p2}, Lo/Object$Activity;-><init>(Lo/Object;Lo/Object$Application;)V

    .line 599
    iget-object p2, p0, Lo/Object;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 601
    :cond_1
    iget-object p2, p0, Lo/Object;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lo/Object$Activity;

    :goto_0
    const/4 p2, 0x0

    .line 604
    iget v1, v0, Lo/Object$Activity;->d:I

    not-int v1, v1

    and-int/2addr v1, p3

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 605
    iget p2, v0, Lo/Object$Activity;->d:I

    or-int/2addr p2, p3

    iput p2, v0, Lo/Object$Activity;->d:I

    const/4 p2, 0x1

    .line 608
    :cond_2
    iget-object p3, v0, Lo/Object$Activity;->e:Lo/OutOfMemoryError;

    invoke-virtual {p3, p1}, Lo/OutOfMemoryError;->c(Lo/OutOfMemoryError;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 609
    new-instance p2, Lo/OutOfMemoryError$ActionBar;

    iget-object p3, v0, Lo/Object$Activity;->e:Lo/OutOfMemoryError;

    invoke-direct {p2, p3}, Lo/OutOfMemoryError$ActionBar;-><init>(Lo/OutOfMemoryError;)V

    .line 610
    invoke-virtual {p2, p1}, Lo/OutOfMemoryError$ActionBar;->e(Lo/OutOfMemoryError;)Lo/OutOfMemoryError$ActionBar;

    move-result-object p1

    .line 611
    invoke-virtual {p1}, Lo/OutOfMemoryError$ActionBar;->d()Lo/OutOfMemoryError;

    move-result-object p1

    iput-object p1, v0, Lo/Object$Activity;->e:Lo/OutOfMemoryError;

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 615
    sget-object p1, Lo/Object;->a:Lo/Object$StateListAnimator;

    invoke-virtual {p1}, Lo/Object$StateListAnimator;->j()V

    :cond_4
    return-void

    .line 586
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 583
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
