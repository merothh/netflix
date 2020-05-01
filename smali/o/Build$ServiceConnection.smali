.class public final Lo/Build$ServiceConnection;
.super Lo/Build;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceConnection"
.end annotation


# static fields
.field public static final a:Lo/Build$ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lo/Build$ServiceConnection;

    invoke-direct {v0}, Lo/Build$ServiceConnection;-><init>()V

    sput-object v0, Lo/Build$ServiceConnection;->a:Lo/Build$ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lo/Build;-><init>(Lo/amc;)V

    return-void
.end method
