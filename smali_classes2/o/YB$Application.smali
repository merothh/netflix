.class public final Lo/YB$Application;
.super Lo/YB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final c:Lo/YB$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lo/YB$Application;

    invoke-direct {v0}, Lo/YB$Application;-><init>()V

    sput-object v0, Lo/YB$Application;->c:Lo/YB$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lo/YB;-><init>(Lo/amc;)V

    return-void
.end method
