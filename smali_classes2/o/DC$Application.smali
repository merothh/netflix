.class public final Lo/DC$Application;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final a:Lo/DC$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lo/DC$Application;

    invoke-direct {v0}, Lo/DC$Application;-><init>()V

    sput-object v0, Lo/DC$Application;->a:Lo/DC$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    return-void
.end method
