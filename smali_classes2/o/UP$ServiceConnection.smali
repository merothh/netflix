.class public final Lo/UP$ServiceConnection;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceConnection"
.end annotation


# static fields
.field public static final e:Lo/UP$ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lo/UP$ServiceConnection;

    invoke-direct {v0}, Lo/UP$ServiceConnection;-><init>()V

    sput-object v0, Lo/UP$ServiceConnection;->e:Lo/UP$ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
