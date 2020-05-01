.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Maturity"
.end annotation


# instance fields
.field private isHighest:Z

.field private isLowest:Z

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->labels:Ljava/util/List;

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->level:I

    return p0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->level:I

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Ljava/util/List;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->labels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->isLowest:Z

    return p0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->isLowest:Z

    return p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->isHighest:Z

    return p0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;->isHighest:Z

    return p1
.end method
