.class public final Lo/CleartextNetworkViolation;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lo/WebViewMethodCalledOnWrongThreadViolation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lo/WebViewMethodCalledOnWrongThreadViolation;

    const-string v1, "falcor_cache"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/WebViewMethodCalledOnWrongThreadViolation;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lo/CleartextNetworkViolation;->a:Lo/WebViewMethodCalledOnWrongThreadViolation;

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falcorDiskcacheDataVersionCode"

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 51
    invoke-static {p0}, Lo/adi;->e(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "falcor_cache"

    .line 59
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 67
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v1, "Cannot delete Falcor Sqlite DiskCache DB"

    invoke-interface {p0, v0, v1}, Lo/SpinnerAdapter;->e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0, v0, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final b(Landroid/content/Context;Lcom/google/gson/Gson;)Lo/NetworkViolation;
    .locals 5

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "ctx.filesDir"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 33
    new-instance v0, Lo/UntaggedSocketViolation;

    sget-object v1, Lo/CleartextNetworkViolation;->a:Lo/WebViewMethodCalledOnWrongThreadViolation;

    invoke-direct {v0, p0, p1, v1}, Lo/UntaggedSocketViolation;-><init>(Landroid/content/Context;Lcom/google/gson/Gson;Lo/WebViewMethodCalledOnWrongThreadViolation;)V

    check-cast v0, Lo/NetworkViolation;

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falcor: openFalcorDiskCache skipped, free space = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 37
    sget-object p0, Lo/UnbufferedIoViolation;->a:Lo/UnbufferedIoViolation;

    move-object v0, p0

    check-cast v0, Lo/NetworkViolation;

    :goto_0
    return-object v0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 4

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falcorDiskcacheDataVersionHash"

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dabf276c3013b90cf6cb1d8d0b8b6855e2dab383aecb2eb09c20497a8a162fd4"

    .line 87
    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "falcor_cache"

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 98
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    .line 99
    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v1, "Cannot delete Falcor Sqlite DiskCache DB"

    invoke-interface {p0, v0, v1}, Lo/SpinnerAdapter;->e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0, v0, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lo/em;->c:Lo/em$StateListAnimator;

    invoke-virtual {v0}, Lo/em$StateListAnimator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lo/CleartextNetworkViolation;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0}, Lo/CleartextNetworkViolation;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
