.class public final Lo/DataOutput;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DataOutput$ActionBar;,
        Lo/DataOutput$Application;,
        Lo/DataOutput$StateListAnimator;
    }
.end annotation


# instance fields
.field private final b:Lo/DataOutput$StateListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 506
    invoke-direct {p0, p1, p2, v0}, Lo/DataOutput;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 521
    new-instance v0, Lo/DataOutput$ActionBar;

    invoke-direct {v0, p1, p2, p3}, Lo/DataOutput$ActionBar;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/DataOutput;->b:Lo/DataOutput$StateListAnimator;

    goto :goto_0

    .line 523
    :cond_0
    new-instance v0, Lo/DataOutput$Application;

    invoke-direct {v0, p1, p2, p3}, Lo/DataOutput$Application;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/DataOutput;->b:Lo/DataOutput$StateListAnimator;

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 543
    iget-object v0, p0, Lo/DataOutput;->b:Lo/DataOutput$StateListAnimator;

    invoke-interface {v0, p1}, Lo/DataOutput$StateListAnimator;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
