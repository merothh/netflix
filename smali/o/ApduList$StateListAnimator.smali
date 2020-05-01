.class public final Lo/ApduList$StateListAnimator;
.super Lo/ApduList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ApduList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field public static final e:Lo/ApduList$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/ApduList$StateListAnimator;

    invoke-direct {v0}, Lo/ApduList$StateListAnimator;-><init>()V

    sput-object v0, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lo/ApduList;-><init>(Lo/amc;)V

    return-void
.end method
