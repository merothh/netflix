.class Lo/BO$2;
.super Landroidx/room/EntityInsertionAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BO;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lo/Cd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/BO;


# direct methods
.method constructor <init>(Lo/BO;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/BO$2;->a:Lo/BO;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/Cd;

    invoke-virtual {p0, p1, p2}, Lo/BO$2;->d(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cd;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `offlineFalkorProfile`(`profileId`,`name`,`isKids`,`avatarUrl`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public d(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cd;)V
    .locals 4

    .line 34
    iget-object v0, p2, Lo/Cd;->d:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 35
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p2, Lo/Cd;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 39
    :goto_0
    iget-object v0, p2, Lo/Cd;->c:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 40
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, p2, Lo/Cd;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :goto_1
    iget-boolean v0, p2, Lo/Cd;->e:Z

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 46
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 47
    iget-object v0, p2, Lo/Cd;->b:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 50
    :cond_2
    iget-object p2, p2, Lo/Cd;->b:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
