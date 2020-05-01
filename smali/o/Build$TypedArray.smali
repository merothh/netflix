.class public final Lo/Build$TypedArray;
.super Lo/Build$BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypedArray"
.end annotation


# static fields
.field public static final c:Lo/Build$TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Lo/Build$TypedArray;

    invoke-direct {v0}, Lo/Build$TypedArray;-><init>()V

    sput-object v0, Lo/Build$TypedArray;->c:Lo/Build$TypedArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 128
    invoke-direct {p0, v1, v0, v2, v0}, Lo/Build$BroadcastReceiver;-><init>(ZLjava/lang/Class;ILo/amc;)V

    return-void
.end method
