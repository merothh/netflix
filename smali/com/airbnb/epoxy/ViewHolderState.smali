.class public Lcom/airbnb/epoxy/ViewHolderState;
.super Lo/Params;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/ViewHolderState$ViewState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Params<",
        "Lcom/airbnb/epoxy/ViewHolderState$ViewState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/airbnb/epoxy/ViewHolderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/airbnb/epoxy/ViewHolderState$5;

    invoke-direct {v0}, Lcom/airbnb/epoxy/ViewHolderState$5;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/ViewHolderState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Params;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/Params;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/airbnb/epoxy/ViewHolderState$5;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/ViewHolderState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lo/Consumer;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v0

    invoke-virtual {v0}, Lo/BiConsumer;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lo/Consumer;->getItemId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/epoxy/ViewHolderState;->c(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    if-eqz v0, :cond_1

    .line 115
    iget-object p1, p1, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/ViewHolderState$ViewState;->e(Landroid/view/View;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Lo/Consumer;->c()V

    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lo/Consumer;)V
    .locals 3

    .line 88
    invoke-virtual {p1}, Lo/Consumer;->b()Lo/BiConsumer;

    move-result-object v0

    invoke-virtual {v0}, Lo/BiConsumer;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lo/Consumer;->getItemId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/epoxy/ViewHolderState;->c(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    invoke-direct {v0}, Lcom/airbnb/epoxy/ViewHolderState$ViewState;-><init>()V

    .line 100
    :cond_1
    iget-object v1, p1, Lo/Consumer;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/ViewHolderState$ViewState;->a(Landroid/view/View;)V

    .line 101
    invoke-virtual {p1}, Lo/Consumer;->getItemId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/airbnb/epoxy/ViewHolderState;->b(JLjava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ViewHolderState;->a()I

    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 51
    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/ViewHolderState;->d(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/airbnb/epoxy/ViewHolderState;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
