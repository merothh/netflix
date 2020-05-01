.class public Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->b:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->a:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->b:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 30
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;

    .line 108
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->b:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->b:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumVideos()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    const/16 v0, -0xe6

    return v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->b:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isExpired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRichUITreatment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setListPos(I)V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->b:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
