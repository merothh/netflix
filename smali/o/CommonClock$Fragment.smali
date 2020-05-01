.class public final Lo/CommonClock$Fragment;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fragment"
.end annotation


# static fields
.field public static final e:Lo/CommonClock$Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/CommonClock$Fragment;

    invoke-direct {v0}, Lo/CommonClock$Fragment;-><init>()V

    sput-object v0, Lo/CommonClock$Fragment;->e:Lo/CommonClock$Fragment;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
