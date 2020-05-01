.class public final Lo/UP$ApplicationInfo;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationInfo"
.end annotation


# static fields
.field public static final b:Lo/UP$ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lo/UP$ApplicationInfo;

    invoke-direct {v0}, Lo/UP$ApplicationInfo;-><init>()V

    sput-object v0, Lo/UP$ApplicationInfo;->b:Lo/UP$ApplicationInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
