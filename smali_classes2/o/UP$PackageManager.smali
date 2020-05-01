.class public final Lo/UP$PackageManager;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageManager"
.end annotation


# static fields
.field public static final d:Lo/UP$PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lo/UP$PackageManager;

    invoke-direct {v0}, Lo/UP$PackageManager;-><init>()V

    sput-object v0, Lo/UP$PackageManager;->d:Lo/UP$PackageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
