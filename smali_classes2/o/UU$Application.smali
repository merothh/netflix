.class public final Lo/UU$Application;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final e:Lo/UU$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lo/UU$Application;

    invoke-direct {v0}, Lo/UU$Application;-><init>()V

    sput-object v0, Lo/UU$Application;->e:Lo/UU$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
