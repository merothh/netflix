.class Lo/BM$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BM;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lo/BY;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/BM;


# direct methods
.method constructor <init>(Lo/BM;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lo/BM$3;->d:Lo/BM;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 289
    check-cast p2, Lo/BY;

    invoke-virtual {p0, p1, p2}, Lo/BM$3;->d(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/BY;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `offlineFalkorPlayable` WHERE `videoId` = ? AND `regId` = ?"

    return-object v0
.end method

.method public d(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/BY;)V
    .locals 3

    .line 297
    iget-object v0, p2, Lo/BY;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 298
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p2, Lo/BY;->a:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 302
    iget p2, p2, Lo/BY;->c:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method
