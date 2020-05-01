.class public final Lo/acB;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final a:Lo/acB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/acB;

    invoke-direct {v0}, Lo/acB;-><init>()V

    sput-object v0, Lo/acB;->a:Lo/acB;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "BookmarksHelper"

    .line 9
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lo/AS;Ljava/lang/String;)I
    .locals 8

    const-string v0, "episodeDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v0

    const-string v1, "episodeDetails.playable"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {p1}, Lo/AS;->p()I

    move-result v4

    .line 56
    invoke-interface {v0}, Lo/AK;->K()J

    move-result-wide v5

    move-object v2, p0

    move-object v7, p2

    .line 53
    invoke-virtual/range {v2 .. v7}, Lo/acB;->c(Ljava/lang/String;IJLjava/lang/String;)I

    move-result p1

    .line 60
    sget-object p2, Lcom/netflix/model/leafs/Bookmark;->Companion:Lcom/netflix/model/leafs/Bookmark$Companion;

    .line 62
    invoke-interface {v0}, Lo/AK;->S()I

    move-result v1

    .line 63
    invoke-interface {v0}, Lo/AK;->ao()Ljava/lang/Integer;

    move-result-object v0

    .line 60
    invoke-virtual {p2, p1, v1, v0}, Lcom/netflix/model/leafs/Bookmark$Companion;->calculateProgress(IILjava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;IJLjava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    .line 29
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "SPY-19459: playableId is null in getUIBookmarkPositionInSeconds"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-static {p5, p1}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    iget-wide v0, p1, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    cmp-long p5, v0, p3

    if-lez p5, :cond_2

    if-eqz p1, :cond_2

    .line 37
    iget p2, p1, Lo/Aa;->mBookmarkInSecond:I

    :cond_2
    return p2
.end method
