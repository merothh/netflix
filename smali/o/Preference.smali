.class public abstract Lo/Preference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResourceMismatchViolation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Preference$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ResourceMismatchViolation;"
    }
.end annotation


# static fields
.field public static final c:Lo/Preference$StateListAnimator;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lo/CheckBoxPreference;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:J

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Preference$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Preference$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Preference;->c:Lo/Preference$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/CheckBoxPreference;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sqliteDb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statementString"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Preference;->d:Lo/CheckBoxPreference;

    iput-object p2, p0, Lo/Preference;->h:Ljava/lang/String;

    iput-wide p3, p0, Lo/Preference;->g:J

    .line 15
    iget-object p1, p0, Lo/Preference;->d:Lo/CheckBoxPreference;

    invoke-virtual {p1}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lo/Preference;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/Preference;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/Preference;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/Preference;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lo/Preference;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lo/Preference;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 9
    iget-object p0, p0, Lo/Preference;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method protected abstract c(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TT;J)V"
        }
    .end annotation
.end method

.method public c(Z)V
    .locals 8

    .line 59
    invoke-static {p0}, Lo/Preference;->d(Lo/Preference;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 34
    iget-object v0, p0, Lo/Preference;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lo/Preference;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lo/akz;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/Preference;->b:Ljava/util/List;

    .line 36
    :goto_0
    iget-object v0, p0, Lo/Preference;->d:Lo/CheckBoxPreference;

    iget-wide v2, p0, Lo/Preference;->g:J

    .line 64
    invoke-virtual {v0}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 75
    move-object v5, v0

    check-cast v5, Lo/MessagePdu;

    .line 81
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 37
    invoke-static {p0}, Lo/Preference;->a(Lo/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 38
    check-cast p1, Ljava/lang/Iterable;

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "statement"

    .line 39
    invoke-static {v5, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6, v2, v3}, Lo/Preference;->c(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;J)V

    goto :goto_1

    .line 41
    :cond_1
    sget-object p1, Lo/Preference;->c:Lo/Preference$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;

    .line 97
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 112
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;

    .line 119
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 131
    :try_start_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v1, v2, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 135
    :try_start_4
    move-object v1, v0

    check-cast v1, Lo/MessagePdu;

    .line 143
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v1, v2, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    :try_start_5
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 112
    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;

    .line 119
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 164
    :try_start_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v1, v2, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 187
    :goto_2
    invoke-virtual {v0, v4}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_5

    .line 108
    :goto_3
    move-object v1, v0

    check-cast v1, Lo/MessagePdu;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 112
    :try_start_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    check-cast v0, Lo/MessagePdu;

    .line 119
    sget-object v0, Lo/akj;->a:Lo/akj;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 185
    :try_start_9
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 166
    :goto_4
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception p1

    .line 200
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 46
    :cond_2
    sget-object p1, Lo/Preference;->c:Lo/Preference$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    goto :goto_5

    .line 49
    :cond_3
    sget-object p1, Lo/Preference;->c:Lo/Preference$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    :cond_4
    :goto_5
    return-void
.end method

.method public close()V
    .locals 2

    .line 213
    invoke-static {p0}, Lo/Preference;->d(Lo/Preference;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 55
    iget-object v0, p0, Lo/Preference;->d:Lo/CheckBoxPreference;

    iget-object v1, p0, Lo/Preference;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method protected final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lo/Preference;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
