.class public Lo/AbsoluteFileBackupHelper;
.super Landroid/content/ContextWrapper;
.source ""


# static fields
.field static final d:Lo/BackupDataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BackupDataInput<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/RulesManager;

.field private final b:Lcom/bumptech/glide/Registry;

.field private final c:Lo/SyncResult;

.field private final e:Lo/SearchRecentSuggestionsProvider;

.field private final f:I

.field private final g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/BackupDataInput<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final i:Lo/PipModeChangeItem;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ReceiverCallNotAllowedException<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/SystemUpdateInfo;

    invoke-direct {v0}, Lo/SystemUpdateInfo;-><init>()V

    sput-object v0, Lo/AbsoluteFileBackupHelper;->d:Lo/BackupDataInput;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/RulesManager;Lcom/bumptech/glide/Registry;Lo/SyncResult;Lo/SearchRecentSuggestionsProvider;Ljava/util/Map;Ljava/util/List;Lo/PipModeChangeItem;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/RulesManager;",
            "Lcom/bumptech/glide/Registry;",
            "Lo/SyncResult;",
            "Lo/SearchRecentSuggestionsProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/BackupDataInput<",
            "**>;>;",
            "Ljava/util/List<",
            "Lo/ReceiverCallNotAllowedException<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lo/PipModeChangeItem;",
            "ZI)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lo/AbsoluteFileBackupHelper;->a:Lo/RulesManager;

    .line 49
    iput-object p3, p0, Lo/AbsoluteFileBackupHelper;->b:Lcom/bumptech/glide/Registry;

    .line 50
    iput-object p4, p0, Lo/AbsoluteFileBackupHelper;->c:Lo/SyncResult;

    .line 51
    iput-object p5, p0, Lo/AbsoluteFileBackupHelper;->e:Lo/SearchRecentSuggestionsProvider;

    .line 52
    iput-object p7, p0, Lo/AbsoluteFileBackupHelper;->j:Ljava/util/List;

    .line 53
    iput-object p6, p0, Lo/AbsoluteFileBackupHelper;->h:Ljava/util/Map;

    .line 54
    iput-object p8, p0, Lo/AbsoluteFileBackupHelper;->i:Lo/PipModeChangeItem;

    .line 55
    iput-boolean p9, p0, Lo/AbsoluteFileBackupHelper;->g:Z

    .line 56
    iput p10, p0, Lo/AbsoluteFileBackupHelper;->f:I

    return-void
.end method


# virtual methods
.method public a()Lo/SearchRecentSuggestionsProvider;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/AbsoluteFileBackupHelper;->e:Lo/SearchRecentSuggestionsProvider;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 101
    iget v0, p0, Lo/AbsoluteFileBackupHelper;->f:I

    return v0
.end method

.method public c()Lcom/bumptech/glide/Registry;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/AbsoluteFileBackupHelper;->b:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public c(Landroid/widget/ImageView;Ljava/lang/Class;)Lo/UndoManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lo/UndoManager<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lo/AbsoluteFileBackupHelper;->c:Lo/SyncResult;

    invoke-virtual {v0, p1, p2}, Lo/SyncResult;->e(Landroid/widget/ImageView;Ljava/lang/Class;)Lo/UndoManager;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ReceiverCallNotAllowedException<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/AbsoluteFileBackupHelper;->j:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/Class;)Lo/BackupDataInput;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/BackupDataInput<",
            "*TT;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/AbsoluteFileBackupHelper;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BackupDataInput;

    if-nez v0, :cond_1

    .line 72
    iget-object v1, p0, Lo/AbsoluteFileBackupHelper;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BackupDataInput;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 79
    sget-object v0, Lo/AbsoluteFileBackupHelper;->d:Lo/BackupDataInput;

    :cond_2
    return-object v0
.end method

.method public e()Lo/PipModeChangeItem;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/AbsoluteFileBackupHelper;->i:Lo/PipModeChangeItem;

    return-object v0
.end method

.method public f()Lo/RulesManager;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/AbsoluteFileBackupHelper;->a:Lo/RulesManager;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lo/AbsoluteFileBackupHelper;->g:Z

    return v0
.end method
