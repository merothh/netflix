.class public final Lo/Cs$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "AdvisoryModuleImpl"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/Cs$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 19
    const-class v0, Lo/l;

    new-instance v1, Lo/Cs;

    invoke-direct {v1}, Lo/Cs;-><init>()V

    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
