.class public final Lo/UU$Fragment;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fragment"
.end annotation


# static fields
.field public static final c:Lo/UU$Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lo/UU$Fragment;

    invoke-direct {v0}, Lo/UU$Fragment;-><init>()V

    sput-object v0, Lo/UU$Fragment;->c:Lo/UU$Fragment;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
