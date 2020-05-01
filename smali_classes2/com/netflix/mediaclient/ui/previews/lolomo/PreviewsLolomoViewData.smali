.class public final Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData$StateListAnimator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData$StateListAnimator;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData$StateListAnimator;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 1

    const-string v0, "listId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->c:Ljava/lang/String;

    iput p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->e:I

    iput p3, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->b:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->a:I

    iput p5, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->d:I

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->e:I

    iget v1, p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->b:I

    iget v1, p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->a:I

    iget v1, p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->d:I

    iget v1, p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->a:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreviewsLolomoViewData(listId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
