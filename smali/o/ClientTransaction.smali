.class Lo/ClientTransaction;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Lo/ActivityResultItem;


# instance fields
.field private final a:Lo/ClientTransactionItem;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Lo/RulesManager;

.field private final e:Lo/ActivityResultItem;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/ActivityResultItem;

    invoke-direct {v0}, Lo/ActivityResultItem;-><init>()V

    sput-object v0, Lo/ClientTransaction;->d:Lo/ActivityResultItem;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lo/ActivityResultItem;Lo/ClientTransactionItem;Lo/RulesManager;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/ActivityResultItem;",
            "Lo/ClientTransactionItem;",
            "Lo/RulesManager;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lo/ClientTransaction;->e:Lo/ActivityResultItem;

    .line 42
    iput-object p3, p0, Lo/ClientTransaction;->a:Lo/ClientTransactionItem;

    .line 43
    iput-object p4, p0, Lo/ClientTransaction;->c:Lo/RulesManager;

    .line 44
    iput-object p5, p0, Lo/ClientTransaction;->b:Landroid/content/ContentResolver;

    .line 45
    iput-object p1, p0, Lo/ClientTransaction;->i:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lo/ClientTransactionItem;Lo/RulesManager;Landroid/content/ContentResolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/ClientTransactionItem;",
            "Lo/RulesManager;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 32
    sget-object v2, Lo/ClientTransaction;->d:Lo/ActivityResultItem;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/ClientTransaction;-><init>(Ljava/util/List;Lo/ActivityResultItem;Lo/ClientTransactionItem;Lo/RulesManager;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private d(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/ClientTransaction;->a:Lo/ClientTransactionItem;

    invoke-interface {v0, p1}, Lo/ClientTransactionItem;->b(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private e(Ljava/io/File;)Z
    .locals 4

    .line 108
    iget-object v0, p0, Lo/ClientTransaction;->e:Lo/ActivityResultItem;

    invoke-virtual {v0, p1}, Lo/ActivityResultItem;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lo/ClientTransaction;->e:Lo/ActivityResultItem;

    invoke-virtual {v2, p1}, Lo/ActivityResultItem;->c(Ljava/io/File;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5

    .line 71
    invoke-direct {p0, p1}, Lo/ClientTransaction;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 76
    :cond_0
    iget-object v1, p0, Lo/ClientTransaction;->e:Lo/ActivityResultItem;

    invoke-virtual {v1, v0}, Lo/ActivityResultItem;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lo/ClientTransaction;->e(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 81
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lo/ClientTransaction;->b:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 86
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NPE opening uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2, v1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/FileNotFoundException;

    throw p1
.end method

.method b(Landroid/net/Uri;)I
    .locals 5

    const-string v0, "ThumbStreamOpener"

    const/4 v1, 0x0

    .line 51
    :try_start_0
    iget-object v2, p0, Lo/ClientTransaction;->b:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lo/ClientTransaction;->i:Ljava/util/List;

    iget-object v3, p0, Lo/ClientTransaction;->c:Lo/RulesManager;

    invoke-static {v2, v1, v3}, Lo/BackupObserver;->a(Ljava/util/List;Ljava/io/InputStream;Lo/RulesManager;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 61
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_0
    const/4 v3, 0x3

    .line 55
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 61
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_2
    const/4 p1, -0x1

    return p1

    :goto_1
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 64
    :catch_4
    :cond_3
    throw p1
.end method
