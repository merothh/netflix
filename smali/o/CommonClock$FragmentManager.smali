.class public final Lo/CommonClock$FragmentManager;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# static fields
.field public static final d:Lo/CommonClock$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/CommonClock$FragmentManager;

    invoke-direct {v0}, Lo/CommonClock$FragmentManager;-><init>()V

    sput-object v0, Lo/CommonClock$FragmentManager;->d:Lo/CommonClock$FragmentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
