.class public final Lo/CommonClock$Application;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final b:Lo/CommonClock$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/CommonClock$Application;

    invoke-direct {v0}, Lo/CommonClock$Application;-><init>()V

    sput-object v0, Lo/CommonClock$Application;->b:Lo/CommonClock$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
