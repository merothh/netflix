.class public abstract Lo/RecommendationInfo;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/RecommendationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs c([Ljava/lang/String;)Lo/RecommendationInfo;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lo/VolumeInfo;->d([Ljava/lang/String;)Lo/RapporEncoder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RecommendationInfo;->d(Lo/RapporEncoder;)Lo/RecommendationInfo;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lo/RapporEncoder;)Lo/RecommendationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RapporEncoder<",
            "+",
            "Lo/DiskWriteViolation;",
            ">;)",
            "Lo/RecommendationInfo;"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lo/RapporEncoder;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lo/RapporEncoder;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DiskWriteViolation;

    invoke-virtual {v0}, Lo/DiskWriteViolation;->c()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lo/RapporEncoder;->c()Lo/RapporEncoder;

    move-result-object p1

    .line 40
    instance-of v2, p0, Lo/PrintJob;

    if-eqz v2, :cond_1

    .line 41
    move-object v2, p0

    check-cast v2, Lo/PrintJob;

    invoke-virtual {v2, v0}, Lo/PrintJob;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/RecommendationInfo;->d(Lo/RapporEncoder;)Lo/RecommendationInfo;

    move-result-object p1

    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final k()Lo/PrinterDiscoverySession;
    .locals 1

    .line 61
    move-object v0, p0

    check-cast v0, Lo/PrinterDiscoverySession;

    return-object v0
.end method

.method public final l()Lo/VolumePreference;
    .locals 1

    .line 60
    move-object v0, p0

    check-cast v0, Lo/VolumePreference;

    return-object v0
.end method

.method public final n()Lo/PrintJob;
    .locals 1

    .line 59
    move-object v0, p0

    check-cast v0, Lo/PrintJob;

    return-object v0
.end method

.method public n_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Lo/TwoStatePreference;
    .locals 1

    .line 62
    move-object v0, p0

    check-cast v0, Lo/TwoStatePreference;

    return-object v0
.end method

.method public o_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
