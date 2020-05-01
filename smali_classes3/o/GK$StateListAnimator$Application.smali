.class public final Lo/GK$StateListAnimator$Application;
.super Lo/GK$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GK$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final d:Lo/GK$StateListAnimator$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lo/GK$StateListAnimator$Application;

    invoke-direct {v0}, Lo/GK$StateListAnimator$Application;-><init>()V

    sput-object v0, Lo/GK$StateListAnimator$Application;->d:Lo/GK$StateListAnimator$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lo/GK$StateListAnimator;-><init>(Lo/amc;)V

    return-void
.end method
