.class public final Lo/Build$ComponentName;
.super Lo/Build$BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentName"
.end annotation


# static fields
.field public static final e:Lo/Build$ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lo/Build$ComponentName;

    invoke-direct {v0}, Lo/Build$ComponentName;-><init>()V

    sput-object v0, Lo/Build$ComponentName;->e:Lo/Build$ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 130
    invoke-direct {p0, v1, v0, v2, v0}, Lo/Build$BroadcastReceiver;-><init>(ZLjava/lang/Class;ILo/amc;)V

    return-void
.end method
