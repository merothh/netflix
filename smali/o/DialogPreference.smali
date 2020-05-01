.class public final Lo/DialogPreference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ServiceConnectionLeakedViolation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DialogPreference$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/DialogPreference$StateListAnimator;


# instance fields
.field private final c:Lo/CheckBoxPreference;

.field private final d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DialogPreference$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DialogPreference$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/DialogPreference;->b:Lo/DialogPreference$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/CheckBoxPreference;)V
    .locals 1

    const-string v0, "sqliteDb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    .line 11
    iget-object p1, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    invoke-virtual {p1}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lo/DialogPreference;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 65
    iget-object v0, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 521
    invoke-virtual {v0}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 532
    move-object v2, v0

    check-cast v2, Lo/MessagePdu;

    :try_start_0
    const-string v2, "VACUUM"

    .line 66
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lo/akj;->a:Lo/akj;

    .line 537
    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 550
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b()I
    .locals 6

    .line 60
    iget-object v0, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    .line 493
    invoke-virtual {v0}, Lo/CheckBoxPreference;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 494
    move-object v2, v0

    check-cast v2, Lo/MessagePdu;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "falcor_leafs"

    .line 61
    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 510
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v4, v5, v3}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 512
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v2, :cond_1

    .line 513
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public b(J)I
    .locals 7

    .line 42
    iget-object v0, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    .line 225
    invoke-virtual {v0}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 236
    move-object v4, v0

    check-cast v4, Lo/MessagePdu;

    .line 242
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "falcor_leafs"

    const-string v5, "expires > 1 AND expires < ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 46
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 43
    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 245
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;

    .line 251
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 266
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 267
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;

    .line 273
    sget-object p2, Lo/akj;->a:Lo/akj;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 285
    :try_start_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {v4, v5, p2}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 289
    :try_start_4
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;

    .line 297
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v4, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    :try_start_5
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 266
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 267
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;

    .line 273
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 318
    :try_start_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v4, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, v3

    .line 341
    :goto_1
    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v3, p1

    goto :goto_4

    .line 262
    :goto_2
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 266
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 267
    check-cast v0, Lo/MessagePdu;

    .line 273
    sget-object p2, Lo/akj;->a:Lo/akj;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 339
    :try_start_9
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {v0, v1, p2}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 320
    :goto_3
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception p1

    .line 354
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, v0, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_0
    :goto_4
    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    return v2
.end method

.method public b(JJ)I
    .locals 5

    .line 51
    iget-object v0, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    .line 361
    invoke-virtual {v0}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 372
    move-object v4, v0

    check-cast v4, Lo/MessagePdu;

    .line 378
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sub-long/2addr p1, p3

    const-string p3, "falcor_leafs"

    const-string p4, "access_time <= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 56
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 53
    invoke-virtual {v1, p3, p4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 381
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;

    .line 387
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :try_start_1
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 402
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 403
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;

    .line 409
    sget-object p2, Lo/akj;->a:Lo/akj;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 421
    :try_start_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    sget-object p4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {p3, p4, p2}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 425
    :try_start_4
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;

    .line 433
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    :try_start_5
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 402
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 403
    move-object p1, v0

    check-cast p1, Lo/MessagePdu;

    .line 409
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 454
    :try_start_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, v3

    .line 477
    :goto_1
    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v3, p1

    goto :goto_4

    .line 398
    :goto_2
    move-object p2, v0

    check-cast p2, Lo/MessagePdu;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 402
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 403
    check-cast v0, Lo/MessagePdu;

    .line 409
    sget-object p2, Lo/akj;->a:Lo/akj;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 475
    :try_start_9
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    sget-object p4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {p3, p4, p2}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 456
    :goto_3
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception p1

    .line 490
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, p3, p1}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_0
    :goto_4
    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    return v2
.end method

.method public close()V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    iget-object v1, p0, Lo/DialogPreference;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public d(JJLo/ServiceConnectionLeakedViolation$Activity;)V
    .locals 0

    .line 7
    invoke-static/range {p0 .. p5}, Lo/ServiceConnectionLeakedViolation$ActionBar;->b(Lo/ServiceConnectionLeakedViolation;JJLo/ServiceConnectionLeakedViolation$Activity;)V

    return-void
.end method

.method public d()Z
    .locals 7

    .line 30
    iget-object v0, p0, Lo/DialogPreference;->c:Lo/CheckBoxPreference;

    .line 79
    invoke-virtual {v0}, Lo/CheckBoxPreference;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 90
    move-object v3, v0

    check-cast v3, Lo/MessagePdu;

    .line 96
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "falcor_leafs"

    const-string v4, "1"

    .line 31
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 99
    move-object v4, v0

    check-cast v4, Lo/MessagePdu;

    .line 105
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    move-object v4, v0

    check-cast v4, Lo/MessagePdu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 120
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    move-object v4, v0

    check-cast v4, Lo/MessagePdu;

    .line 127
    sget-object v4, Lo/akj;->a:Lo/akj;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 139
    :try_start_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v5, v6, v4}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 143
    :try_start_4
    move-object v4, v0

    check-cast v4, Lo/MessagePdu;

    .line 151
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v4, v5, v3}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :try_start_5
    move-object v3, v0

    check-cast v3, Lo/MessagePdu;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 120
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    move-object v3, v0

    check-cast v3, Lo/MessagePdu;

    .line 127
    sget-object v3, Lo/akj;->a:Lo/akj;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    .line 172
    :try_start_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v4, v5, v3}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :goto_0
    move-object v3, v2

    .line 195
    :goto_1
    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v2, v3

    goto :goto_4

    .line 116
    :goto_2
    move-object v4, v0

    check-cast v4, Lo/MessagePdu;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 120
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    check-cast v0, Lo/MessagePdu;

    .line 127
    sget-object v0, Lo/akj;->a:Lo/akj;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 193
    :try_start_9
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v4, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 174
    :goto_3
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception v0

    .line 208
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v3, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 33
    :cond_0
    :goto_4
    sget-object v0, Lo/DialogPreference;->b:Lo/DialogPreference$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 34
    invoke-virtual {p0}, Lo/DialogPreference;->b()I

    .line 35
    sget-object v0, Lo/DialogPreference;->b:Lo/DialogPreference$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
