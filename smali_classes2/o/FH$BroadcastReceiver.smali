.class public final Lo/FH$BroadcastReceiver;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastReceiver"
.end annotation


# static fields
.field public static final e:Lo/FH$BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lo/FH$BroadcastReceiver;

    invoke-direct {v0}, Lo/FH$BroadcastReceiver;-><init>()V

    sput-object v0, Lo/FH$BroadcastReceiver;->e:Lo/FH$BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    return-void
.end method
