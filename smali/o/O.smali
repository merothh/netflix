.class public abstract Lo/O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/O$TaskDescription;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/O;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lo/z$TaskDescription;

    invoke-direct {v0, p0}, Lo/z$TaskDescription;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, -0x1

    .line 21
    invoke-virtual {v0, p0}, Lo/z$TaskDescription;->c(I)Lo/z$TaskDescription;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lo/z$TaskDescription;->a(I)Lo/z$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method static e()Lo/O;
    .locals 2

    .line 79
    new-instance v0, Lo/z;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lo/z;-><init>(II)V

    return-object v0
.end method

.method public static e(Lo/O;Lo/O;)Lo/O;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1}, Lo/O;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lo/O;->c()I

    move-result v1

    invoke-virtual {p0}, Lo/O;->c()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 64
    invoke-virtual {p0}, Lo/O;->d()Lo/O$TaskDescription;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lo/O;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/O$TaskDescription;->b(I)Lo/O$TaskDescription;

    .line 67
    :cond_1
    invoke-virtual {p1}, Lo/O;->a()I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lo/O;->a()I

    move-result v1

    invoke-virtual {p0}, Lo/O;->a()I

    move-result v2

    if-eq v1, v2, :cond_3

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lo/O;->d()Lo/O$TaskDescription;

    move-result-object v0

    .line 69
    :cond_2
    invoke-virtual {p1}, Lo/O;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/O$TaskDescription;->a(I)Lo/O$TaskDescription;

    :cond_3
    if-nez v0, :cond_4

    return-object p0

    .line 74
    :cond_4
    invoke-virtual {v0}, Lo/O$TaskDescription;->e()Lo/O;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryAfterSeconds"
    .end annotation
.end method

.method public abstract c()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxRetries"
    .end annotation
.end method

.method protected abstract d()Lo/O$TaskDescription;
.end method
