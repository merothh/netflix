.class public final Landroidx/fragment/app/BackStackState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:[I

.field final d:[I

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final f:I

.field final g:I

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/CharSequence;

.field final j:I

.field final k:Ljava/lang/CharSequence;

.field final l:I

.field final m:Z

.field final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Landroidx/fragment/app/BackStackState$3;

    invoke-direct {v0}, Landroidx/fragment/app/BackStackState$3;-><init>()V

    sput-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->a:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->e:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->d:[I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->c:[I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->b:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->j:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->h:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->g:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->f:I

    .line 93
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackState;->l:I

    .line 95
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->k:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->o:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/BackStackState;->m:Z

    return-void
.end method

.method public constructor <init>(Lo/Reader;)V
    .locals 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Lo/Reader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 49
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->a:[I

    .line 51
    iget-boolean v1, p1, Lo/Reader;->n:Z

    if-eqz v1, :cond_2

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->e:Ljava/util/ArrayList;

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->d:[I

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/BackStackState;->c:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    iget-object v3, p1, Lo/Reader;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/UnsupportedEncodingException$TaskDescription;

    .line 61
    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->a:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lo/UnsupportedEncodingException$TaskDescription;->e:I

    aput v6, v4, v2

    .line 62
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->e:Ljava/util/ArrayList;

    iget-object v4, v3, Lo/UnsupportedEncodingException$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lo/UnsupportedEncodingException$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Lo/UnsupportedEncodingException$TaskDescription;->a:I

    aput v6, v2, v5

    .line 64
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lo/UnsupportedEncodingException$TaskDescription;->b:I

    aput v6, v2, v4

    .line 65
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Lo/UnsupportedEncodingException$TaskDescription;->c:I

    aput v6, v2, v5

    .line 66
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lo/UnsupportedEncodingException$TaskDescription;->f:I

    aput v6, v2, v4

    .line 67
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->d:[I

    iget-object v4, v3, Lo/UnsupportedEncodingException$TaskDescription;->i:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v4

    aput v4, v2, v1

    .line 68
    iget-object v2, p0, Landroidx/fragment/app/BackStackState;->c:[I

    iget-object v3, v3, Lo/UnsupportedEncodingException$TaskDescription;->j:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 70
    :cond_1
    iget v0, p1, Lo/Reader;->f:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->b:I

    .line 71
    iget v0, p1, Lo/Reader;->j:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->j:I

    .line 72
    iget-object v0, p1, Lo/Reader;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->h:Ljava/lang/String;

    .line 73
    iget v0, p1, Lo/Reader;->a:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->g:I

    .line 74
    iget v0, p1, Lo/Reader;->l:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->f:I

    .line 75
    iget-object v0, p1, Lo/Reader;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 76
    iget v0, p1, Lo/Reader;->s:I

    iput v0, p0, Landroidx/fragment/app/BackStackState;->l:I

    .line 77
    iget-object v0, p1, Lo/Reader;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->k:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p1, Lo/Reader;->t:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p1, Lo/Reader;->p:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/BackStackState;->o:Ljava/util/ArrayList;

    .line 80
    iget-boolean p1, p1, Lo/Reader;->r:Z

    iput-boolean p1, p0, Landroidx/fragment/app/BackStackState;->m:Z

    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lo/UncheckedIOException;)Lo/Reader;
    .locals 6

    .line 102
    new-instance v0, Lo/Reader;

    invoke-direct {v0, p1}, Lo/Reader;-><init>(Lo/UncheckedIOException;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/BackStackState;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 106
    new-instance v3, Lo/UnsupportedEncodingException$TaskDescription;

    invoke-direct {v3}, Lo/UnsupportedEncodingException$TaskDescription;-><init>()V

    .line 107
    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->a:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->e:I

    .line 108
    sget-boolean v1, Lo/UncheckedIOException;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->a:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    iget-object v4, p1, Lo/UncheckedIOException;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 113
    iput-object v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 115
    iput-object v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    .line 117
    :goto_1
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->d:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 118
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/BackStackState;->c:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 119
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v5, v1, v5

    iput v5, v3, Lo/UnsupportedEncodingException$TaskDescription;->a:I

    add-int/lit8 v5, v4, 0x1

    .line 120
    aget v4, v1, v4

    iput v4, v3, Lo/UnsupportedEncodingException$TaskDescription;->b:I

    add-int/lit8 v4, v5, 0x1

    .line 121
    aget v5, v1, v5

    iput v5, v3, Lo/UnsupportedEncodingException$TaskDescription;->c:I

    add-int/lit8 v5, v4, 0x1

    .line 122
    aget v1, v1, v4

    iput v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->f:I

    .line 123
    iget v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->a:I

    iput v1, v0, Lo/Reader;->e:I

    .line 124
    iget v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->b:I

    iput v1, v0, Lo/Reader;->g:I

    .line 125
    iget v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->c:I

    iput v1, v0, Lo/Reader;->h:I

    .line 126
    iget v1, v3, Lo/UnsupportedEncodingException$TaskDescription;->f:I

    iput v1, v0, Lo/Reader;->i:I

    .line 127
    invoke-virtual {v0, v3}, Lo/Reader;->c(Lo/UnsupportedEncodingException$TaskDescription;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto/16 :goto_0

    .line 130
    :cond_2
    iget p1, p0, Landroidx/fragment/app/BackStackState;->b:I

    iput p1, v0, Lo/Reader;->f:I

    .line 131
    iget p1, p0, Landroidx/fragment/app/BackStackState;->j:I

    iput p1, v0, Lo/Reader;->j:I

    .line 132
    iget-object p1, p0, Landroidx/fragment/app/BackStackState;->h:Ljava/lang/String;

    iput-object p1, v0, Lo/Reader;->m:Ljava/lang/String;

    .line 133
    iget p1, p0, Landroidx/fragment/app/BackStackState;->g:I

    iput p1, v0, Lo/Reader;->a:I

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, v0, Lo/Reader;->n:Z

    .line 135
    iget v1, p0, Landroidx/fragment/app/BackStackState;->f:I

    iput v1, v0, Lo/Reader;->l:I

    .line 136
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v1, v0, Lo/Reader;->o:Ljava/lang/CharSequence;

    .line 137
    iget v1, p0, Landroidx/fragment/app/BackStackState;->l:I

    iput v1, v0, Lo/Reader;->s:I

    .line 138
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->k:Ljava/lang/CharSequence;

    iput-object v1, v0, Lo/Reader;->q:Ljava/lang/CharSequence;

    .line 139
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    iput-object v1, v0, Lo/Reader;->t:Ljava/util/ArrayList;

    .line 140
    iget-object v1, p0, Landroidx/fragment/app/BackStackState;->o:Ljava/util/ArrayList;

    iput-object v1, v0, Lo/Reader;->p:Ljava/util/ArrayList;

    .line 141
    iget-boolean v1, p0, Landroidx/fragment/app/BackStackState;->m:Z

    iput-boolean v1, v0, Lo/Reader;->r:Z

    .line 142
    invoke-virtual {v0, p1}, Lo/Reader;->d(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 153
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->a:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->d:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->c:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget p2, p0, Landroidx/fragment/app/BackStackState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Landroidx/fragment/app/BackStackState;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget p2, p0, Landroidx/fragment/app/BackStackState;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Landroidx/fragment/app/BackStackState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->i:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 163
    iget p2, p0, Landroidx/fragment/app/BackStackState;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->k:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 165
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    iget-object p2, p0, Landroidx/fragment/app/BackStackState;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    iget-boolean p2, p0, Landroidx/fragment/app/BackStackState;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
