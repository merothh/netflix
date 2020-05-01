.class public final Lo/UU$IntentFilter;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentFilter"
.end annotation


# static fields
.field public static final e:Lo/UU$IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lo/UU$IntentFilter;

    invoke-direct {v0}, Lo/UU$IntentFilter;-><init>()V

    sput-object v0, Lo/UU$IntentFilter;->e:Lo/UU$IntentFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
