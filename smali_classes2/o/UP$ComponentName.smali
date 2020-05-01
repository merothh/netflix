.class public final Lo/UP$ComponentName;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentName"
.end annotation


# static fields
.field public static final d:Lo/UP$ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/UP$ComponentName;

    invoke-direct {v0}, Lo/UP$ComponentName;-><init>()V

    sput-object v0, Lo/UP$ComponentName;->d:Lo/UP$ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
