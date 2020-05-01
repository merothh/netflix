.class public final Lo/CommonClock$StateListAnimator;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field public static final c:Lo/CommonClock$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lo/CommonClock$StateListAnimator;

    invoke-direct {v0}, Lo/CommonClock$StateListAnimator;-><init>()V

    sput-object v0, Lo/CommonClock$StateListAnimator;->c:Lo/CommonClock$StateListAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
