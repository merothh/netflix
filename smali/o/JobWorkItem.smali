.class public abstract Lo/JobWorkItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RestoreSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/ContentResolver;

.field private final e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/JobWorkItem;->d:Landroid/content/ContentResolver;

    .line 37
    iput-object p2, p0, Lo/JobWorkItem;->e:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lo/RestoreSession$Application<",
            "-TT;>;)V"
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object p1, p0, Lo/JobWorkItem;->e:Landroid/net/Uri;

    iget-object v0, p0, Lo/JobWorkItem;->d:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, v0}, Lo/JobWorkItem;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/JobWorkItem;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    iget-object p1, p0, Lo/JobWorkItem;->c:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "LocalUriFetcher"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open Uri"

    .line 47
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 74
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method protected abstract b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public c()V
    .locals 1

    .line 57
    iget-object v0, p0, Lo/JobWorkItem;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p0, v0}, Lo/JobWorkItem;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public e()V
    .locals 0

    return-void
.end method
