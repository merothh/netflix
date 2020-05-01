.class public Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;
.super Lcom/netflix/model/leafs/originals/BillboardCTA;
.source ""


# instance fields
.field private final billboardPhase:Ljava/lang/String;

.field private final bookmarkPosition:Ljava/lang/String;

.field private final galleryId:Ljava/lang/String;

.field private final ignoreBookmark:Ljava/lang/Boolean;

.field private final index:I

.field private final name:Ljava/lang/String;

.field private final sequenceNumber:Ljava/lang/String;

.field private final suppressPostPlay:Ljava/lang/Boolean;

.field private final type:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 46
    invoke-direct/range {v0 .. v10}, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/BillboardCTA;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->bookmarkPosition:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->ignoreBookmark:Ljava/lang/Boolean;

    .line 53
    iput-object p3, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->name:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->sequenceNumber:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->suppressPostPlay:Ljava/lang/Boolean;

    .line 56
    iput-object p6, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->type:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->videoId:Ljava/lang/String;

    .line 58
    iput p8, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->index:I

    .line 59
    iput-object p9, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->billboardPhase:Ljava/lang/String;

    .line 60
    iput-object p10, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->galleryId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public billboardPhase()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->billboardPhase:Ljava/lang/String;

    return-object v0
.end method

.method public bookmarkPosition()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->bookmarkPosition:Ljava/lang/String;

    return-object v0
.end method

.method public galleryId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->galleryId:Ljava/lang/String;

    return-object v0
.end method

.method public ignoreBookmark()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->ignoreBookmark:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public index()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->index:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->name:Ljava/lang/String;

    return-object v0
.end method

.method public sequenceNumber()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->sequenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public suppressPostPlay()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->suppressPostPlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->type:Ljava/lang/String;

    return-object v0
.end method

.method public videoId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;->videoId:Ljava/lang/String;

    return-object v0
.end method
