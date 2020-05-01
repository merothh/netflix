.class public final Lo/ValidationProbeEvent$TaskDescription;
.super Lo/ValidationProbeEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final a:Lo/ValidationProbeEvent$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lo/ValidationProbeEvent$TaskDescription;

    invoke-direct {v0}, Lo/ValidationProbeEvent$TaskDescription;-><init>()V

    sput-object v0, Lo/ValidationProbeEvent$TaskDescription;->a:Lo/ValidationProbeEvent$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lo/ValidationProbeEvent;-><init>(Lo/amc;)V

    return-void
.end method
