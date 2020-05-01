.class public Lcom/netflix/mediaclient/service/job/NetflixJob;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    }
.end annotation


# instance fields
.field private transient e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field private mMinimumDelay:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minimumDelay"
    .end annotation
.end field

.field private final mNetflixJobIdValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field

.field private final mRepeating:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRepeating"
    .end annotation
.end field

.field private final mRepeatingPeriodInMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeatingPeriodMs"
    .end annotation
.end field

.field private final mRequiresBatteryNotLow:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresBatteryNotLow"
    .end annotation
.end field

.field private final mRequiresCharging:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresCharging"
    .end annotation
.end field

.field private final mRequiresIdle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresIdle"
    .end annotation
.end field

.field private final mRequiresUnmeteredConnection:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresUnmeteredNetwork"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 121
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    .line 122
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    .line 123
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeatingPeriodInMs:J

    .line 124
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobIdValue:I

    .line 125
    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresCharging:Z

    .line 126
    iput-boolean p7, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresIdle:Z

    .line 127
    iput-boolean p8, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresBatteryNotLow:Z

    return-void
.end method

.method public static a(J)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 146
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static b(J)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 142
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->k:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static c()Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 73
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->i:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static c(J)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 137
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->o:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static c(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 160
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static d(J)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 132
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->f:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static e(JZ)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 180
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->h:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v4, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static f(J)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 175
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static g()Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 167
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method

.method public static i()Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 10

    .line 153
    new-instance v9, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZZ)V

    return-object v9
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresBatteryNotLow:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresIdle:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresCharging:Z

    return v0
.end method

.method public e()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mMinimumDelay:J

    return-wide v0
.end method

.method public e(J)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    if-eqz v0, :cond_0

    const-string p1, "nf_netflix_job"

    const-string p2, "Error, setting minimum delay on a repeating job."

    .line 66
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_0
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mMinimumDelay:J

    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 3

    .line 221
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 227
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeatingPeriodInMs:J

    return-wide v0
.end method

.method public h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    if-nez v0, :cond_0

    .line 190
    iget v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobIdValue:I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    return v0
.end method
