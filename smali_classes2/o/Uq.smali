.class public Lo/Uq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

.field private e:Lcom/netflix/model/leafs/PostPlayExperience;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/PostPlayExperience;Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/Uq;->e:Lcom/netflix/model/leafs/PostPlayExperience;

    .line 22
    iput-object p2, p0, Lo/Uq;->c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    return-void
.end method


# virtual methods
.method public b()Lcom/netflix/model/leafs/PostPlayExperience;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/Uq;->e:Lcom/netflix/model/leafs/PostPlayExperience;

    return-object v0
.end method

.method public d()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/Uq;->c:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    return-object v0
.end method
