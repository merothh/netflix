.class public final Lo/mX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/mR;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mX$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/mX$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/mX$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/mX$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/mX;->a:Lo/mX$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    const-string v0, "ReloadCommand"

    const-string v1, "Executing command..."

    .line 16
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    sget-object v1, Lo/mX$Application;->e:Lo/mX$Application;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method
