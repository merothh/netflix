.class Lo/BP$1;
.super Landroidx/room/SharedSQLiteStatement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BP;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/BP;


# direct methods
.method constructor <init>(Lo/BP;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/BP$1;->c:Lo/BP;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM PersistedManifest WHERE expires < ?"

    return-object v0
.end method
