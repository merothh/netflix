.class public final Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem$CREATOR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;

    invoke-direct {v0, p1}, Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;
    .locals 0

    .line 104
    new-array p1, p1, [Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem$CREATOR;->newArray(I)[Lcom/netflix/model/leafs/originals/interactive/PreconditionSegmentGroupItem;

    move-result-object p1

    return-object p1
.end method
