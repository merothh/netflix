.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Summary"
.end annotation


# instance fields
.field private email:Ljava/lang/String;

.field public isAgeVerified:Z

.field private isNotActiveOrOnHold:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNotActiveOrOnHold"
    .end annotation
.end field

.field private mobileOnlyPlan:Z

.field private profileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

.field private userGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->email:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->profileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->profileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->userGuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->userGuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->isNotActiveOrOnHold:Z

    return p0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->isNotActiveOrOnHold:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->mobileOnlyPlan:Z

    return p0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;->mobileOnlyPlan:Z

    return p1
.end method
