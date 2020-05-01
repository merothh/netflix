.class public final Lo/UU$ServiceConnection;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceConnection"
.end annotation


# static fields
.field public static final b:Lo/UU$ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lo/UU$ServiceConnection;

    invoke-direct {v0}, Lo/UU$ServiceConnection;-><init>()V

    sput-object v0, Lo/UU$ServiceConnection;->b:Lo/UU$ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
