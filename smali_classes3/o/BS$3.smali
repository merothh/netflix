.class Lo/BS$3;
.super Landroidx/room/SharedSQLiteStatement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BS;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/BS;


# direct methods
.method constructor <init>(Lo/BS;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/BS$3;->c:Lo/BS;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE from offlineWatched where parentId = ?"

    return-object v0
.end method
