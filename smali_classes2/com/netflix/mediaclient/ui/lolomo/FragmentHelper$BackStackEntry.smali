.class public final Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;
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

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackStackEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry$Application;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment$SavedState;

.field private final b:Landroid/os/Parcelable;

.field private final c:Landroid/content/Intent;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/cl/model/AppView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry$Application;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry$Application;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Lcom/netflix/cl/model/AppView;Landroidx/fragment/app/Fragment$SavedState;Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "hostClassName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c:Landroid/content/Intent;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e:Lcom/netflix/cl/model/AppView;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a:Landroidx/fragment/app/Fragment$SavedState;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/content/Intent;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public final c()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final d()Landroidx/fragment/app/Fragment$SavedState;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a:Landroidx/fragment/app/Fragment$SavedState;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/os/Parcelable;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b:Landroid/os/Parcelable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c:Landroid/content/Intent;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c:Landroid/content/Intent;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e:Lcom/netflix/cl/model/AppView;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e:Lcom/netflix/cl/model/AppView;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a:Landroidx/fragment/app/Fragment$SavedState;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a:Landroidx/fragment/app/Fragment$SavedState;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b:Landroid/os/Parcelable;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b:Landroid/os/Parcelable;

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c:Landroid/content/Intent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e:Lcom/netflix/cl/model/AppView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a:Landroidx/fragment/app/Fragment$SavedState;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b:Landroid/os/Parcelable;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackStackEntry(hostClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", savedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a:Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layoutManagerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a:Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method