.class public Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$ActionBar;,
        Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$Application;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field public b:I

.field public c:Landroid/os/Parcelable;

.field public d:Ljava/lang/String;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v0}, Lo/adk;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->c:Landroid/os/Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SPY-9006: Failed to load layout manager state"

    const-string v2, "KidsCharacterRelatedTitleState"

    .line 50
    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->b:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->e:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->d:Ljava/lang/String;

    .line 56
    const-class v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v0}, Lo/adk;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p3, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->b:I

    .line 27
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->c:Landroid/os/Parcelable;

    .line 28
    iput p4, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->e:I

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->d:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->c:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
