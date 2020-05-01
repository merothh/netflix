.class public final Lo/UU$PackageManager;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageManager"
.end annotation


# static fields
.field public static final d:Lo/UU$PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lo/UU$PackageManager;

    invoke-direct {v0}, Lo/UU$PackageManager;-><init>()V

    sput-object v0, Lo/UU$PackageManager;->d:Lo/UU$PackageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
