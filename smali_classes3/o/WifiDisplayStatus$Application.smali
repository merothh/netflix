.class public Lo/WifiDisplayStatus$Application;
.super Lo/DisplayManagerGlobal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiDisplayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lo/DisplayManagerGlobal;-><init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method

.method static synthetic b(Lo/WifiDisplayStatus$Application;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lo/WifiDisplayStatus$Application;->d:J

    return-wide v0
.end method

.method static synthetic b(Lo/WifiDisplayStatus$Application;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lo/WifiDisplayStatus$Application;->c:J

    return-wide p1
.end method

.method static synthetic c(Lo/WifiDisplayStatus$Application;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lo/WifiDisplayStatus$Application;->c:J

    return-wide v0
.end method

.method static synthetic c(Lo/WifiDisplayStatus$Application;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lo/WifiDisplayStatus$Application;->e:J

    return-wide p1
.end method

.method static synthetic e(Lo/WifiDisplayStatus$Application;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lo/WifiDisplayStatus$Application;->e:J

    return-wide v0
.end method

.method static synthetic e(Lo/WifiDisplayStatus$Application;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lo/WifiDisplayStatus$Application;->d:J

    return-wide p1
.end method
