.class public final Lo/CheckBoxPreference;
.super Lo/MessagePdu;
.source ""


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lo/aka;

.field private final c:Lo/aka;

.field private d:I

.field private final e:Lo/GenericInflater;


# direct methods
.method public constructor <init>(Lo/GenericInflater;)V
    .locals 1

    const-string v0, "sqliteOpenHelper"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SqliteDb"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/CheckBoxPreference;->e:Lo/GenericInflater;

    .line 18
    sget-object p1, Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandlerThread$2;->e:Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandlerThread$2;

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CheckBoxPreference;->b:Lo/aka;

    .line 22
    new-instance p1, Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandler$2;

    invoke-direct {p1, p0}, Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandler$2;-><init>(Lo/CheckBoxPreference;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CheckBoxPreference;->c:Lo/aka;

    .line 154
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/CheckBoxPreference;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic c(Lo/CheckBoxPreference;)Landroid/os/Handler;
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/CheckBoxPreference;->f()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private final c()Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lo/CheckBoxPreference;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static final synthetic e(Lo/CheckBoxPreference;)Landroid/os/HandlerThread;
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/CheckBoxPreference;->c()Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method private final f()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lo/CheckBoxPreference;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    monitor-enter p0

    .line 120
    :try_start_0
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 122
    :try_start_1
    iget-object v1, p0, Lo/CheckBoxPreference;->e:Lo/GenericInflater;

    invoke-virtual {v1}, Lo/GenericInflater;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lo/CheckBoxPreference;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 125
    iget v2, p0, Lo/CheckBoxPreference;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/CheckBoxPreference;->d:I

    .line 126
    move-object v2, p0

    check-cast v2, Lo/MessagePdu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 132
    :try_start_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 164
    iget-object v0, p0, Lo/CheckBoxPreference;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget v0, p0, Lo/CheckBoxPreference;->d:I

    if-gtz v0, :cond_0

    .line 166
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 167
    iget-object v0, p0, Lo/CheckBoxPreference;->e:Lo/GenericInflater;

    invoke-virtual {v0}, Lo/GenericInflater;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 140
    :try_start_0
    iget p1, p0, Lo/CheckBoxPreference;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/CheckBoxPreference;->d:I

    .line 141
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    .line 142
    iget p1, p0, Lo/CheckBoxPreference;->d:I

    if-gtz p1, :cond_0

    iget-object p1, p0, Lo/CheckBoxPreference;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    .line 144
    iget-object p1, p0, Lo/CheckBoxPreference;->e:Lo/GenericInflater;

    invoke-virtual {p1}, Lo/GenericInflater;->close()V

    .line 145
    iget p1, p0, Lo/CheckBoxPreference;->d:I

    if-gez p1, :cond_0

    .line 146
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lo/CheckBoxPreference;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final declared-synchronized e()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 100
    :try_start_1
    iget-object v1, p0, Lo/CheckBoxPreference;->e:Lo/GenericInflater;

    invoke-virtual {v1}, Lo/GenericInflater;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lo/CheckBoxPreference;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 103
    iget v2, p0, Lo/CheckBoxPreference;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/CheckBoxPreference;->d:I

    .line 104
    move-object v2, p0

    check-cast v2, Lo/MessagePdu;

    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_0
    move-object v1, p0

    check-cast v1, Lo/MessagePdu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 113
    :try_start_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
