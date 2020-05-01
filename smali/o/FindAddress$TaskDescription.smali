.class public final Lo/FindAddress$TaskDescription;
.super Lo/FindAddress;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final c:Lo/FindAddress$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/FindAddress$TaskDescription;

    invoke-direct {v0}, Lo/FindAddress$TaskDescription;-><init>()V

    sput-object v0, Lo/FindAddress$TaskDescription;->c:Lo/FindAddress$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lo/FindAddress;-><init>(Lo/amc;)V

    return-void
.end method
