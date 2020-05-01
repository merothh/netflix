.class public final Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/storage/db/AppHistoryDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/AppHistoryDb;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->d()Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 27
    const-class v0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    const-string v1, "appHistory"

    .line 25
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    invoke-static {p1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->d(Lcom/netflix/mediaclient/storage/db/AppHistoryDb;)V

    .line 33
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->d()Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lo/amh;->c()V

    :cond_1
    return-object p1
.end method
