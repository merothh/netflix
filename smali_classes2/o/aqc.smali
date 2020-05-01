.class public abstract Lo/aqc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public g:J

.field public h:Lo/aqg;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 81
    sget-object v0, Lo/aqb;->a:Lo/aqb;

    check-cast v0, Lo/aqg;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lo/aqc;-><init>(JLo/aqg;)V

    return-void
.end method

.method public constructor <init>(JLo/aqg;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo/aqc;->g:J

    iput-object p3, p0, Lo/aqc;->h:Lo/aqg;

    return-void
.end method
