.class public final Lo/Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Factory$TaskDescription;,
        Lo/Factory$Activity;,
        Lo/Factory$Application;,
        Lo/Factory$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler$Callback;

.field b:Lo/Factory$TaskDescription;

.field d:Landroid/view/LayoutInflater;

.field e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lo/Factory$1;

    invoke-direct {v0, p0}, Lo/Factory$1;-><init>(Lo/Factory;)V

    iput-object v0, p0, Lo/Factory;->a:Landroid/os/Handler$Callback;

    .line 76
    new-instance v0, Lo/Factory$Activity;

    invoke-direct {v0, p1}, Lo/Factory$Activity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/Factory;->d:Landroid/view/LayoutInflater;

    .line 77
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lo/Factory;->a:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lo/Factory;->e:Landroid/os/Handler;

    .line 78
    invoke-static {}, Lo/Factory$TaskDescription;->a()Lo/Factory$TaskDescription;

    move-result-object p1

    iput-object p1, p0, Lo/Factory;->b:Lo/Factory$TaskDescription;

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;Lo/Factory$StateListAnimator;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 87
    iget-object v0, p0, Lo/Factory;->b:Lo/Factory$TaskDescription;

    invoke-virtual {v0}, Lo/Factory$TaskDescription;->b()Lo/Factory$Application;

    move-result-object v0

    .line 88
    iput-object p0, v0, Lo/Factory$Application;->e:Lo/Factory;

    .line 89
    iput p1, v0, Lo/Factory$Application;->d:I

    .line 90
    iput-object p2, v0, Lo/Factory$Application;->b:Landroid/view/ViewGroup;

    .line 91
    iput-object p3, v0, Lo/Factory$Application;->a:Lo/Factory$StateListAnimator;

    .line 92
    iget-object p1, p0, Lo/Factory;->b:Lo/Factory$TaskDescription;

    invoke-virtual {p1, v0}, Lo/Factory$TaskDescription;->e(Lo/Factory$Application;)V

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback argument may not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
