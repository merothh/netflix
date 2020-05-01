.class public Lo/acE;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lo/Am;)Lo/zN;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Lo/Am;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lo/Am;)Ljava/lang/String;
    .locals 4

    .line 20
    invoke-static {p0}, Lo/acE;->b(Lo/Am;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string p0, "ServiceManagerUtils"

    const-string v0, "Service manager is not available!"

    .line 21
    invoke-static {p0, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-interface {v0}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object p0

    invoke-interface {p0}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 28
    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 36
    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    aget-object p0, p0, v2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method
