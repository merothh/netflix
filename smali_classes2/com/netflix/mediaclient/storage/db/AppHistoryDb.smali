.class public abstract Lcom/netflix/mediaclient/storage/db/AppHistoryDb;
.super Landroidx/room/RoomDatabase;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;
    }
.end annotation


# static fields
.field private static c:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

.field public static final d:Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->d:Lcom/netflix/mediaclient/storage/db/AppHistoryDb$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic d()Lcom/netflix/mediaclient/storage/db/AppHistoryDb;
    .locals 1

    .line 15
    sget-object v0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->c:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    return-object v0
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/storage/db/AppHistoryDb;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->c:Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    return-void
.end method


# virtual methods
.method public abstract a()Lo/BX;
.end method
