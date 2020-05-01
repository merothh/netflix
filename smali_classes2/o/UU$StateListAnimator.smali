.class public final Lo/UU$StateListAnimator;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field public static final e:Lo/UU$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lo/UU$StateListAnimator;

    invoke-direct {v0}, Lo/UU$StateListAnimator;-><init>()V

    sput-object v0, Lo/UU$StateListAnimator;->e:Lo/UU$StateListAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
