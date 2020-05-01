.class Lo/BU$1;
.super Landroidx/room/SharedSQLiteStatement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BU;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/BU;


# direct methods
.method constructor <init>(Lo/BU;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/BU$1;->d:Lo/BU;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM playEvent WHERE id IN (SELECT id FROM playEvent ORDER BY id ASC LIMIT ?)"

    return-object v0
.end method
