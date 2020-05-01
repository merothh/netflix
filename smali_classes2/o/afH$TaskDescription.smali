.class final Lo/afH$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private b:Lcom/netflix/cl/model/AppView;

.field private c:Lcom/netflix/cl/model/TrackingInfo;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/AppView;JLcom/netflix/cl/model/TrackingInfo;)V
    .locals 1

    const-string v0, "appView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afH$TaskDescription;->b:Lcom/netflix/cl/model/AppView;

    iput-wide p2, p0, Lo/afH$TaskDescription;->d:J

    iput-object p4, p0, Lo/afH$TaskDescription;->c:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/cl/model/AppView;JLcom/netflix/cl/model/TrackingInfo;ILo/amc;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-wide/16 p2, -0x1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 565
    check-cast p4, Lcom/netflix/cl/model/TrackingInfo;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lo/afH$TaskDescription;-><init>(Lcom/netflix/cl/model/AppView;JLcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 565
    iget-wide v0, p0, Lo/afH$TaskDescription;->d:J

    return-wide v0
.end method

.method public final b()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 565
    iget-object v0, p0, Lo/afH$TaskDescription;->b:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final c()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 565
    iget-object v0, p0, Lo/afH$TaskDescription;->c:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public final c(J)V
    .locals 0

    .line 565
    iput-wide p1, p0, Lo/afH$TaskDescription;->d:J

    return-void
.end method

.method public final d()Z
    .locals 5

    .line 566
    iget-wide v0, p0, Lo/afH$TaskDescription;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 568
    iput-wide v0, p0, Lo/afH$TaskDescription;->d:J

    return-void
.end method
