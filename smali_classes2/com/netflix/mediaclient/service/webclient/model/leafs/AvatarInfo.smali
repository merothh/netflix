.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bIsInDefaultSet:Z

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 41
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 42
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->url:Ljava/lang/String;

    const/4 p1, 0x2

    .line 43
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->bIsInDefaultSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->url:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->bIsInDefaultSet:Z

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

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 90
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isInDefaultSet()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->bIsInDefaultSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; isInDefaultSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->bIsInDefaultSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->url:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 62
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->bIsInDefaultSet:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
