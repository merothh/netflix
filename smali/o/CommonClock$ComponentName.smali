.class public final Lo/CommonClock$ComponentName;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentName"
.end annotation


# static fields
.field public static final b:Lo/CommonClock$ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/CommonClock$ComponentName;

    invoke-direct {v0}, Lo/CommonClock$ComponentName;-><init>()V

    sput-object v0, Lo/CommonClock$ComponentName;->b:Lo/CommonClock$ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
