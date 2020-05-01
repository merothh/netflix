.class public final Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnGenericMotionListener$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Landroid/app/PendingIntent;

.field private final c:I

.field private d:Z

.field private final e:Ljava/lang/CharSequence;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private j:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 9

    .line 3269
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lo/OnTouchListener;ZIZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lo/OnTouchListener;ZIZ)V
    .locals 1

    .line 3285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3256
    iput-boolean v0, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d:Z

    .line 3260
    iput-boolean v0, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->h:Z

    .line 3286
    iput p1, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->c:I

    .line 3287
    invoke-static {p2}, Lo/OnGenericMotionListener$Activity;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->e:Ljava/lang/CharSequence;

    .line 3288
    iput-object p3, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->b:Landroid/app/PendingIntent;

    .line 3289
    iput-object p4, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->a:Landroid/os/Bundle;

    if-nez p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3290
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 3291
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->g:Ljava/util/ArrayList;

    .line 3292
    iput-boolean p6, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d:Z

    .line 3293
    iput p7, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->j:I

    .line 3294
    iput-boolean p8, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->h:Z

    return-void
.end method


# virtual methods
.method public d()Lo/OnGenericMotionListener$StateListAnimator;
    .locals 14

    .line 3390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3392
    iget-object v2, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3393
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/OnTouchListener;

    .line 3394
    invoke-virtual {v3}, Lo/OnTouchListener;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3395
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3397
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3401
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v10, v3

    goto :goto_1

    .line 3402
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lo/OnTouchListener;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/OnTouchListener;

    move-object v10, v0

    .line 3403
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 3404
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lo/OnTouchListener;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lo/OnTouchListener;

    :goto_2
    move-object v9, v3

    .line 3405
    new-instance v0, Lo/OnGenericMotionListener$StateListAnimator;

    iget v5, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->c:I

    iget-object v6, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->e:Ljava/lang/CharSequence;

    iget-object v7, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->b:Landroid/app/PendingIntent;

    iget-object v8, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->a:Landroid/os/Bundle;

    iget-boolean v11, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->d:Z

    iget v12, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->j:I

    iget-boolean v13, p0, Lo/OnGenericMotionListener$StateListAnimator$StateListAnimator;->h:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lo/OnGenericMotionListener$StateListAnimator;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lo/OnTouchListener;[Lo/OnTouchListener;ZIZ)V

    return-object v0
.end method
