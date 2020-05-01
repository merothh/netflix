.class public final Lo/YB$SharedElementCallback;
.super Lo/YB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedElementCallback"
.end annotation


# static fields
.field public static final e:Lo/YB$SharedElementCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lo/YB$SharedElementCallback;

    invoke-direct {v0}, Lo/YB$SharedElementCallback;-><init>()V

    sput-object v0, Lo/YB$SharedElementCallback;->e:Lo/YB$SharedElementCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lo/YB;-><init>(Lo/amc;)V

    return-void
.end method
