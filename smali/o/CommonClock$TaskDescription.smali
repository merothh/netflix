.class public final Lo/CommonClock$TaskDescription;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final e:Lo/CommonClock$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lo/CommonClock$TaskDescription;

    invoke-direct {v0}, Lo/CommonClock$TaskDescription;-><init>()V

    sput-object v0, Lo/CommonClock$TaskDescription;->e:Lo/CommonClock$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
