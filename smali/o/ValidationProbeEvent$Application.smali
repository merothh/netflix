.class public final Lo/ValidationProbeEvent$Application;
.super Lo/ValidationProbeEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# static fields
.field public static final e:Lo/ValidationProbeEvent$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/ValidationProbeEvent$Application;

    invoke-direct {v0}, Lo/ValidationProbeEvent$Application;-><init>()V

    sput-object v0, Lo/ValidationProbeEvent$Application;->e:Lo/ValidationProbeEvent$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lo/ValidationProbeEvent;-><init>(Lo/amc;)V

    return-void
.end method
