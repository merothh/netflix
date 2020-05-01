.class Lo/BO$5;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lo/Cd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/BO;


# direct methods
.method constructor <init>(Lo/BO;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/BO$5;->b:Lo/BO;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public b(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cd;)V
    .locals 2

    .line 62
    iget-object v0, p2, Lo/Cd;->d:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p2, Lo/Cd;->d:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Lo/Cd;

    invoke-virtual {p0, p1, p2}, Lo/BO$5;->b(Landroidx/sqlite/db/SupportSQLiteStatement;Lo/Cd;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `offlineFalkorProfile` WHERE `profileId` = ?"

    return-object v0
.end method
