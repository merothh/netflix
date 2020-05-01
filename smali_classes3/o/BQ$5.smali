.class Lo/BQ$5;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BQ;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lo/Cc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/BQ;


# direct methods
.method constructor <init>(Lo/BQ;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lo/BQ$5;->b:Lo/BQ;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 166
    check-cast p2, Lo/Cc;

    invoke-virtual {p0, p1, p2}, Lo/BQ$5;->d(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cc;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `offlinePlayable` WHERE `playableId` = ? AND `regId` = ?"

    return-object v0
.end method

.method public d(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cc;)V
    .locals 3

    .line 174
    iget-object v0, p2, Lo/Cc;->e:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 175
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p2, Lo/Cc;->e:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 179
    iget p2, p2, Lo/Cc;->d:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method
