.class public Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/os/Parcelable;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState$2;-><init>()V

    invoke-static {v0}, Lo/Toolbar;->b(Lo/OnEditorActionListener;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 136
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->c:Landroid/os/Parcelable;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->e:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->c:Landroid/os/Parcelable;

    .line 129
    iput p2, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->e:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;)I
    .locals 0

    .line 123
    iget p0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->e:I

    return p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->c:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->c:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget p2, p0, Lcom/netflix/mediaclient/acquisition2/components/rtlViewPager/RtlViewPager$SavedState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
