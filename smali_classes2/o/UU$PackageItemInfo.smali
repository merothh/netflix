.class public final Lo/UU$PackageItemInfo;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageItemInfo"
.end annotation


# static fields
.field public static final c:Lo/UU$PackageItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lo/UU$PackageItemInfo;

    invoke-direct {v0}, Lo/UU$PackageItemInfo;-><init>()V

    sput-object v0, Lo/UU$PackageItemInfo;->c:Lo/UU$PackageItemInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
