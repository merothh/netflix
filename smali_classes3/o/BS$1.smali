.class Lo/BS$1;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BS;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lo/BZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/BS;


# direct methods
.method constructor <init>(Lo/BS;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/BS$1;->a:Lo/BS;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p2, Lo/BZ;

    invoke-virtual {p0, p1, p2}, Lo/BS$1;->e(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/BZ;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `offlineWatched` WHERE `playableId` = ?"

    return-object v0
.end method

.method public e(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/BZ;)V
    .locals 2

    .line 76
    invoke-virtual {p2}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 77
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
