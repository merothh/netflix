.class public final Lo/UU$SharedElementCallback;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedElementCallback"
.end annotation


# static fields
.field public static final e:Lo/UU$SharedElementCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lo/UU$SharedElementCallback;

    invoke-direct {v0}, Lo/UU$SharedElementCallback;-><init>()V

    sput-object v0, Lo/UU$SharedElementCallback;->e:Lo/UU$SharedElementCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
