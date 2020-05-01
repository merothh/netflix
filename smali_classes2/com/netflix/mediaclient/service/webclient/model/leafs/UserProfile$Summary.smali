.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Summary"
.end annotation


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private disableVideoMerchAutoPlay:Z

.field public enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

.field private experienceType:Ljava/lang/String;

.field private geoCountry:Ljava/lang/String;

.field private hasTitleRestrictions:Z

.field private isAutoPlayEnabled:Z

.field private isDefaultKidsProfile:Z

.field private isIqEnabled:Z

.field private isPrimaryProfile:Z

.field private isProfileCreationLocked:Z

.field private isProfileLocked:Z

.field public languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;",
            ">;"
        }
    .end annotation
.end field

.field private maturity:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

.field private profileGuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profileId"
    .end annotation
.end field

.field private profileLockPin:Ljava/lang/String;

.field private profileName:Ljava/lang/String;

.field private reqCountry:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isIqEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->experienceType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->experienceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isIqEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileGuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileGuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->avatarUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->geoCountry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->geoCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->reqCountry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->reqCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isProfileLocked:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isProfileLocked:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isProfileCreationLocked:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isProfileCreationLocked:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileLockPin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileLockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->disableVideoMerchAutoPlay:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->disableVideoMerchAutoPlay:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->hasTitleRestrictions:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->hasTitleRestrictions:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isPrimaryProfile:Z

    return p0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isPrimaryProfile:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isDefaultKidsProfile:Z

    return p0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isDefaultKidsProfile:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isAutoPlayEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isAutoPlayEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->maturity:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    return-object p0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->maturity:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Maturity;

    return-object p1
.end method
