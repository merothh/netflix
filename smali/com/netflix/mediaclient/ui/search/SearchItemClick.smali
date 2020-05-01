.class Lcom/netflix/mediaclient/ui/search/SearchItemClick;
.super Ljava/lang/Object;
.source "SearchItemClick.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/ui/search/SearchItemClick;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public displayName:Ljava/lang/String;

.field public id:J

.field public position:I

.field public searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/search/SearchItemClick$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->id:J

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;IJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->displayName:Ljava/lang/String;

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    iput-wide p3, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->id:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
