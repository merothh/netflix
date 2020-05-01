.class Lo/pJ$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/yf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pJ;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lo/pJ;


# direct methods
.method constructor <init>(Lo/pJ;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/pJ$1;->c:Lo/pJ;

    iput p2, p0, Lo/pJ$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 115
    iget-object v0, p0, Lo/pJ$1;->c:Lo/pJ;

    invoke-static {v0}, Lo/pJ;->a(Lo/pJ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "BifManager"

    if-eqz v0, :cond_3

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 121
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "Resource %s could not be fetched or retrieved from cache, status %d"

    invoke-static {v4, p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    iget p1, p0, Lo/pJ$1;->b:I

    iget-object p2, p0, Lo/pJ$1;->c:Lo/pJ;

    invoke-static {p2}, Lo/pJ;->d(Lo/pJ;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 123
    iget-object p1, p0, Lo/pJ$1;->c:Lo/pJ;

    invoke-static {p1}, Lo/pJ;->d(Lo/pJ;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lo/pJ$1;->b:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 125
    iget-object p2, p0, Lo/pJ$1;->c:Lo/pJ;

    invoke-static {p2}, Lo/pJ;->a(Lo/pJ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "Fetch was canceled, stop"

    .line 126
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    .line 128
    iget p3, p0, Lo/pJ$1;->b:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    aput-object p1, p2, v3

    const-string p3, "Try to fetch %d URL %s"

    invoke-static {v4, p3, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    iget-object p2, p0, Lo/pJ$1;->c:Lo/pJ;

    iget p3, p0, Lo/pJ$1;->b:I

    add-int/2addr p3, v3

    invoke-static {p2, p1, p3}, Lo/pJ;->d(Lo/pJ;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string p1, "We fail to download bif completely, all URLs failed"

    .line 133
    invoke-static {v4, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    if-eqz p2, :cond_4

    .line 138
    array-length p1, p2

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Resource %s fetched, size %d, status %d"

    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    iget-object p1, p0, Lo/pJ$1;->c:Lo/pJ;

    invoke-static {p1, p2}, Lo/pJ;->d(Lo/pJ;[B)V

    :goto_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
