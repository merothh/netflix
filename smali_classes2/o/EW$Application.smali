.class public final Lo/EW$Application;
.super Lo/EW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final a:Lo/EW$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/EW$Application;

    invoke-direct {v0}, Lo/EW$Application;-><init>()V

    sput-object v0, Lo/EW$Application;->a:Lo/EW$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lo/EW;-><init>(Lo/amc;)V

    return-void
.end method
