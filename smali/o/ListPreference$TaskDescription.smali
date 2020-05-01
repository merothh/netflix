.class public final Lo/ListPreference$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListPreference;->b(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic c:Lo/CheckBoxPreference;

.field final synthetic d:J


# direct methods
.method public constructor <init>(Lo/CheckBoxPreference;Landroid/database/sqlite/SQLiteDatabase;JLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/ListPreference$TaskDescription;->c:Lo/CheckBoxPreference;

    iput-object p2, p0, Lo/ListPreference$TaskDescription;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-wide p3, p0, Lo/ListPreference$TaskDescription;->d:J

    iput-object p5, p0, Lo/ListPreference$TaskDescription;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 48
    iget-object v0, p0, Lo/ListPreference$TaskDescription;->c:Lo/CheckBoxPreference;

    iget-object v1, p0, Lo/ListPreference$TaskDescription;->b:Landroid/database/sqlite/SQLiteDatabase;

    check-cast v0, Lo/MessagePdu;

    if-eqz v1, :cond_1

    .line 49
    :try_start_0
    iget-wide v2, p0, Lo/ListPreference$TaskDescription;->d:J

    const-string v0, "UPDATE falcor_leafs SET access_time = ? WHERE path_hashcode = ?"

    .line 210
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lo/ListPreference$TaskDescription;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 212
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x1

    .line 213
    invoke-virtual {v0, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    int-to-long v6, v4

    .line 214
    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 215
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lo/ListPreference$TaskDescription;->c:Lo/CheckBoxPreference;

    iget-object v1, p0, Lo/ListPreference$TaskDescription;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lo/CheckBoxPreference;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    sget-object v0, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 208
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->c:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
