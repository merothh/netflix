.class Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/BookmarkStoreRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BookmarkData"
.end annotation


# instance fields
.field public mBookmarkMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bookmarks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Aa;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/media/BookmarkStoreRoom;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->this$0:Lcom/netflix/mediaclient/media/BookmarkStoreRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;Lcom/netflix/mediaclient/media/BookmarkStoreRoom$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;-><init>(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;)V

    return-void
.end method
