.class abstract Lo/Override;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Override$StateListAnimator;,
        Lo/Override$TaskDescription;,
        Lo/Override$Application;,
        Lo/Override$Activity;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lo/Override$Application;

.field protected final c:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/Override;->c:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lo/Override;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Lo/Override;
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lo/Override$StateListAnimator;

    invoke-direct {v0, p0, p1}, Lo/Override$StateListAnimator;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lo/Override$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/Override$TaskDescription;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/Override;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Lo/Override$Activity;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Override$Application;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/Override;->b:Lo/Override$Application;

    return-void
.end method
