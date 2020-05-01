.class public final Lcom/netflix/mediaclient/media/BookmarkUtil;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/media/BookmarkUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/media/BookmarkUtil;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/BookmarkUtil;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/media/BookmarkUtil;->INSTANCE:Lcom/netflix/mediaclient/media/BookmarkUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "BookmarkUtil"

    .line 12
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final migrateDataToRoom(Lo/BA;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BA;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lo/Aa;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "repo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 16
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Aa;

    .line 18
    move-object v5, p0

    check-cast v5, Lo/MessagePdu;

    .line 23
    new-instance v9, Lo/BV;

    .line 26
    iget v6, v3, Lo/Aa;->mBookmarkInSecond:I

    .line 27
    iget-wide v7, v3, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    move-object v3, v9

    move-object v5, v2

    .line 23
    invoke-direct/range {v3 .. v8}, Lo/BV;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 22
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, v0}, Lo/BA;->a(Ljava/util/List;)V

    return-void
.end method
