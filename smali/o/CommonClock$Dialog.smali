.class public final Lo/CommonClock$Dialog;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialog"
.end annotation


# static fields
.field public static final d:Lo/CommonClock$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/CommonClock$Dialog;

    invoke-direct {v0}, Lo/CommonClock$Dialog;-><init>()V

    sput-object v0, Lo/CommonClock$Dialog;->d:Lo/CommonClock$Dialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
