.class public abstract Lo/wB;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private transient b:Z

.field private transient d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/wB;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lo/wn$ActionBar;

    invoke-direct {v0, p0}, Lo/wn$ActionBar;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exoDlReportDenominator"
    .end annotation
.end method

.method protected abstract b()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groupName"
    .end annotation
.end method

.method protected abstract c()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableStateTrace"
    .end annotation
.end method

.method protected abstract d()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableDlreportErrorLogs"
    .end annotation
.end method

.method protected abstract e()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aseReportDenominator"
    .end annotation
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/wB;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/wB;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lo/wB;->d()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 4

    .line 43
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 44
    invoke-virtual {p0}, Lo/wB;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 45
    invoke-virtual {p0}, Lo/wB;->a()I

    move-result v1

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lo/wB;->d:Z

    .line 47
    :cond_1
    invoke-virtual {p0}, Lo/wB;->e()I

    move-result v1

    if-lez v1, :cond_3

    .line 48
    invoke-virtual {p0}, Lo/wB;->e()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lo/wB;->b:Z

    :cond_3
    return-void
.end method

.method public j()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lo/wB;->b:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lo/wB;->c()Z

    move-result v0

    return v0
.end method
