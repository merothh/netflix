.class public final Lo/mU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/mR;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mU$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/mU$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/mU$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/mU$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/mU;->d:Lo/mU$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    const-string v0, "ExitCommand"

    const-string v1, "Executing command..."

    .line 15
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->h(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method
