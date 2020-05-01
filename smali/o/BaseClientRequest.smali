.class public Lo/BaseClientRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BaseClientRequest$StateListAnimator;,
        Lo/BaseClientRequest$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RestoreSession<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private final b:Lo/ClientTransaction;

.field private final c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lo/ClientTransaction;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/BaseClientRequest;->c:Landroid/net/Uri;

    .line 51
    iput-object p2, p0, Lo/BaseClientRequest;->b:Lo/ClientTransaction;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Lo/ClientTransactionItem;)Lo/BaseClientRequest;
    .locals 3

    .line 41
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->a()Lo/RulesManager;

    move-result-object v0

    .line 42
    new-instance v1, Lo/ClientTransaction;

    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->i()Lcom/bumptech/glide/Registry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Registry;->c()Ljava/util/List;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lo/ClientTransaction;-><init>(Ljava/util/List;Lo/ClientTransactionItem;Lo/RulesManager;Landroid/content/ContentResolver;)V

    .line 45
    new-instance p0, Lo/BaseClientRequest;

    invoke-direct {p0, p1, v1}, Lo/BaseClientRequest;-><init>(Landroid/net/Uri;Lo/ClientTransaction;)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Lo/BaseClientRequest;
    .locals 2

    .line 33
    new-instance v0, Lo/BaseClientRequest$StateListAnimator;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/BaseClientRequest$StateListAnimator;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lo/BaseClientRequest;->a(Landroid/content/Context;Landroid/net/Uri;Lo/ClientTransactionItem;)Lo/BaseClientRequest;

    move-result-object p0

    return-object p0
.end method

.method private d()Ljava/io/InputStream;
    .locals 4

    .line 71
    iget-object v0, p0, Lo/BaseClientRequest;->b:Lo/ClientTransaction;

    iget-object v1, p0, Lo/BaseClientRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lo/ClientTransaction;->a(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lo/BaseClientRequest;->b:Lo/ClientTransaction;

    iget-object v3, p0, Lo/BaseClientRequest;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lo/ClientTransaction;->b(Landroid/net/Uri;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eq v2, v1, :cond_1

    .line 79
    new-instance v1, Lo/JobScheduler;

    invoke-direct {v1, v0, v2}, Lo/JobScheduler;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;)Lo/BaseClientRequest;
    .locals 2

    .line 37
    new-instance v0, Lo/BaseClientRequest$Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/BaseClientRequest$Activity;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lo/BaseClientRequest;->a(Landroid/content/Context;Landroid/net/Uri;Lo/ClientTransactionItem;)Lo/BaseClientRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 103
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lo/RestoreSession$Application<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-direct {p0}, Lo/BaseClientRequest;->d()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lo/BaseClientRequest;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object p1, p0, Lo/BaseClientRequest;->a:Ljava/io/InputStream;

    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find thumbnail file"

    .line 61
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_0
    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 109
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/BaseClientRequest;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
